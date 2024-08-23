# Palvelukuvaus


## 1. Palvelun kuvaus

Hypernova Oy:n Koha-palvelu on palvelu, joka tarjoaa asiakkaalle vapaan ja
avoimen lähdekoodin kirjastojärjestelmän **Koha**:n käyttöönoton ja ylläpidon.

Palvelu tuotetaan kokonaisuudessaan vapaan ja avoimen lähdekoodin ohjelmistoilla.

Palvelun toteuttamisen maantieteellinen sijainti on Suomi. Koha-palvelimet
ja tallennetut tiedot sijaitsevat Suomessa. Mahdollisten alihankkijoiden
tarjoamat palvelut sijaitsevat EU-alueella.

## Palvelun elinkaari

### 2.1 Käyttöönotto- ja parametrointipalvelu

Palvelun ensimmäinen vaihe on käyttöönotto- ja parametrointi. Tässä vaiheessa
asiakkaan vanha tietokanta konvertoidaan kehittämillämme konversiotyökaluilla
Kohaan.

Konversiovaiheessa asiakkaan vanhasta tietokannasta otetaan useita kopioita,
ajetaan niitä konversiotyökalujen läpi Kohaan, tehdään tarvittavia korjauksia
ja toistetaan tätä prosessia niin kauan kunnes riittävä konversion taso on
saavutettu.

Asiakkaalle valitaan Koha-pääkäyttäjä, joka saa Koha-kirjastojärjestelmän
pääkäyttäjätason oikeudet. Käyttöönotto- ja parametrointipalvelu sisältää
asiakkaan tulevan Koha-pääkäyttäjän koulutuksen.

Käyttöönotto on valmis, kun asiakas hyväksyy konversion riittävän tason ja
uusi kirjastojärjestelmä on todettu tuotantokelpoiseksi kokonaisuudeksi.

### 2.2 Ylläpitopalvelu

Koha-ylläpitopalvelu on jatkuva palvelu, jossa varmistamme
Koha-kirjastojärjestelmän ja siihen liittyvien komponenttien
ympärivuorokautisen saatavuuden vuoden jokaisena päivänä.

Palvelu sisältää päivittäisen varmuuskopioinnin ja varmuuskopioiden
tietoturvallisen ja kahdennetun säilytyksen.

Ylläpitopalveluun kuuluu vuosittain kaksi Koha-versiopäivitystä, jotka
ajoittuvat yleensä tammikuulle ja heinäkuulle. Lisäksi ylimääräiset
tietoturvapäivitykset turvaavat palvelinympäristöämme ulkopuolisilta uhkilta.

Palvelumme on suojattu asianmukaisten turvallisuuskäytäntöjen mukaisesti.

### 2.3 Tukipalvelu

Tukipalvelu järjestetään Hypernova Oy:n tikettipalvelu [Redmine](https://redmine.hypernova.fi):n
kautta.

Luomme asiakkaan pääkäyttäjälle Redmine-tilin, jonka avulla asiakas pääsee
katsomaan, luomaan, muokkaamaan ja kommentoimaan tukipyyntöjä. Asiakas voi
tarvittaessa pyytää ylimääräisiä Redmine-tilejä, mikäli pääkäyttäjiä on
useampia.

Sähköpostin käyttäminen on mahdollista, mutta suosittelemme ehdottomasti
käyttämään tikettipalvelua tukipyyntöjen hallinnollisista syistä.

Puhelinta käytetään vain hätätapauksessa. Hätätapaus tarkoittaa käytännössä
sitä, että Koha-kirjastojärjestelmä ei ole jonkin tilapäisen häiriön takia
saatavilla.

#### 2.3.1 Tukipyyntö ja sen elinkaari

**Tukipyynnön luonti**

Jokaisella asiakkaalla on oma asiakaskohtainen Redmine-projektinsa, jota
asiakas käyttää tukipyynnöissään. Tukipyyntö tapahtuu luomalla uusi
tiketti Redminen asiakaskohtaiseen projektiin.

**Tuen vastaus** 

Vastaamme tikettiin mahdollisimman pian, kuitenkin noudattaen
sopimuksessamme sovittua palvelutasoa.

Mikäli tiketissä pyydetty palvelu ei kuulu normaaliin tukeemme, vaan
aiheuttaa laskutettavaa lisätyötä, sovitaan siitä erikseen tiketissä.

**Tukipyynnön ratkaisu**

Kun tukipyyntö on saatu ratkaistua, tiketti suljetaan. Tikettiin voidaan
tarpeen vaatiessa kirjata monenlaista lisätietoa, kuten käytetty työaika,
jota käytetään laskutuksessa, mikäli tiketti aiheuttaa lisämaksullista
työtä.

### 2.4 Erikseen tilattavat asiantuntijatyöt ja lisätyöt

Asiakas voi tilata erilaisia lisätöitä tikettipalvelumme kautta. Asiakas
ilmoittaa tiketissä toivomastaan muutoksesta tai ominaisuudesta. Arvioimme
sen jälkeen tarvittavan työmäärän, jonka jälkeen asiakas joko hyväksyy
tai hylkää tarjouksen.

Laskutus on yleensä sopimuksen mukaisen tuntiveloituksen mukainen,
mutta varsinkin isommissa lisätöissä on mahdollista sopia urakkahinta.

### 2.5 Palvelun päättäminen

Asiakkaalla on oikeus päättää palvelun käyttö milloin tahansa ilman syytä.

Asiakas ilmoittaa palvelun päättymisestä sopimuksessa mainitussa
aikataulussa, kuitenkin vähintään kalenterikuukausi ennen palvelun
päättymistä.

Asiakas voi ennen sopimuksen päättymistä noutaa tietokantansa palvelimelta
itse. Avustamme tarvittaessa tietokantadumpin ottamisessa.

## 3. Palvelutasot

Palvelu on saatavilla 24/7/365. Ennalta määrätyt versiopäivitykset
aiheuttavat lyhyen katkon palvelun saatavuudessa. Versiopäivitykset
pyritään ajoittamaan niin, että niistä aiheutuva haitta asiakkaalle
olisi mahdollisimman vähäinen.

Noudatamme tarjouksessamme mainittua saatavuustasoa ja palveluvastetta.
Tasoa ja vastetta on mahdollista tarkentaa erillisellä SLA-sopimuksella.

### 3.1. Saatavuustason mittaaminen

Seuraamme automaattisesti Koha-kirjastojärjestelmän saatavuutta.
Automaattinen monitorointijärjestelmämme mittaa mahdollisten
järjestelmän saatavuushäiriöiden kestoja (palautumisaikoja).

Raportoimme saatavuustasosta tarvittaessa asiakkaalle tämän pyynnöstä.

### 3.2 Palvelutason mittaaminen

Redmine-tikettijärjestelmä pitää yllä tikettien tilaa, aikaleimoja ja
käytettyä työaikaa. Näiden avulla on mahdollista mitata palvelutason
ja vasteaikojen toteutumista.

## 4. Käyttö- ja immateriaalioikeudet

Koha on GPLv3-lisensoitu ohjelmisto. Asiakas omistaa kaiken järjestelmän
tietokantaan ja lokeihin tallennetun datan sekä asiakkaan Kohaan lataamat
tiedostot, ja voi halutessaan noutaa kaikki järjestelmään tallennetun
tiedon. Autamme tarvittaessa tiedon noutamisessa
