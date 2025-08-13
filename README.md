This repository contains public documents for Hypernova Oy.

# To turn Markdown into .pdf

```
sudo apt install pandoc groff ghostscript
pandoc --pdf-engine=pdfroff --toc-depth=3 fi-FI/policy/koha/Koha_kirjastojärjestelmän_ylläpitopalvelun_henkilötietojen_käsittelykuvaus.md -o fi-FI/policy/koha/Koha_kirjastojärjestelmän_ylläpitopalvelun_henkilötietojen_käsittelykuvaus.pdf

```