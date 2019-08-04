# Koha-hosting tekninen käyttöönottokysymystö

LUONNOS:

Tässä dokumentissa kysytään kootusti teknisiä tietoja Koha-asennuksen parametroinniksi.
Näitä tarvitaan, että Koha voidaan kytkeä haluttuihin palveluihin ja rajata verkkopääsy halutun näkyvyysalueen piiriin.

## Tietoturvakäytänteet

### Henkilökohtaiset käyttäjätunnukset

Asiakas sitoutuu käyttämään Kohassa henkilökunnan henkilökohtaisia käyttäjätunnuksia ja huolehtimaan, että käyttäjätunnukset sekä niihin liitetyt käyttöoikeudet pidetään ajantasaisina.
Henkilökohtaiset käyttäjätunnukset lisäävät tietoturvaa merkittävästi, sillä usein heikoin lenkki tietojärjestelmissä on juurikin inhimillinen elementti.
Jaetut käyttäjätunnukset ennenpitkää päätyvät puolijulkiseksi tiedoksi organisaatiossa ja sen ulkopuolellekin.

```
Jaa / Ei / EOS
```

### Kohan verkkonäkyvyys

* Julkinen - Yleiset Koha-kirjastot perinteisesti pitävät pääsyn Kohaan avoimena, ainakin rajapintojen osalta, koska tällöin voidaan tarjota avoimia rajapintoja ja avointa dataa kaikille kiinnostuneille. Yleensä on myös tarvetta liikkuvalle työlle, myös paikoissa joissa perinteiset VPN-ratkaisut eivät tarjoa luotettavaa yhteyttä, kuten kirjastoautoissa.

* Puolijulkinen - Kuten Julkinen, mutta rajattu vain suomalaisiin/pohjoismaisiin IP-osoitteisiin.

* IP-rajattu - Vain sallituista IP-osoitteista tai IP-aliverkoista sallitaan pääsy Kohaan. Tällä tavalla voidaan rajoittaa julkinen pääsy esimerkiksi pelkästään kirjaston tiloihin. Tämä on hyvä ratkaisu jos ei koeta tarvetta tarjota rajapintoja julkiseen käyttöön, tarvetta liikuvalle työlle ei ole, tai se voidaan hoitaa ssh-yhteyden kautta (VPN).

Hypernova Oy suosittelee puolijulkista näkyvyyttä.

#### Verkkonäkyvyys OPAC:
```
Julkinen / Puolijulkinen / IP-rajaus (lista IP-alueista) _________________________________________________
```
#### Verkkonäkyvyys virkailijatyökalu:
```
Julkinen / Puolijulkinen / IP-rajaus (lista IP-alueista) _________________________________________________
```

## Sähköposti

### Kirjaston/Kohan sähköpostilaatikko

Kohassa järjestelmäasetus 'KohaAdminEmailAddress'

Esimerkiksi kirjasto@kirjastosi.fi

Koha lähettäessaan spostia, lähettää ne jonkun sähköpostitilin nimissä. Tällöin viestinvälitysvirheet ja asiakkaiden vastaukset menevät johonkin oikeaan spostilaatikkoon, josta ne voidaan käydä lukemassa ja vastaamassa.

Ainakin pääkäyttäjillä pitää olla pääsy tähän laatikkoon, mutta se voi olla myös yleinen kirjaston asiakaspalveluspostilaatikko, jossa suodattimilla siirretään sähköpostinlähetysvirheilmoitukset omaan kansioonsa.

```
Koha:n sähköpostilaatikon osoite: ____________________________________________
```

### Lähtevän postin palvelin (SMTP)

Koha, voidakseen lähettää sähköposti-ilmoituksia, vaatii sähköpostinlähetyspalvelimen, joka sallii Kohan lähettää viestejä.

#### Hypernova Oy järjestää

Hypernova Oy:llä on tarjota lähtevän postin palvelin, mutta jotkut palveluntarjoajat luokittelevat toisten puolesta sähköpostin lähettämisen helposti roskapostiksi, joten suosittelemme, jos mahdollista, käyttämään oman domainin rekisteröityä SMTP-palvelinta.

Jos Hypernova Oy:n lähettävää palvelinta käytetään, pitää kirjaston domainin tietoihin lisätä SPF-tieto, joka sallii Hypernova Oy:n SMTP-palvelinta lähettämään viestejä Asiakkaan nimissä.

```
Hypernova Oy:n SMTP-palvelimen osoite (Toimittaja täyttää): ______________________________________________

Domainiimme lisätty SPF-recordiin Hypernovan SMTP-palvelimen osoite: Jaa / Ei / EOS
```

#### Asiakas järjestää

```
Lähtevän postin palvelin: ____________________________________________________

Käyttäjätunnus:           ____________________________________________________

Salasana/salasanan ilmoitustapa ja päivä: ____________________________________

Koha:n IP (Toimittaja täyttää): ______________________________________________
```

### Saapuvan postin palvelin (POP3 / IMAP)

Koha ei vastaanota spostia.

## SIP2-Automaatit

SIP2-protokollaa käyttävät lainaus/palautusautomaatit ja omatoimikirjastolaitteet pitää rekisteröidä palvelimelle erikseen.

Kohassa oleva SIP2-palvelin hyväksyy yhteydet vain palvelimen konfiguraatioon määritellyilta automaateilta. Lisäksi automaatteihin pitää vaihtaa Kohan SIP2-palvelimen tiedot, kuten IP, TCP-portti, yleiset Koha-yhteensopivuusparametrit.

REST API:a käyttävät automaatit ja laitteet ja ohjelmistot eivät vaadi palvelinpuolen määrittelyjä.

### Kohan SIP2-palvelin

```
IP:     __________________________________________
Portti: __________________________________________
```

### Asiakkaan SIP2-automaatit


```
  Automaatti                  1                   2                   3       
Nimi:                  _______________     _______________     _______________
Sijainti:              _______________     _______________     _______________
IP-osoite:             _______________     _______________     _______________
Käyttäjätunnus:        _______________     _______________     _______________
Salasana:              _______________     _______________     _______________
Merkistökoodaus:       _______________     _______________     _______________
Viestin lopetusmerkki: _______________     _______________     _______________
```

## Tekstiviesti-ilmoitukset

Kohasta on mahdollista lähettää myös tekstiviesti-ilmoituksia ja Kohaan voi helposti integroida muita pikaviestisovelluksia, joissa on avoimet rajapinnat, kuten Telegram.

```
SMS-gateway palveluntarjoaja: __________________________________________
SMS-gateway osoite:           __________________________________________
Käyttäjätunnus:               __________________________________________
Salasana/salasana toimitettu: __________________________________________
```

## Palvelimelle huoltoyhteyden salliminen

Koha-palvelimelle annetaan asiakkaan edustajille pääsy, jolloin he voivat itse tarvittaessa ottaa tietokantakopioita, ajaa eräajoja ja raskaita raportointeja tai muuta työtä, mikä vaatii pääsyn palvelimelle.

Hypernova Oy sallii vain ssh-yhteyden käyttäen public/private -avainautentikaatiota salasanasuojatulla privaattiavaimella.

Linuxissa ssh on sisäänrakennettu.

Windowsissa Putty ja PuttyGen ovat käytettyjä ohjelmia ssh-, sekä terminaaliyhteyksien muodostamiseksi.

```
  Henkilö
Nimi:                             _______________     _______________     _______________
ssh julkinen avain toimitettu:    _______________     _______________     _______________
ssh julkinen avain toimitustapa:  _______________     _______________     _______________

```

## Etäyhteys Kohaan

Jos Kohan saatavutta rajoitetaan palomuurin IP-rajauksin, on mahdollista salasanasuojatulla ssh avaimella avata etäyhteys Kohaan omalta mobiililaitteelta.

Etäyhteys tarjotaan ssh port forward -toiminnallisuuden kautta.

Windowsissa voidaan käyttää esimerkiksi Putty ja PuttyGen, sekä niiden haastava graafinen parametrointi.

Linuxissa komentokehotteen komennolla:
`ssh -L 12345:10.0.3.30:8080 koha-palvelimesi-osoite`

```
  Henkilö
Nimi:                             _______________     _______________     _______________
ssh julkinen avain toimitettu:    _______________     _______________     _______________
ssh julkinen avain toimitustapa:  _______________     _______________     _______________

```

