# Koha-hosting -palvelun tietoturva- ja tietosuojaselvitys

<!-- vscode-markdown-toc -->
* 1. [Tietojärjestelmätoimittajalta vaadittavat tietoturva- ja tietosuojakäytänteet](#Tietojrjestelmtoimittajaltavaadittavattietoturva-jatietosuojakytnteet)
	* 1.1. [Tietoturvan periaatteet](#Tietoturvanperiaatteet)
		* 1.1.1. [Henkilötiedon käsittely (ml. henkilötietojen pseudonymisointi ja salaus)](#Henkiltiedonksittelyml.henkiltietojenpseudonymisointijasalaus)
		* 1.1.2. [Luottamuksellisuus, saatavuus, vikasietoisuus](#Luottamuksellisuussaatavuusvikasietoisuus)
		* 1.1.3. [Riskienhallinta](#Riskienhallinta)
		* 1.1.4. [Palautuminen](#Palautuminen)
		* 1.1.5. [Tietoturvakäytänteiden säännöllinen arviointi](#Tietoturvakytnteidensnnllinenarviointi)
		* 1.1.6. [Henkilöstön koulutus ja ohjeet](#Henkilstnkoulutusjaohjeet)
	* 1.2. [ Sovelluskehityksen periaatteet](#Sovelluskehityksenperiaatteet)
		* 1.2.1. [Tietosuoja- ja tietoturvavaatimusten huomiointi](#Tietosuoja-jatietoturvavaatimustenhuomiointi)
		* 1.2.2. [Testausdata, jossa ei oikeaa henkilötietoa](#Testausdatajossaeioikeaahenkiltietoa)
		* 1.2.3. [Kehitysympäristön tietoturva](#Kehitysympristntietoturva)
	* 1.3. [ Käyttövaltuushallinnan periaatteet](#Kyttvaltuushallinnanperiaatteet)
		* 1.3.1. [Käyttäjätunnuksen elinkaari](#Kyttjtunnuksenelinkaari)
		* 1.3.2. [Käyttöoikeuksien katselmointi](#Kyttoikeuksienkatselmointi)
* 2. [Järjestelmän/palvelun tietoturva- ja tietosuojaominaisuudet](#Jrjestelmnpalveluntietoturva-jatietosuojaominaisuudet)
	* 2.1. [ Järjestelmän valvonta-, ylläpito- ja tuki](#Jrjestelmnvalvonta-yllpito-jatuki)
	* 2.2. [ Järjestelmän riskianalysointi](#Jrjestelmnriskianalysointi)
	* 2.3. [ Järjestelmän testausprosessi](#Jrjestelmntestausprosessi)
	* 2.4. [ Järjestelmän tietosisältö (ml. erityiset tietoryhmät) ja integraatiot](#Jrjestelmntietosisltml.erityisettietoryhmtjaintegraatiot)
	* 2.5. [ Rekisteröidyn oikeuksien toteutuminen järjestelmässä](#Rekisteridynoikeuksientoteutuminenjrjestelmss)
		* 2.5.1. [Rekisteröidyn tietojen tarkastus](#Rekisteridyntietojentarkastus)
		* 2.5.2. [Rekisteröidyn tietojen poisto ja oikaisu](#Rekisteridyntietojenpoistojaoikaisu)
		* 2.5.3. [Rekisteröidyn tietojen export](#Rekisteridyntietojenexport)
		* 2.5.4. [Suostumusten ja kieltojen hallinta](#Suostumustenjakieltojenhallinta)
		* 2.5.5. [Henkilötietojen käsittelyn minimointi (ml. vanhentuneiden tietojen poisto)](#Henkiltietojenksittelynminimointiml.vanhentuneidentietojenpoisto)
		* 2.5.6. [Henkilötietojen anonymisointi/pseudonymisointi](#Henkiltietojenanonymisointipseudonymisointi)
	* 2.6. [ Järjestelmän käyttövaltuushallinnan periaatteet:](#Jrjestelmnkyttvaltuushallinnanperiaatteet:)
		* 2.6.1. [henkilökohtaiset käyttäjätunnukset](#henkilkohtaisetkyttjtunnukset)
		* 2.6.2. [Salasanamääritykset](#Salasanamritykset)
	* 2.7. [ Lokit:](#Lokit:)
		* 2.7.1. [Kirjautumisloki, admin-käyttöloki](#Kirjautumislokiadmin-kyttloki)
		* 2.7.2. [Henkilötietojen käsittelyn lokitus (käyttöloki)](#Henkiltietojenksittelynlokituskyttloki)
		* 2.7.3. [Lokiraportit](#Lokiraportit)
		* 2.7.4. [Lokien suojaus](#Lokiensuojaus)
	* 2.8. [ Varmuuskopiointi](#Varmuuskopiointi)
	* 2.9. [ Toipumissuunnitelma](#Toipumissuunnitelma)
	* 2.10. [ Tietoturvapäivitykset](#Tietoturvapivitykset)
	* 2.11. [ Tietoturvakuvaus](#Tietoturvakuvaus)
		* 2.11.1. [ Salaukset](#Salaukset)
		* 2.11.2. [ Salasanan suojaus](#Salasanansuojaus)
		* 2.11.3. [ Yhteyksien suojaus / verkkoliikenteen tietoturva](#Yhteyksiensuojausverkkoliikenteentietoturva)
		* 2.11.4. [ Tietojen suojaukset](#Tietojensuojaukset)
		* 2.11.5. [ Tietojen syötön suojaus](#Tietojensytnsuojaus)
		* 2.11.6. [ Datamallien tietoturva](#Datamallientietoturva)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

##  1. <a name='Tietojrjestelmtoimittajaltavaadittavattietoturva-jatietosuojakytnteet'></a>Tietojärjestelmätoimittajalta vaadittavat tietoturva- ja tietosuojakäytänteet

###  1.1. <a name='Tietoturvanperiaatteet'></a>Tietoturvan periaatteet

Tietoturvamme perustuu

* käyttöjärjestelmä- ja palvelinsovellustason tietoturvapäivityksiin

* modernien ja ajanmukaisten salaimien (EECDH+AESGCM:EDH+AESGCM) ja protokollien käyttöön (TLS1.3, HTTP/3)

* käyttäjätunnus+salasana -kombinaatioiden korvaamiseen salasanasuojatuilla private-public -salausavaimilla

* konttiteknologioiden mahdollistamaan palveluiden ja virtuaalipalvelimien isolaatioon

* “Zero trust” ja “drop by default”

* plaintext-protokollien (FTP, SIP2) välttämiseen tai tunnelointiin stunnel4 tai ssh -ohjelmilla.

####  1.1.1. <a name='Henkiltiedonksittelyml.henkiltietojenpseudonymisointijasalaus'></a>Henkilötiedon käsittely (ml. henkilötietojen pseudonymisointi ja salaus)

Järjestelmään tallennetaan loppukäyttäjien ja henkilökunnan henkilötietoja, ks. erillinen henkilötietojen käsittelysopimus.
Suosittelemme olemaan tallentamatta henkilötunnuksia, mutta asiakas voi halutessaan poiketa suosituksestamme asiakkaan omalla vastuulla.
Järjestelmän lokeihin jää merkintä ladatuista sivuista ja metadataa asiakkaan istunnoista.
Lainahistorian tallentaminen on loppukäyttäjän itse valittavissa. Viimeisimmät niteen kaksi lainajaa jää aina muistiin, jotta voidaan tarvittaessa kohdentaa perintätoimenpiteitä aineiston turmelemisen takia.
Loppukäyttäjille lähetetään muistutuksia ja ilmoituksia. Asiakas voi itse valita minkälaisia viestipohjia käytetään. Suosittelemme käyttämään mahdollisimman vähäisiä henkilötietoja sisältäviä viestipohjia.
Asiakkas hoitaa itse loppukäyttäjärekisteriä ja on vastuussa loppukäyttäjärekisteritietojen oikeellisuudesta.

##### Anonymisointi

Testiympäristöihin luodaan testidataa oikean asiakastietokannan pohjalta käyttäen anonymisointityökaluja.
Anonymisointi suoritetaan erilaisilla suodattimilla tapauksesta riippuen.
Olemassaolevat nimet, osoitteet, syntymäajat, puhelinnumerot ja muut henkilöivät tiedot korvataan joko

* yksi-yhteen vastaavan merkkiluokan merkillä. Esimerkiksi numero korvataan satunnaislukugeneraattorin luomalla numerolla. Tällöin merkkijonojen rakenteet ovat samoja, mutta sisältö epäoleellista ja mahdotonta palauttaa alkuperäiseen muotoon.

* puppusanageneraattorilla, joka hävittää vanhat arvot ja tuo tilalle kokonaan uudet ihmisluettavat sanat.  Tällöin merkkijonojen rakenteet ovat samankaltaisia, mutta sisältö epäoleellista ja mahdotonta palauttaa alkuperäiseen muotoon.

####  1.1.2. <a name='Luottamuksellisuussaatavuusvikasietoisuus'></a>Luottamuksellisuus, saatavuus, vikasietoisuus

Käyttämämme palvelinohjelmistot ovat erittäin laajasti käytettyjä ja turvallisiksi ja luotettaviksi havaittuja. Käytämme aina vapaan ja avoimen lähdekoodin ohjelmistoja.
Sopimuksen tasosta riippuen palveluita voidaan hajauttaa ja vikasietoisuutta lisätä palveluita kahdentamalla.

####  1.1.3. <a name='Riskienhallinta'></a>Riskienhallinta

Arvioimme riskejä vähintään viikoittain tapahtuvissa riskienarviointikokouksissa. Hypernova Oy:llä on  itsesuojelulliset intressit omien ja asiakkaidemme riskien minimoimiseksi.
Erilaiset käyttäjäyhteisöt kansainvälisesti ennakoivat ja hallitsevat käyttämiimme ohjelmistoihin liittyviä riskejä.
Hypernova Oy toimii aktiivisesti osana erilaisia käyttäjäyhteisöjä ja seuraa aktiivisesti nykyisiä ja tulevia uhkamalleja.

####  1.1.4. <a name='Palautuminen'></a>Palautuminen

Järjestelmäpalvelumme käynnistyvät vikatilanteissa uudestaan.
Monitorointityökalumme valvovat palveluitamme automaattisesti ympäri vuorokauden ja ilmoittavat palveluihimme kohdistuvista uhkista ja puutteista.
Järjestelmämme voidaan tarvittaessa rakentaa automaattisesti kokonaan uudestaan ja ottaa käyttöön viimeisin varmuuskopio.

####  1.1.5. <a name='Tietoturvakytnteidensnnllinenarviointi'></a>Tietoturvakäytänteiden säännöllinen arviointi

Seuraamme aktiivisesti globaaleja uhkia mm. sähköpostilistoilta, keskustelupalstoilta- ja kanavilta ja sekä sosiaalisesta- että perinteisestä mediasta.
Tukeudumme ohjelmistojemme toimittajien julkaisemiin päivityspaketteihin.

####  1.1.6. <a name='Henkilstnkoulutusjaohjeet'></a>Henkilöstön koulutus ja ohjeet

Hypernova Oy:n tietojärjestelmäasiantuntijoiksi valitaan vain henkilöt, jotka ovat läpäisseet työtehtävän vaatimuksia vastaavat raskaat henkiset ja fyysiset ammattitaito- ja motivaatiotestit. Testit mittaavat kattavasti osaamista järjestelmäpalvelun tarjoamisen eri osapuolilta, sekä persoonallisuuden soveltumista niin työyhteisöön kuin varsinaiseen työtehtävään.
Työn ohella henkilöstömme vastaa itse oman ammattitaidon kehittämisestä sekä oppivat jatkuvasti globaalilta osaajayhteisöltä.
Junior- ja Trainee -tason työntekijöitä opastetaan ja työn suorittamista valvotaan aktiivisesti.

###  1.2. <a name='Sovelluskehityksenperiaatteet'></a> Sovelluskehityksen periaatteet

####  1.2.1. <a name='Tietosuoja-jatietoturvavaatimustenhuomiointi'></a>Tietosuoja- ja tietoturvavaatimusten huomiointi

Autentikointi ja auktorisointi on aina mielessä. OWASP on oiva perusta turvallisen ohjelmiston suunnittelulle.

####  1.2.2. <a name='Testausdatajossaeioikeaahenkiltietoa'></a>Testausdata, jossa ei oikeaa henkilötietoa

ks. yllä.

####  1.2.3. <a name='Kehitysympristntietoturva'></a>Kehitysympäristön tietoturva

Kehitysympäristö rakennetaan käyttämällä samoja automaattisia palvelimen provisiointityökaluja kuin tuotantoympäristön rakentamisessa. Näin kehitysympäristömme ovat konfiguroitu tietoturvan kannalta samalla menetelmillä kuin tuotantoympäristömmekin.
Kehitysympäristöissä ei ole oikeaa asiakasdataa, mutta usein ovat julkisesti saavutettavissa hyväksymistestauksen helpottamiseksi.
Kehitysympäristömme eristetään muusta palvelinympäristöstämme ja ne ajetaan eri alustapalvelimella kuin tuotantopalvelimemme.

###  1.3. <a name='Kyttvaltuushallinnanperiaatteet'></a> Käyttövaltuushallinnan periaatteet

####  1.3.1. <a name='Kyttjtunnuksenelinkaari'></a>Käyttäjätunnuksen elinkaari

Asiakas parametroi itse oletusvoimassaoloajan kirjastojärjestelmän loppukäyttäjän tunnuksille. Tunnukset tarkastetaan ja uusitaan säännöllisin väliajoin.
Palvelinten huoltotunnukset vaihdetaan automaattisesti ja palvelinautomaatio hoitaa autentikoinnin huoltoyhteyksille läpinäkyvästi.

####  1.3.2. <a name='Kyttoikeuksienkatselmointi'></a>Käyttöoikeuksien katselmointi

Koha-kirjastojärjestelmästä on mahdollista saada raportteja, joissa käyttöoikeudet on kuvattu selkeästi.

##  2. <a name='Jrjestelmnpalveluntietoturva-jatietosuojaominaisuudet'></a>Järjestelmän/palvelun tietoturva- ja tietosuojaominaisuudet

###  2.1. <a name='Jrjestelmnvalvonta-yllpito-jatuki'></a> Järjestelmän valvonta-, ylläpito- ja tuki

Järjestelmiämme valvotaan automaattisilla monitorointityökaluilla tyypillisten vikatilanteiden varalta.
Keräämme myös suorituskykytilastoa, jota käytetään palvelinkapasiteettikulun tarkasteluun.
Lisäksi suoritamme manuaalisia tarkastuksia ja ajetaan haittaohjelmaskannauksia.
Tarjoamme tukipalveluita sähköpostitse ja puhelimitse. Pyrimme vastaamaan mahdollisimman pian kaikkina kellonaikoina enintään 24 tunnin kuluessa.

###  2.2. <a name='Jrjestelmnriskianalysointi'></a> Järjestelmän riskianalysointi

ks. yllä.

###  2.3. <a name='Jrjestelmntestausprosessi'></a> Järjestelmän testausprosessi

Sen lisäksi että eri yhteisöt kehittävät tuotetta ja tarjoavat sille omat laadunvalvontaputkensa, meillä on omat kevyet toiminnalliset testit palvelimen infrastruktuurin varmistamiseksi.
Kaikki asennukset, päivitykset ja muut huoltotyöt hoidetaan keskuspalvelimemme kautta, jonne määritellään haluttu palvelinkonfiguraatio.
Konfiguraatio testataan ensin testipalvelimella, sitten muutos testataan yleisellä demopalvelimella ja viimeisenä muutos tuodaan automaation avulla tuotantopalvelimelle.
Tällä tavalla voidaan varmistua että palvelinautomaatio ei tuota epämieluisia sivuvaikutuksia, ja että päivitys toimii automatisoidusti. Jos päivitykset tai muutokset eivät toimi oikein, käytämme osaamistamme ja kytköksiämme yhteisöihin ja korjaamme ongelmat käyttäen asiakkaidemme kanssa sovittua yhteiskehittämispuskuria.

###  2.4. <a name='Jrjestelmntietosisltml.erityisettietoryhmtjaintegraatiot'></a> Järjestelmän tietosisältö (ml. erityiset tietoryhmät) ja integraatiot

Integraatiot ovat asiakaskohtaisia ja niistä sovitaan erikseen.

###  2.5. <a name='Rekisteridynoikeuksientoteutuminenjrjestelmss'></a> Rekisteröidyn oikeuksien toteutuminen järjestelmässä

####  2.5.1. <a name='Rekisteridyntietojentarkastus'></a>Rekisteröidyn tietojen tarkastus

Loppukäyttäjä voi tutustua EU:n tietosuojavaatimusten mukaisesti omiin tietoihinsa verkkokirjaston kautta.
Asiakkaalla on pääsy erilaisiin loppukäyttäjistä koostettuihin raportteihin.

####  2.5.2. <a name='Rekisteridyntietojenpoistojaoikaisu'></a>Rekisteröidyn tietojen poisto ja oikaisu

Noudatamme EU:n tietosuoja-asetuksen määrittämiä vaatimuksia rekisteröidyn tietojen poistoon ja oikaisuun. Asiakkaalla on velvollisuus käsitellä rekisteröidyn omia tietoja koskevat pyynnöt. Järjestelmäasetuksista riippuen rekisteröity voi joko itse suoraan muuttaa omia tietojaan tai viimeistään asiakkaan henkilökunnan vahvistuksen kautta. Asiakkaan henkilökunta voi poistaa loppukäyttäjän tiedot järjestelmästä. Virheellisiä tietoja voi pyydettäessä korjata myös manuaalisesti.

####  2.5.3. <a name='Rekisteridyntietojenexport'></a>Rekisteröidyn tietojen export

Asiakkaan tietoja voi tuoda järjestelmästä myös eräajona. Järjestelmässä on useita eri tiedontuontiformaatteja kuten csv, json ja html.

####  2.5.4. <a name='Suostumustenjakieltojenhallinta'></a>Suostumusten ja kieltojen hallinta

Loppukäyttäjä käyttääkseen kirjaston palveluja suostuu kirjaston käyttösääntöihin. Asiakkaalle voidaan lisätä erilaisia kieltoja sekä rajata käyttöoikeuksia erilaisiin osa-alueisiin, kuten lainaamiseen tai omatoimikirjaston käyttöön tietyssä toimipisteessä. Asiakas vastaa itse siitä, että kiellot ja rajoitteet ovat asetettu oikein ja että ne ovat ajan tasalla.

####  2.5.5. <a name='Henkiltietojenksittelynminimointiml.vanhentuneidentietojenpoisto'></a>Henkilötietojen käsittelyn minimointi (ml. vanhentuneiden tietojen poisto)

Rekisterin pito on asiakkaan vastuulla.
Järjestelmään jää merkintä aina kun asiakkaan tietoja käsitellään.
Järjestelmän kautta on mahdollista kerätä tietoa vanhentuneista ja harvoin asioivista loppukäyttäjistä ja tehdä sen avulla asiakasrekisterin siivousta.

####  2.5.6. <a name='Henkiltietojenanonymisointipseudonymisointi'></a>Henkilötietojen anonymisointi/pseudonymisointi

ks. yllä

###  2.6. <a name='Jrjestelmnkyttvaltuushallinnanperiaatteet:'></a> Järjestelmän käyttövaltuushallinnan periaatteet:

####  2.6.1. <a name='henkilkohtaisetkyttjtunnukset'></a>henkilökohtaiset käyttäjätunnukset

Suosittelemme aina asiakasta käyttämään henkilökohtaisia käyttäjätunnuksia työntekijöilleen. Tunnukset vanhenevat määräajan kuluttua ja samalla päivitetään tiedot ja tunnisteet.
Palvelimen huoltotöitä varten järjestelmän ylläpitäjillä on henkilökohtaiset tunnukset.

####  2.6.2. <a name='Salasanamritykset'></a>Salasanamääritykset

Salasanan vaatimukset voi asettaa järjestelmäasetuksessa.
Salasanat tallennetaan tietokantaan salatussa muodossa, käyttäen Blowfish-salainta,
https://github.com/Koha-Community/Koha/blob/master/Koha/AuthUtils.pm#L68

###  2.7. <a name='Lokit:'></a> Lokit:

####  2.7.1. <a name='Kirjautumislokiadmin-kyttloki'></a>Kirjautumisloki, admin-käyttöloki

koha.sessions -tietokantataulussa

####  2.7.2. <a name='Henkiltietojenksittelynlokituskyttloki'></a>Henkilötietojen käsittelyn lokitus (käyttöloki)

koha.action_logs-tietokantataulussa

####  2.7.3. <a name='Lokiraportit'></a>Lokiraportit

Ei kerätä raportteja lokeista.

####  2.7.4. <a name='Lokiensuojaus'></a>Lokien suojaus

Palvelusopimuksen mukaan voidaan käytettää ulkoista lokituspalvelinta, jonne kootaan lokeja useasta eri ympäristöstä. Tämä suojaa lokeja STRIDE:ltä.

###  2.8. <a name='Varmuuskopiointi'></a> Varmuuskopiointi

Varmuuskopio sisältää lokit ja tietokannan sisällön, eli kaiken datan, jota asiakas järjestelmään tuottaa.
Vastaamme varmuuskopioiden säilyttämisestä 5 vuotta, tai siihen asti kun sopimus on voimassa + 6kk.
Sopimuksen mukaan voimme tarjota reaaliaikaista varmuuskopiointia ja palautusta.
Varmuuskopiot ovat .tar.gz-paketteja, eikä meillä ole toistaiseksi pienen datamäärän takia tarvetta inkrementaalisille varmuuskopioille.

###  2.9. <a name='Toipumissuunnitelma'></a> Toipumissuunnitelma

Keskuspalvelimelta voidaan palauttaa ja uudelleenrakentaa kaikki ympäristöt versionhallinnassa olevista konfiguraatioista ja varmuuskopiopalvelimella olevista varmuuskopioista.
Keskuspalvelin voidaan palauttaa varmuuskopioista ja versionhallinnasta.
Samoja idempotenttisia ohjelmia käytetään päivityksiin, asentamiseen ja ylläpitämiseen, jolloin luotto omaan automaatioon pysyy korkeana.
Jos infrastruktuurin tarjoaja ei pysty tarjoamaan luotettavaa palvelua, Hypernova Oy:lla on oikeus vaihtaa infrastruktuurin toimittajaa.

###  2.10. <a name='Tietoturvapivitykset'></a> Tietoturvapäivitykset

ks. yllä.

###  2.11. <a name='Tietoturvakuvaus'></a> Tietoturvakuvaus

Käytetään salaimia ja protokollia että saadaan ssllabs:n SSL-testissä aina täydet pisteet. Ohjeistetaan asiakasta ohjeistamaan loppukäyttäjää pitämään selaimet päivitettyinä.

####  2.11.1. <a name='Salaukset'></a> Salaukset

RSA, EECDH+AESGCM:EDH+AESGCM

####  2.11.2. <a name='Salasanansuojaus'></a> Salasanan suojaus

Blowfish

####  2.11.3. <a name='Yhteyksiensuojausverkkoliikenteentietoturva'></a> Yhteyksien suojaus / verkkoliikenteen tietoturva

TLS1.3

####  2.11.4. <a name='Tietojensuojaukset'></a> Tietojen suojaukset

- Varmuuskopiot salataan AES-512 algoritmilla
- Verkkoliikenne salataan aina TLS 1.3 -protokollalla

####  2.11.5. <a name='Tietojensytnsuojaus'></a> Tietojen syötön suojaus

SSL

####  2.11.6. <a name='Datamallientietoturva'></a> Datamallien tietoturva

-
