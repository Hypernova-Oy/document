# Koha-kirjastojärjestelmän ylläpitopalvelun henkilötietojen käsittelykuvaus (PDPD)

**Versio:** 1.1.0 (2025-08-14)  
**Voimassa:** 2025-09-14 alkaen  
**Edellinen versio:** 1.0.0 (2024-08-23)  
**Vastuuhenkilö:** Lari Taskula, Toimitusjohtaja  
**Jakelu:** Kaikki asiakkaat saavat ilmoituksen päivityksistä 30 päivää etukäteen  
**Arkistointi:** Kaikki versiot säilytetään pysyvästi Hypernova Oy:n dokumenttiarkistossa. Päivityshetkellä julkisesti saatavilla GitHub:ssa.  

Tässä asiakirjassa määritellään mitä mahdollisuuksia asiakkaan tietojen käsittelyyn Koha-järjestelmästä löytyy. Jokainen asiakas määrittelee itse tarkemmin mihin järjestelmän mahdollisuuksia käyttää ja kuvaa ne omassa käsittelykuvauksessaan tai henkilötietorekisteriselosteessaan tai muussa vastaavassa, kuten kirjaston käyttösäännöissä.

- [Koha-kirjastojärjestelmän ylläpitopalvelun henkilötietojen käsittelykuvaus (PDPD)](#koha-kirjastojärjestelmän-ylläpitopalvelun-henkilötietojen-käsittelykuvaus-pdpd)
  - [Roolit](#roolit)
  - [Henkilötietojen käyttötarkoitus](#henkilötietojen-käyttötarkoitus)
  - [Henkilötietojen käsittelyn oikeusperusta](#henkilötietojen-käsittelyn-oikeusperusta)
    - [Suostumus (GDPR 6(1)(a))](#suostumus-gdpr-61a)
    - [Koha-ylläpitosopimuksen täyttäminen (GDPR 6(1)(b))](#koha-ylläpitosopimuksen-täyttäminen-gdpr-61b)
    - [Lakisääteinen velvollisuus (GDPR 6(1)(c))](#lakisääteinen-velvollisuus-gdpr-61c)
    - [Rekisteröityjen oikeuksien toteutuminen (GDPR 6(1)(d))](#rekisteröityjen-oikeuksien-toteutuminen-gdpr-61d)
    - [Rekisterinpitäjän oikeutettu etu (GDPR 6(1)(f))](#rekisterinpitäjän-oikeutettu-etu-gdpr-61f)
  - [Henkilötietojen käsittelytavat](#henkilötietojen-käsittelytavat)
    - [Tietojen kerääminen](#tietojen-kerääminen)
    - [Tietojen tallentaminen ja säilyttäminen](#tietojen-tallentaminen-ja-säilyttäminen)
    - [Tietojen muokkaaminen](#tietojen-muokkaaminen)
    - [Tietojen haku](#tietojen-haku)
    - [Tietojen luovuttaminen ja siirtäminen](#tietojen-luovuttaminen-ja-siirtäminen)
    - [Tietojen yhdistäminen](#tietojen-yhdistäminen)
    - [Tietojen rajoittaminen](#tietojen-rajoittaminen)
    - [Tietojen poistaminen](#tietojen-poistaminen)
  - [Käsitellyt henkilötietotyypit](#käsitellyt-henkilötietotyypit)
    - [Loppukäyttäjätiedot](#loppukäyttäjätiedot)
    - [Työntekijätiedot](#työntekijätiedot)
    - [Ei-henkilöasiakkaiden tiedot](#ei-henkilöasiakkaiden-tiedot)
    - [Käyttäytymistiedot](#käyttäytymistiedot)
    - [Erityiset henkilötietotyypit](#erityiset-henkilötietotyypit)
  - [Alihankkijat](#alihankkijat)
  - [Henkilötietojen maantieteellinen sijainti](#henkilötietojen-maantieteellinen-sijainti)

## Roolit

Henkilötietojen käsittelijä - Hypernova Oy ei toimi rekisterinpitäjänä vaan huolehtii rekisterin teknisestä saavutettavuudesta

Rekisterinpitäjä - Kirjasto toimii rekisterinpitäjänä.

Rekisteröidyt/Käyttäjät - Kirjaston asiakkaat ovat rekisteriin rekisteröidyt käyttäjät.

## Henkilötietojen käyttötarkoitus

Järjestelmän loppukäyttäjärekisteriä käytetään normaaleihin päivittäisen kirjastotyön haasteiden ratkaisemiseen, kuten:

* kirjaston lakisääteisten velvollisuuksien täyttäminen
* käyttäjien hallinta, kuten käyttöoikeudet
* palvelun ylläpito
* palvelun kehittäminen
* ongelma- ja vikatilanteiden selvittäminen

Lisäksi muut kirjaston tarpeet, jotka jokainen asiakas määrittelee erikseen.

## Henkilötietojen käsittelyn oikeusperusta

### Suostumus (GDPR 6(1)(a))
* Loppukäyttäjälta tulisi pyytää suostumus henkilötietojensa käyttöön ja säilyttämiseen kirjaston henkilötietojen käytön rekisteriselosteen mukaisesti.
* Valinnainen lainahistorian tallentaminen
* Valinnainen hakuhistorian tallentaminen

### Koha-ylläpitosopimuksen täyttäminen (GDPR 6(1)(b))
* Tietojen kerääminen on välttämätöntä käyttäjätilien hallitsemiseksi ja kirjastopalveluiden tarjoamiseksi, kuten teosten lainauspalvelu.

### Lakisääteinen velvollisuus (GDPR 6(1)(c))
* Käyttäjätietojen kerääminen on tarpeellista kirjaston lakisääteisten velvollisuuksien hoitamiseksi, kuten mahdollinen tilastointivelvollisuus.

### Rekisteröityjen oikeuksien toteutuminen (GDPR 6(1)(d))
* Tietojen kerääminen on tärkeää kun selvitetään väärinkäytöstilanteita.

### Rekisterinpitäjän oikeutettu etu (GDPR 6(1)(f))
* Asiakastietoja kerätään tietoturva ja väärinkäytösten estämiseksi
* Teknisen tuen tarjoaminen vikatilanteissa

## Henkilötietojen käsittelytavat

Toimittajalla on esteetön pääsy loppukäyttäjärekisteriin ja voi asiakkaan toimeksiannosta tehdä loppukäyttäjärekisteriin erämuutoksia, yhdistelyjä ja muita rekisterin ylläpitämisen kannalta tarpeellisia huoltotöitä.

### Tietojen kerääminen

Järjestelmään kerääntyy loppukäyttäjien käyttödataa.

Loppukäyttäjä voi valita haluaako tietojaan kerättävän.

Asiakas voi parametroida järjestelmän anonymisoimaan loppukäyttäjien lainahistorian.

### Tietojen tallentaminen ja säilyttäminen

Järjestelmä tallentaa loppukäyttäjän tiedot tietokantaan. Yleensä tiedot syötetään asiakkaan toimesta, joita loppukäyttäjä voi järjestelmän parametrien mukaisesti mahdollisesti itse muokata.

On mahdollista myös rajapintojen kautta tuoda ja viedä loppukäyttäjien tietoja.

Loppukäyttäjien tiedot säilytetään tietokannassa ja varmuuskopioissa.
Loppukäyttäjätietojen poistaminen tietokannasta, esimerkiksi asiakkuuden vanhennuttua, on asiakkaan tietokannanhoitotoimenpiteiden varassa.

### Tietojen muokkaaminen

Asiakas, sekä loppukäyttäjä, voivat muokata loppukäyttäjän tietoja. Muutoksista jää tietokantaa lokimerkintä.

On mahdollista rajapintojen kautta sallia loppukäyttäjätietojen muokkaaminen.

### Tietojen haku

Asiakastietoja voidaan hakea järjestelmästä.
Asiakkaan tietojen hakeminen ja näyttäminen on mahdollista tallentaa tietokannan lokiin.

### Tietojen luovuttaminen ja siirtäminen

Järjestelmästä on mahdollista tuoda ja viedä loppukäyttäjätietoja.

Lisäksi avoimet rajapinnat mahdollistavat käyttöoikeuksilla rajatun pääsyn loppukäyttäjärekisteriin, joko kokonaisuudessaan tai pelkästään kirjautuneen loppukäyttäjän omiin tietoihin.

### Tietojen yhdistäminen

Järjestelmässä on mahdollista yhdistellä loppukäyttäjätietoja, esimerkiksi olemassa olevan loppukäyttäjän kaksoisrekisteröinnin estämiseksi, tai loppukäyttäjärekisterin siivoamiseksi.

### Tietojen rajoittaminen

Järjestelmässä rajoitetaan käyttäjäkohtaisesti pääsyä asiakasrekisteriin käyttöoikeuksilla. Samat käyttöoikeudet ovat voimassa rajapinnoissa.

Järjestelmän asetuksista riippuen, huoltajalla on oikeus nähdä huollettavansa lainat.

### Tietojen poistaminen

Asiakas voi poistaa loppukäyttäjän pyynnöstä, tai muuten tarvittaessa loppukäyttäjien tietoja järjestelmästä.

## Käsitellyt henkilötietotyypit

Käsiteltävät henkilötiedot sisältävät seuraavanlaista tietoa:

### Loppukäyttäjätiedot

nimi, titteli, kotiosoite, puhelin- ja matkapuhelinnumerot, sähköpostiosoite, syntymäaika, sukupuoli, asiakasnumero, palvelujen käyttöhistoria ja -tiedot.

### Työntekijätiedot

Erityisesti käyttöoikeudet järjestelmään.
Kuten loppukäyttäjätiedot, lisäksi asiakkaan vapaavalintaisia lisätietoja.

### Ei-henkilöasiakkaiden tiedot

yrityksen/järjestön nimi, yhteyshenkilöiden titteli ja muut loppukäyttäjätiedot.

### Käyttäytymistiedot

kirjautumiset järjestelmään, IP-osoite, istuntotunniste, valinnainen lainahistoria, valinnainen hakuhistoria, sivukäynnit lokittuvat anonyymisti.

### Erityiset henkilötietotyypit

Järjestelmään ei tallenneta:
terveyteen liittyviä tietoja, rotuun tai etniseen alkuperään liittyviä tietoja, poliittisia mielipiteitä, uskonnollisia tai filosofisia vakaumuksia, ammattiliiton jäsenyyksiä, geneettisiä tai biometrisiä tietoja henkilön yksiselitteiseksi tunnistamiseksi, henkilön seksuaaliseen käyttäytymiseen liittyviä tietoja, rikostuomioita ja rikkomuksia tai niihin liittyviä turvaamistoimia.

## Alihankkijat

Toimittaja voi käyttää alihankkijoita Koha-hosting -palvelun toteuttamiseen. Alihankkijat listataan erillisessä liitteessä.

Palvelininfran toimittajalla on mahdollisuus päästä käsiksi palvelun tietoihin esimerkiksi viranomaisvaatimuksen seurauksena.

## Henkilötietojen maantieteellinen sijainti

Henkilötiedot tallennetaan Koha-hosting -sopimuksen mukaisesti, joko Toimittajan valitseman palveluntarjoajan tiloihin Suomessa, tai asiakkaan valitseman palveluntarjoajan tiloihin.

