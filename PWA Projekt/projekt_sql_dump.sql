-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 07:22 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--
CREATE DATABASE IF NOT EXISTS `projekt` DEFAULT CHARACTER SET cp1250 COLLATE cp1250_croatian_ci;
USE `projekt`;

-- --------------------------------------------------------

--
-- Table structure for table `clanci`
--

CREATE TABLE `clanci` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(100) COLLATE utf8_croatian_ci NOT NULL,
  `sazetak` text COLLATE utf8_croatian_ci NOT NULL,
  `tekst` text COLLATE utf8_croatian_ci NOT NULL,
  `slika` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `kategorija` varchar(64) COLLATE utf8_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL,
  `objavio` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `clanci`
--

INSERT INTO `clanci` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`, `objavio`) VALUES
(7, '10.06.2021.', 'Bjelica o Miérezu poručio: Ako Petko vrijedi 20 milijuna, pa zašto on ne bi 10?', 'Takuma Asano jedan je od 50 igrača koje smo gledali. Dobar je, ali nam ne treba, rekao je trener Osijeka i o potencijalnom dolasku Caktaša kaže..', 'Nenad Bjelica aktivan je ovo ljeto uoči prvih pravih priprema s Osijekom. Stižu mu Amer Hiroš, Slavko Bralić i Šime Gržan, a otkupio je ugovor Ramóna Miéreza.\r\n\r\nU međuvremenu radi na drugim pojačanjima, prije svega Mijom Caktašem, donedavnim kapetanom Hajduka koji čeka istek ugovora 30. lipnja.\r\n\r\n- Nitko nam se nije nudio, nego smo Caktaša mi zvali. Slobodan je, a igrač takvog profila nam treba i mi smo prvo njega zvali, razgovarali i poslali ponudu na koju sad čekamo odgovor - rekao je Bjelica za Glas Slavonije.\r\n\r\nJapanski reprezentativac Takuma Asano, bivši član Partizana s kojim je jednostrano raskinuo ugovor zbog neisplate plaća, ipak nije u užoj konkurenciji.\r\n\r\n- On je samo jedan od 50 igrača koje smo pogledali. Dobar je, ali nam trenutačno ne treba. Pa imamo šestoricu napadača - ističe Bjelko.\r\n\r\nVruća roba na tržištu svakako je Miérez kojega su \"bijelo-plavi\" kupili za 2,5 milijuna eura od Alavésa. Potpisao je do 2024., ali ne znači da ne može otići već ovo ljeto. Interesa ima, a Bjelica je izvjesio cijenu od 10 milijuna eura.\r\n\r\n- To na nogometnom tržištu nije velika cijena. Možda se čini mnogo za imidž Osijeka koji za taj novac dosad nije prodavao igrače, ali recimo da Miérez igra u Dinamu, za njega bi se tražilo i 25 milijuna. Ako Bruno Petković, koji je ove sezone u HNL-u zabio devet golova, vrijedi 20-ak milijuna eura, ne znam zašto mi za Miereza, koji je zabio 22, ne bismo tražili deset - kaže Bjelica.', 'untitled-design-1_3SH8ZIX.jpg', 'sport', 0, 'Loki'),
(11, '10.06.2021.', 'USKOK objavio detalje: Mamić je sucima dao najmanje 370 tisuća eura, traže istražni zatvor', 'Hrvatska bi od BiH mogla tražiti izručenje Zdravka Mamića obzirom da mu je izrečen istražni zatvor, što je preduvjet za raspisivanje tjeralice', 'USKOK je objavio za što tereti tri suca osječkog Županijskog suda koji su uhićeni u srijedu te ispitani. Nakon izvida provedenih u suradnji sa Samostalnim sektorom za financijske istrage Porezne uprave Ministarstva financija, na temelju kaznene prijave PNUSKOK-a, donijeli su rješenje o provođenju istrage protiv šestorice hrvatskih državljana (1965., 1958., 1954., 1959., 1971., 1961.) od kojih trojica uz hrvatsko državljanstvo imaju i državljanstvo Bosne i Hercegovine, zbog osnovane sumnje na počinjenje kaznenih djela primanja mita, davanja mita, trgovanja utjecajem te davanja mita za trgovanje utjecajem, stoji u priopćenju DORH-a.\r\n\r\nOsnovano se sumnja da je Darko Krušlin, prvostupanjski sudac Odjela za suzbijanje korupcije i organiziranog kriminaliteta Županijskog suda u Osijeku, 22. studenoga 2016. u Zagrebu, iako je znao da je u to vrijeme protiv  braće Mamić i više drugih optuženika bio u tijeku postupak pred istim sudom te da postoji izvjesnost da će biti određen predsjednikom raspravnog vijeća u navedenom postupku, došao u svečanu ložu stadiona u Maksimiru gdje se upoznao sa Zdravko Mamićem s kojim se nastavio družiti.', '24h_TV3f2hh.jpg', 'news', 0, 'Admin'),
(12, '10.06.2021.', '\'Vatreni\' neće klečati na Euru: \'U hrvatskoj tradiciji to nije simbol borbe protiv rasizma\'', 'Imamo situaciju da neki ljudi misle da je to politički stav s kojim se oni ne slažu, rekao je engleski izbornik o nezadovoljstvu engleskih navijača zbog klečanja uoči utakmica', 'Engleska će reprezentacija isto učiniti uoči otvaranja Eura s Hrvatskom, dok će \'vatreni\' takav oblik borbe za jednakosti ipak izbjeći jer nije obavezan po Uefinim protokolima, javlja Daily Mail.\r\n\r\nNo Uefa ipak moli navijače da se suzdržavaju od zviždanja tijekom te geste. Kažu kako imaju nultu toleranciju i da će dozvoliti svakome da kleči ako to želi.\r\n\r\nHrvatska A reprezentacija dosad još nije klečala uoči utakmice, dok je mlada reprezentacija to učinila u prvoj fazi U-21 Eura uoči utakmice s Englezima.\r\n\r\n- Hrvatski nogometni savez i svi reprezentativci uvijek i svugdje osuđuju sve oblike diskriminacije. Poštujemo pravo svakog pojedinca i organizacije da odabere svoj stav o rasizmu. HNS smatra da svi igrači imaju pravo na mišljenje o ovakvim temama i odabir kako će se prema tome postavljati. Naši reprezentativci su zajednički prije utakmice s Belgijom odabrali kako neće klečati te su mirnim stavom poštovali klečanje belgijskih kolega. HNS poštuje stav reprezentativaca i neće im nametati obvezu klečanja koja u hrvatskoj kulturi ionako ne predstavlja simbol borbe protiv rasizma i diskriminacije - rekao je glasnogovornik Tomislav Pacak.', 'dizajn-bez-naslova-2021-06-10t083907-992.jpg', 'sport', 0, 'Admin'),
(17, '11.06.2021.', 'Milanović o tipu koji ilegalno gradi na državnoj zemlji: Ponosan sam da me financira', 'ZORAN MILANOVIĆ danas je boravio u Sinju, gdje smo mu postavili pitanja vezana za bespravnu gradnju koju godinama financijer njegove kampanje i poslovni partner Stipe Latković.', 'Od uvale Vruja između Brela i Omiša napravio je jedan od najvećih simbola devastacije hrvatske obale i nerada državnih institucija, a baš prekjučer počeo je nalijevati beton preko bespravne ceste (za koju je ranije izdan nalog za rušenje!) duge oko dva kilometra, a koju je probio od magistrale do svojih luksuznih apartmana, gdje noćenja koštaju i po 1200 eura. \r\n\r\n\r\nDo sad je doneseno na desetak rješenja o uklanjanju bespravno sagrađenih objekata na Vruji. Stvar ide tako da se imućni poduzetnik blizak i Stipi Mesiću i Ivi Josipoviću žali, pa se postupak vrati na početak i tako u nedogled. \r\n\r\nČak mu je i HDZ-ovska Splitsko-dalmatinska županija oduzela koncesiju na pomorskom dobru. Tad se dogodio pravi presedan, jer ta je odluka donesena jednoglasno. A bilo je to inspirirano prošlogodišnjim prosvjedom, na kojem su mještani iskazali nezadovoljstvo time što im je Latković zabranio pristup na plažu gdje su se i njihovi preci kupali. Doslovce je ogradio i zaključao, tako da joj mještani sada mogu pristupiti jedino brodicom i privezati se na neki od Latkovićevih ilegalnih (ili u međuvremenu legaliziranih) betonskih mulova.', '7b13aa39-b74c-46ed-a166-684598408212.jpg', 'news', 0, 'Admin'),
(18, '11.06.2021.', 'Gradovi: Ljudi će gledati Euro na trgovima! Stožer: E, baš neće...', 'Zagreb i Rijeka među gradovima su koji su organizirali su navijačko okupljanje na središnjem trgu za utakmicu Hrvatske i Engleske.', '- Pred nama je Europsko prvenstvo u nogometu, počela je i turistička sezona. Zato preporučujemo da se ne organiziraju javna događanja, posebice masovna gledanja utakmica. Odgovornost je na jedinicama lokalne i područne samouprave te županijskim stožerima, koji su dobili jasnu uputu o striktnom nadzoru takvih okupljanja, što uključuje i sankcioniranja po potrebi.\r\n\r\nBožinović je pozvao organizatore da zajednička gledanja utakmica po gradovima otkažu.\r\n\r\n- Turiste pozivamo da dođu jer smo sigurna zemlja, a onda ćemo slati svijetu sliku kako se tisuće ljudi okuplja po trgovima. Ne možemo se ponašati kao da epidemije nema, ne smijemo dopustiti da nam se pokvari epidemiološka slika.\r\n\r\n', 'untitled-design-33.jpg', 'sport', 0, 'Admin'),
(19, '11.06.2021.', 'Garcia novi trener Istre 1961, doveo pomoćnika Nizozemca', 'Nakon Manola Marqueza i Curra Torresa, Gonzalo Garcia treći je Španjolac koji će voditi Istru 1961, s njim je došao i Bob de Klerk koji je radio u omladinskoj školi Ajaxa', 'Španjolac Gonzalo Garcia (37) novi je trener prve momčadi NK Istre 1961, a donedavnom treneru Danijelu Jumiću ponudili su povratak na mjesto omladinske škole Istre, ali je on to odbio. Garcia je igračku karijeru započeo u SD Compostela te je nastavio u  Real Madridu B, Heerenveenu, Groningenu, Maccabi Tel Avivu, Anorthosisu.\r\n\r\nTrenersku karijeru započeo je u nizozemskom Twenteu kao pomoćni trener Marina Pušića u sezoni 2018/19. Odlaskom Pušića preuzo je momčad i vodio ju kroz sezonu 2019./20. \r\n\r\nTwente je vodio u 28 utakmica u kojima je upisao osam pobjeda, šest remija i 14 poraza uz gol razliku 38-51 te je sezonu okončao na 14. mjestu ljestvice nakon čega mu nije produžen ugovor.\r\n\r\nU Istru je s Garciom došao i Nizozemac Bob de Klerk koji je svojevremeno radio u omladinskoj školi Ajaxa, a donedavno je asistirao Franku de Boeru. ', 'garcia.jpg', 'sport', 0, 'Admin'),
(20, '11.06.2021.', 'Sjajna vijest za Hrvatsku: Šamanić se oporavio i igrat će kvalifikacije za OI u Splitu!', 'Luka Šamanić je prije mjesec dana slomio metakarpalnu kost i prognoze su govorile kako će mu za oporavak trebati više od mjesec dana. Ipak, oporavak je išao brže od očekivanoga', 'Krunoslav Simon, Dragan Bender i Luka Šamanić neće igrati u kvalifikacijama za OI zbog ozljede, Filip Krušlin je upitan, Roko Ukić ima problema s tetivama, pitanje je tko će od NBA igrača doći, nizao je na okupljanju probleme izbornik hrvatske košarkaške reprezentacije Veljko Mršić.\r\n\r\nS gomilom problema i s tek osmoricom košarkaša, reprezentacija je otputovala u Opatiju na pripreme. A tamo je izbornika dočekala zlata vrijedna vijest u ovome trenutku. Kako doznajemo, Luka Šamanić će ipak doći u reprezentaciju!\r\n\r\nKošarkaš San Antonio Spursa je prije mjesec dana u porazu od Brooklyna slomio metakarpalnu kost u šaci. Nije morao na operaciju i prognoze su bile oko četiri tjedna oporavka, a u tome trenutku je izgledalo kako Mršić neće računati na njega u kvalifikacijama. No, oporavak je išao puno brže od očekivanoga i kako doznajemo, četvorka Spursa će se ovih dana priključiti reprezentaciji.\r\n\r\nRuka nije na sto posto, ali kako Hrvatska nema puno izbora na njegovoj poziciji, Šamanić želi pomoći. Dragan Bender je otpao zbog ozljede, Dario Šarić i njegov Phoenix jure u finale Zapadne konferencije (2-0 protiv Denvera) i sve je izvjesnije kako ga nećemo vidjeti u kvalifikacijama, a košarkaš Spursa bi, u takvoj situaciji, bio ogroman plus za Veljka Mršića.', '2021-05-06t021318z-2143453985-.jpg', 'sport', 0, 'Admin'),
(21, '11.06.2021.', 'Nevjerojatan kraj u Bakuu: Max pri 300 km/h u ogradu, Lewis izletio, a slavio je - Checo Perez', 'Verstappen je trebao stići do još jedne pobjede u karijeri, treće ove sezone, ali puno kontroverzi prolomilo se nakon odustajanja. A iznenadio je - otpisani Vettel', 'Utrka za Veliku nagradu Azerbajdžana u Bakuu nije mogla pružiti vBritanac je nakon ponovljenog starta u posljednjem krugu krenuo u napad na, tada vodećeg, Checu Pereza iako je svojima u boksu sugerirao da je utrka maraton, a ne sprint pa se nije očekivalo da će napraviti nešto luđački. Ipak, nije stigao kočiti pa je umjesto zavoja produžio izvan staze i pao na začelje te ostao bez bodova.\r\n\r\n- Tako mi je žao, dečki - rekao je Hamilton na timski radio.\r\n\r\nUtrku punu preokreta i izmjena na stazi iskoristio je Checo Perez u Red Bullu, koji je stigao do druge pobjede u karijeri u Formuli 1 nakon prošlogodišnjeg trijumfa u Bahreinu. Više nego što jest i po završetku je postala momentalni klasik.', 'dizajn-bez-naslova_8w1EI8n.jpg', 'sport', 0, 'Admin'),
(22, '11.06.2021.', 'Čilić, Modrić, Mektić, Mandžo i Pavić igrat će za djecu Petrinje', 'Ono zbog čega sam posebno sretan je to što Gem Set Hrvatska stiže u Petrinju za koju, nakon razornih potresa, svi imamo posebne osjećaje, rekao je Čilić.', 'Marin Čilić, Luka Modrić, Mario Mandžukić, Mate Pavić i Nikola Mektić prvi su potvrđeni igrači koji će za mjesec dan zaigrati najvažniji teniski turnir godine. \r\n\r\nNaime, Zaklada Marin Čilić organizira drugo izdanje humanitarnog i sportskog spektakla Gem Set Hrvatska, koji će se 12. i 13. srpnja 2021. godine održati na dvije lokacije u Petrinji.\r\n\r\nCilj je okupiti najveće zvijezde hrvatskog sporta te nastaviti gradnju multifunkcionalnog sportskog igrališta za djecu u Petrinji. \r\n\r\n- Neopisivo mi je drago da nakon prošle godine i pandemije, koja je zaustavila gotovo sva događanja, ponovno imamo priliku organizirati ovaj spektakl. Ono zbog čega sam posebno sretan je to što Gem Set Hrvatska stiže u Petrinju za koju, nakon razornih potresa, svi imamo posebne osjećaje. Kolege sportaši također su presretni jer će zaigrati upravo tamo ali i što će svojim dolaskom barem malo pomoći tom kraju i unijeti vedrinu u teškom periodu obnove i povratka u svoje domove - izjavio je Marin Čilić te je dodao: \r\n\r\n- Nadamo se vrhunskoj zabavi i lijepom druženju koje će iza sebe, u trajno vlasništvo mladim Petrinjcima, ostaviti dva moderna sportska igrališta. Pozivam sve da se uključe i da podrže ovu lijepu priču kako bismo još jednom zajedno, pokazali stanovništvu Sisačko – moslavačke županije da smo i dalje tu za njih.', 'images-2021-23-pxl-120619-25009086.jpg', 'sport', 0, 'Admin'),
(24, '11.06.2021.', 'Petrinju i Sisak probudio potres jačine 3.5 po Richteru: \'Čula se eksplozija, grede su škripale\'', 'Mnogi stanovnici s tog područja javili su se na aplikaciju EMSC i svjedočili kako se potres dosta jako osjetio, te da je podrhtavanje dosta trajalo', 'Noćas u 1.23 područje Petrinje i Siska zatresao je potres jačine 3.5 po Richteru, javlja naša Seizmološka služba. Epicentar je bio 8 kilometara južno od Petrinje i 14 kilometara od Siska.\r\n\r\nMnogi stanovnici s tog područja javili su se na aplikaciju EMSC i svjedočili kako se potres dosta jako osjetio, te da je podrhtavanje dosta trajalo.\r\n\r\n\"Duga tutnjava, poslije podrhtavanje\", \"Nekoliko sekundi grmljavina i jača vibracija\", \"Neugodan i malo dulji. Probudio nas\", \"Streslo kao eksplozija\", \"Dosta jak udar i ljuljanje 5-6 sekundi\", \"Kuća se zatresla\", \"Probudila me glasna eksplozija i jako je dugo ljuljalo\", \"Zvuk jako čudan i užasan, mislio sam da će puno jače zatresti po zvuku koji je dolazio\", \"Zabrujalo, zarondalo, grede zaškripale, ali nije ništa palo\", samo su neke od izjava stanovnika Banije koji su osjetili potres.\r\n\r\nKako javlja EMSC, potres je bio na dubini od dva kilometra.', 'siska_YND7Iia.png', 'news', 0, 'Admin'),
(25, '11.06.2021.', 'Slovencima propao romantični vikend u Opatiji: \'Stavili su me izolaciju, a cijepljen sam\'', 'Iako sam dva puta cijepljen, hrvatski policajac poslao me u samoizolaciju na graničnom prijelazu u Jelšanima. Od romantičnog vikenda ostala mu je samo subota popodne\r\n', 'Krajem travnja prvi sam put cijepljen AstraZenecom. U petak, kada smo supruga i ja za vikend krenuli u hotel u Opatiji, cijepljen sam drugi put. Bez testa već idu i svi koji su samo jednom cijepljeni, rekao je Borut za zurnal24.\r\n\r\nUredba kaže da u Hrvatsku možete ići bez testa već 22. dana nakon prve doze (maksimalno 42 dana nakon prve doze, a u slučaju AstraZenece najviše 84 dana nakon prve doze). No, uredba također kaže da nakon druge doze mora proći 14 dana.\r\n\r\nStoga, da nije cijepljen drugi put ispunio bi uvjete jer je prošlo manje od 84 dana nakon prve doze, ali budući da je drugi put cijepljen, službenik na granici je odlučio da je podložan pravilu o dvije doze, a tada treba proći 14 dana od druge doze.\r\n\r\n- Ovo je potpuna glupost jer zaštita koju sam dobio s prvom dozom nije nestala s drugim cijepljenjem - pokušao je objasniti Borut, no policajac mu je odgovorio da nije liječnik i donio rješenje o samoizolaciji.\r\n\r\nO svemu se oglasio i MUP.\r\n\r\n- Ako je osoba cijepljena s dvije doze, a od druge doze prošlo je manje od 14 dana, osoba ne smije dostaviti potvrdu da je prošlo više od 22 dana i manje od 84 dana od prve doze (u slučaju AstraZenece, u slučaju Pfizera i Moderne u trajanju od najviše 42 dana - odgovorili su iz MUP-a.\r\n\r\nAko je od druge doze prošlo manje od 14 dana, a od prve doze više od 42 dana, ili više od 84 dana u slučaju AstraZenece, osoba na granici mora pokazati negativan test.\r\n\r\n- U petak smo večerali u hotelu, iako ako sad malo razmislim, vjerojatno uopće nisam smio jesti u blagovaonici. U subotu sam morao na test, koji se može napraviti samo od osam do deset. Bilo je oko 50 ljudi ispred mene, radila je samo jedna žena koja je uzimala briseve, tipkala rezultate, izdavala račune i vraćala novac. Bilo nas je toliko da je morala produžiti radno vrijeme - rekao je Borut.\r\n\r\nOd romantičnog vikenda ostala mu je samo subota popodne, a u nedjelju ujutro morali su se vratiti.', '18180564.jpg', 'news', 0, 'Admin'),
(26, '11.06.2021.', 'NATO: Hrvatska je premašila 2 posto BDP-a za obranu, prva je u izdvajanjima za opremu', 'NATO je u petak, uoči sastanka na vrhu čelnika 30 zemalja članica, objavio najnovije podatke s procjenama o izdvajanju za obranu po državama članicama', 'Kupnjom 12 višenamjenskih borbenih zrakoplova hrvatski vojni proračun ove će godine prvi put premašiti dva posto BDP-a, a po izdvajanju za opremu i modernizaciju Hrvatska je skočila na prvo mjesto među 30 članica NATO-a, s 10,3 posto u 2020. na 43,5 posto vojnog proračuna za ovu godinu.\r\n\r\nNATO je u petak, uoči sastanka na vrhu čelnika 30 zemalja članica, objavio najnovije podatke s procjenama o izdvajanju za obranu po državama članicama.\r\n\r\nZbog različitih podataka iz raznih izvora, različitih procjena rasta BDP-a te u nacionalnim definicijama troškova za obranu i NATO-ovoj definiciji, podaci koje Savez objavljuje mogu se razlikovati od brojeva koje objavljuju nacionalne vlasti.\r\n\r\nNATO je 2014. zacrtao cilj da članice povećaju izdvajanje za obranu na najmanje dva posto svoga BDP-a do 2024., a od toga 20 posto za vojnu opremu.\r\n\r\nPrema godišnjem izvješću za 2020. koje je glavni tajnik Jens Stoltenberg objavio sredinom ožujka ove godine, prošle je godine cilj od dva posto ostvarilo 11 država članica.\r\n\r\nNajveći udio svoga BDP-a izdvajaju Sjedinjene Države, 3,73 posto, Grčka (2,6 posto), Estonija (2,3 posto) i Velika Britanija (2,32 posto).\r\n\r\nPo tim podacima, Hrvatska je bila na 1,83 posto BDP-a. Najmanje izdvajaju Luksemburg s 0,57 posto, Belgija s 1,07 posto, Slovenija (1,10 posto) i Španjolska (1,17 posto).\r\n\r\nHrvatska je bila među članicama koje najmanje izdvajaju za vojnu opremu, bila je predzadnja s 10,3 posto i iza nje je samo Slovenija 4,6 posto.\r\n\r\nPrema podacima objavljenim u petak, hrvatski vojni proračun za 2021. skočio je na 2,79 posto BDP-a i Hrvatska je treća po izdvajanju za obranu. Prva je Grčka s 3,82 posto BDP-a, druge Sjedinjene Države s 3,52 posto.', 'pxl-020621-33110742.jpg', 'news', 0, 'Admin'),
(27, '11.06.2021.', 'Kultni benkovački sajam nakon sedam mjeseci otvorio - Ričard!', 'Na tisuće prodavača, kupaca i onih koji \'samo gledaju\' iz cijele Hrvatske okupilo se na Benkovačkom sajmu. Ova stoljetna tradicija rezervirana je za svakog 10-og u mjesecu.', 'Nakon sedam mjeseci što je bio otkazan zbog koronavirusa, na tisuće prodavača, kupaca i onih koji \'samo gledaju\' iz cijele Hrvatske okupilo se na Benkovačkom sajmu, u gradu Benkovcu u zadarskom zaleđu. Ova stoljetna tradicija, rezervirana za svakog 10-og u mjesecu, otkazana je u studenom zbog pogoršanja situacije u vezi pandemije koronavirusa.\r\n\r\nOtvorio ga je Enio Meštrović poznatiji kao Ričard, zadarski performer i osebujan kandidat za gradonačelnika Zadra koji je usprkos trećem mjestu priredio slavlje za pamćenje. Ričard je prodavao majice sa svojim likom, a na stolu se među ponudom mogla pronaći i boca Jure, jeftino vino po kojemu je poznat. Na štandu nije skidao osmijeh s lica, a mnogi obožavatelji fotografirali su se s njim.\r\n\r\nU ponudi se moglo pronaći baš sve - od hrane, odjeće, raznih kućanskih potrepština, životinja, cvijeća pa do poljoprivrednih strojeva. Takva bogata ponuda viđala se i na prošlim sajmovima.', 'pxl-100621-33203655.jpg', 'news', 0, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `user` varchar(255) COLLATE cp1250_croatian_ci NOT NULL,
  `ime` varchar(255) COLLATE cp1250_croatian_ci NOT NULL,
  `prezime` varchar(255) COLLATE cp1250_croatian_ci NOT NULL,
  `pass` varchar(255) COLLATE cp1250_croatian_ci NOT NULL,
  `admin` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `user`, `ime`, `prezime`, `pass`, `admin`) VALUES
(3, '1', '1', '1', '$2y$10$ca9ZTz.0gzvl7FE.k82AbesE5IhDY1JwNuNstyM5a.6eo4wArHG7C', 0),
(6, 'Admin', 'admin', 'admin', '$2y$10$jlSFDwRZDlX21kZRSdZNQOzCKhgKGv7zSq.dHv1kChhn3a.ph28ui', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanci`
--
ALTER TABLE `clanci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanci`
--
ALTER TABLE `clanci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
