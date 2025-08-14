#!/usr/bin/env perl
use utf8;
binmode STDOUT, ':utf8';
binmode STDERR, ':utf8';
use strict;
use warnings;

use Getopt::Long qw(:config no_ignore_case);
use File::Copy;
use Cwd;
use File::Basename;
chdir dirname(Cwd::abs_path($0)) or die "Failed to change directory: $!";

our $release_dir = "release";

our %documents_metadata = (
  'PDPD' => {
    tag => 'PDPD',
    description => 'Personal Data Processing Description',
    languages => {
      'en' => {
        filepath => 'policy/koha/Koha_library_system_hosting_personal_data_processing_description.md',
      },
      'fi-FI' => {
        filepath => 'policy/koha/Koha_kirjastojärjestelmän_ylläpitopalvelun_henkilötietojen_käsittelykuvaus.md',
      },
    }
  },
  'SPS' => {
    tag => 'SPS',
    description =>'Security and Privacy Statement',
    languages => {
      'en' => {
        filepath => 'policy/koha/Koha_library_system_hosting_security_privacy_statement.md',
      },
      'fi-FI' => {
        filepath => 'policy/koha/Koha_kirjastojärjestelmän_ylläpitopalvelun_tietoturva_tietosuojaselvitys.md',
      },
    }
  },
);
our @document_types = keys %documents_metadata;

# CLI options
my ($help, $document);

Getopt::Long::GetOptions(
  'help|h'    => \$help,
  'document|d:s' => \$document,
) or die "Error in command line arguments\n";

if ($help) {
  print <<"END_USAGE";
Usage: $0 [options]

Options:
  --help, -h      Show this help message
  --document, -d  Specify a document type, one of [@document_types]
END_USAGE
  exit 0;
}

if (not($document)) {
  warn "No document type specified. Use --document option.\n";
  exit 1;
}
if (not exists $documents_metadata{$document}) {
  warn "Invalid document type '$document'. Valid types are: [@document_types]\n";
  exit 1;
}

my $document_metadata = $documents_metadata{$document};
for my $lang (keys %{$document_metadata->{languages}}) {
  release_document($document_metadata, $lang);
}

sub release_document {
  my ($document_metadata, $lang) = @_;
  my $lang_metadata = $document_metadata->{languages}{$lang};
  my $filepath = $lang_metadata->{filepath};
  print "Releasing document: $document_metadata->{description} ($document_metadata->{tag}), lang='$lang'\n";

  my $filename_version_portion = create_filename_version_portion("$lang/$filepath");

  mkdir $release_dir unless -d $release_dir;

  my ($name, $path, $suffix) = File::Basename::fileparse($filepath, qr/\.md/);
  my $target = "$release_dir/$name-$filename_version_portion$suffix";
  if (File::Copy::copy("$lang/$filepath", $target)) {
    print "Copied to $target\n";
  } else {
    warn "Failed to copy $filepath to $target: $!\n";
  }

  convert_to_pdf("$target");
}

sub convert_to_pdf {
  my ($filepath) = @_;
  my $pdf_filepath = $filepath;
  $pdf_filepath =~ s/\.md$/.pdf/;
  
  # Assuming pandoc is installed and available in PATH
  my $command = "pandoc --pdf-engine=pdfroff --toc-depth=3 -o '$pdf_filepath' '$filepath'";
  system($command) == 0 or warn "Failed to convert '$filepath' to PDF: $!";
  
  return $pdf_filepath;
}

sub create_filename_version_portion {
  my ($filepath) = @_;
  my ($semver, $dateISO) = find_version_definition($filepath);
  if (not $semver or not $dateISO) {
    die "Version definition not found in '$filepath'.";
  }
  return "v$semver-$dateISO";
}
sub find_version_definition {
  my ($filepath) = @_;
  my ($semver, $dateISO);
  _iterate_file($filepath, sub {
      my $line = shift;
      if ($line =~ qr/\*\*Ver\w+:\*\*\s*([\d\.]+)\s*\((\d{4}-\d{2}-\d{2})\)/) {
        $semver = $1;
        $dateISO = $2;
        return 1;  # Stop iterating
      }
    }
  );
  return ($semver, $dateISO);
}

sub _iterate_file {
  my ($filepath, $analyzer, $depth_in_lines) = @_;
  $depth_in_lines //= 10;
  open my $fh, '<', $filepath or die "Cannot open file '$filepath': $!";

  my $i=0;
  while (my $line = <$fh>) {
    $i++;
    last if $i > $depth_in_lines;
    last if $analyzer->($line);
  }
  close $fh;
  return undef;
}

1;