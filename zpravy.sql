-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 13. zář 2021, 09:27
-- Verze serveru: 10.4.17-MariaDB
-- Verze PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `zpravy`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `article`
--

CREATE TABLE `article` (
  `ID` int(7) NOT NULL,
  `title` varchar(300) COLLATE utf8_czech_ci NOT NULL,
  `perex` text COLLATE utf8_czech_ci NOT NULL,
  `article` text COLLATE utf8_czech_ci NOT NULL,
  `id_kategorie` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp(),
  `delete_add` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `article`
--

INSERT INTO `article` (`ID`, `title`, `perex`, `article`, `id_kategorie`, `id_autor`, `datum`, `delete_add`) VALUES
(1, 'Opojení velkými čísly. Ve zpravodajství Češi nejvíc sledují počty nakažených', 'Za nejdůležitější informace o šíření nemoci covid-19 v Česku lidé považují celkové počty nakažených, aktuální přírůstky pozitivně testovaných a aktuální počty pozitivně testovaných. Důležitost těmto údajům přisuzuje od 42 do 32 procent Čechů.\r\n\r\n', '<p>\r\nVyplývá to z průzkumu National Pandemic Alarm, který provedla 18. až 21. září firma European National Panels.\r\n</p>\r\n<br>\r\n<p>\r\nPodle průzkumu devětadvacet procent občanů sleduje také počty hospitalizovaných a čtvrtina i počty zemřelých a reprodukční číslo. Žádné informace o koronaviru nesleduje čtvrtina Čechů.\r\n</p>\r\n<br>\r\n<p>\r\nV souvislosti s opětovným zaváděním protikoronavirových opatření v ČR si většina občanů (konkrétně 74 procent) myslí, že v boji s nákazou pomůže nošení roušek v hromadné dopravě. Téměř dvě třetiny veřejnosti považují za prospěšné i nošení roušek ve vnitřních prostorech. \r\n</p>\r\n<br>\r\n<p>\r\nNaproti tomu téměř tři pětiny si nemyslí, že pomůže zmírnění pravidel pro uvalení karantény, a podle poloviny ani zkrácení karantény na deset dní. Zároveň 46 procent lidí ale nesouhlasí s tím, že k řešení koronavirové situace pomůže nošení roušek ve školách.\r\n</p>\r\n<br>\r\n<p>\r\nNa rozpacích jsou Češi podle průzkumu u zákazu hromadných akcí, souhlasí s ním 45 procent občanů a stejný počet lidí s ním nesouhlasí. Mezi souhlasícími jsou častěji vysokoškoláci a lidé starší 55 let. Vedle toho lidé ve věku 25 až 34 let a středoškoláci se zákazem častěji nesouhlasí.\r\n</p>\r\n<br>\r\n<p>\r\nČtyřiačtyřicet procent dotázaných je však přesvědčeno, že po říjnových krajských volbách bude v Česku znovu jako na jaře omezen volný pohyb lidí. Dvě pětiny si totéž myslí o opětovném plošném uzavření škol.\r\n</p>\r\n<br>\r\n<p>\r\nPrůzkumy National Pandemic Alarm monitorují v pěti evropských zemích postoje a nálady společnosti s ohledem na šíření koronaviru a v Česku, Polsku, Maďarsku, Bulharsku a na Slovensku se jich účastní přes 100 tisíc lidí. \r\n</p>\r\n<br>\r\n<p>\r\nProjekt zaštiťuje společnost European National Panels, dceřiná firma agentur Nielsen Admosphere, NMS Market Research a STEM/MARK.\r\n</p>\r\n\r\n', 4, 1, '2020-09-24 13:51:20', NULL),
(2, 'Inspektoři zastavili na dálnici auto s nemocnými zvířaty, jelo do Německa\r\n', 'Inspektoři Státní veterinární správy ve spolupráci s celníky zastavili na dálnici D8 na Litoměřicku vůz přepravující psy a kočky z Bulharska do Německa. Některá zvířata byla zjevně nemocná. Zásilka navíc nesplňovala požadavky evropské legislativy.\r\n', '<p>\r\nSedm štěňat a šest koček je nyní v útulku. Podle mluvčího Státní veterinární správy (SVS) Petra Vorlíčka byl jeden pes apatický, ležel na boku a nebyl schopen stát a samostatně se pohybovat.\r\n</p>\r\n<br>\r\n<p>\r\n„Další pes vykazoval známky anaplasmosy, tedy infekce přenášené klíšťaty, a jedna kočka měla příznaky hnisavého zánětu očí. Nemocná zvířata jsou v současné době léčena,“ uvedl Vorlíček.\r\n</p>\r\n<br>\r\n<p>\r\nNa transport takového množství zvířat pohlíží legislativa Evropské unie jako na takzvaný obchodní přesun. Všechna zvířata sice měla pasy a byla označena čipem, v některých dokladech však chyběl údaj o majiteli zvířete. K zásilce nebylo vystaveno ani povinné veterinární osvědčení pro přesun do Německa.\r\n</p>\r\n<br>\r\n<p>\r\n„Organizátoři přepravy uvedli, že všechna zvířata byla v Bulharsku zachráněna, léčena a následně byl domluven jejich přesun do Německa k novým majitelům. I při takových akcích je však nutné dodržovat všechny legislativní požadavky a pravidla, které jednak brání možnému rozšíření nákaz, ale také stanovují vhodné podmínky zvířat při přepravě,“ řekl Vorlíček.\r\n</p>\r\n<br>\r\n<p>\r\nV souvislosti s tím dodal, že nákazová situace v jednotlivých státech se může poměrně výrazně lišit. „Například Bulharsko není na rozdíl od Česka či Německa prosté vztekliny,“ podotkl Vorlíček.\r\n</p>\r\n<br>\r\n<p>\r\nPřepravci nyní hrozí až milionová sankce. Možná se nevyhne ani postihu za týrání zvířat při přepravě.\r\n</p>\r\n<br>\r\n<p>\r\n„Proto SVS rozhodla, že zadržená zvířata budou vydána novým majitelům až poté, co se zlepší jejich zdravotní stav, který umožní přepravu, budou doplněny veškeré chybějící dokumenty k zásilce a ověřena povinná vakcinace proti vzteklině,“ uvedl ústřední ředitel SVS Zbyněk Semerád.\r\n</p>\r\n', 2, 2, '2020-09-24 13:55:50', NULL),
(3, 'Zbrojní průkaz zřejmě zůstane na deset let, po pěti letech má být přezkum\r\n', 'Lidem, kteří mají zbrojní průkaz, zůstane zřejmě na deset let a jeho platnost se jim nezkrátí na polovinu. Po pěti letech by ale měl následovat zdravotní přezkum. Poslanci výboru pro bezpečnost podpořili novelu zákona o střelných zbraních a novelu zákona o nakládání se zbraněmi. Sněmovna jako celek by ji měla projednávat příští týden ve středu.\r\n\r\n', '<p>\r\nPoslanci se zabývali dvěma návrhy, které se týkají držení zbraní, poslaneckým a vládním, který reaguje na nutnost začlenit do českého práva směrnici Evropské unie. Bez jejího začlenění do českého práva by Česku hrozily sankce.\r\n</p>\r\n<br>\r\n<p>\r\n„Ministerstvo vnitra nad rámec té směrnice navrhovalo zkrátit lhůtu na zbrojní průkaz. My jsme navrhli udržet tu lhůtu, ale dát po pěti letech zdravotní přezkum,“ řekla iDNES.cz členka výboru pro bezpečnost, poslankyně ODS Jana Černochová. Ministr vnitra Jan Hamáček už dříve deklaroval, že s touto úpravou nemá problém.\r\n</p>\r\n<br>\r\n<p>\r\nVýbor podpořil i možnost používat tlumiče hluku výstřelu a zaměřovače pro noční vidění, které nyní patří mezi zakázané doplňky zbraní, takzvané noktovizory.\r\n</p>\r\n<br>\r\n<p>    \r\nBude moci rodič učit střílet dítě, jemuž není 10 let?\r\n</p>\r\n<br>\r\n<p>\r\nČlenové výboru podpořili pozměňovací návrh poslance za ANO Pavla Růžičky, aby úřady, do nichž je vstup se zbraní zakázán, musely mít trezory pro jejich uložení.\r\n</p>\r\n<br>\r\n<p>\r\nNepodpořili návrh, podle kterého by se i veřejně na střelnici mohly učit zacházet se zbraní děti mladší deseti let, a to kdybu výuku prováděl rodič.\r\n</p>\r\n<br>\r\n<p>\r\nPodporu nezískal návrh poslance za ANO Jiřího Maška na „permanentní amnestii“.  Jde o to, že ten, kdo by tvrdil, že našel neregistrovanou zbraň třeba někde na půdě, nebo v parku, si ji mohl, když je držitelem zbrojního průkazu, registrovat a tím ji legalizovat. To nepodpořil ani výbor, ale ani přítomní zástupci ministerstva vnitra.\r\n</p>\r\n<br>\r\n<p>\r\n„Nemám pocit, že by to ohrozilo přijetí zákonu jako celku,“  hájil svůj návrh před poslanci Mašek. „Neměli bychom jít cestou takového rozvolňování, aby každý, koho chytne policejní orgán s nelegálně drženou zbraní u sebe, mohl říci já jsem právě šel na policejní orgán ji odevzdat a nahlásit,“ oponovala mu Černochová. Stačí podle ní, když „amnestie“ pro odevzdání nelegálně držené zbraně bude jen dvakrát do roka.\r\n</p>\r\n<br>\r\n<p>\r\nDržitelé zbrojních průkazů se budou moci také dobrovolně přihlásit k tomu, aby tvořili zálohu pro případnou potřebu, která bude ze strany státu.\r\n</p>', 5, 3, '2020-09-24 13:58:33', NULL),
(4, 'V netransparentnosti volební kampaně jsou premianti ANO a SPD, míní TI\r\n\r\n', 'Nejméně transparentní kampaň ke krajským volbám mají podle organizace Transparency International hnutí ANO a SPD a karlovarská koalice ODS a KDU-ČSL s podporou Soukromníků. Nejlépe si vedli Piráti, plzeňská koalice KDU-ČSL, ADS a Nestraníků a ústečtí Spojenci pro kraj.\r\n\r\n', '<p>\r\n„Strany obecně poskytují velmi vágní informace o plánovaných rozpočtech na kampaň. Neinformují o profilech na sociálních sítích,“ uvádí se v hodnocení, které ve čtvrtek zveřejnila česká pobočka TI na svém webu.\r\n</p>\r\n<br>\r\n<p>\r\n„Zakrývají vztahy k mediálním a PR agenturám. Nepublikují seznamy dárců dříve, než požaduje zákon. Dokonce i tak jednoduchá věc, jako je přehled vlastních předvolebních akcí, je pro mnohé problém,“ dodává.\r\n</p>\r\n<br>\r\n<p>\r\nTI strany oznámkovala jako ve škole. Zcela propadlo hnutí SPD, které podle TI oznámilo pouze celkovou částku na kampaň ve výši 20 milionů korun, nikoli jednotlivé výdaje, dárce, volební tým, najaté agentury, plán předvolebních akcí či volební profily na sociálních sítích. Podobně na tom bylo ANO, které chtělo do kampaně investovat 45 milionů korun. Od čisté „pětky“ ho uchránily informace o lidech a agenturách, které se na strategii a marketingu kampaně podílely.\r\n</p>\r\n<br>\r\n<p>\r\nPiráti dostali od TI známku 1,6. Na výbornou organizace ohodnotila jejich seznam dárců, volebních akcí a informace o rozpočtu. Chyběl ale seznam externích spolupracovníků a agentur. Z dalších parlamentních stran si nejlépe vedlo hnutí STAN (známka 3,6) a KSČM (známka 3,8). Horší známku než průměrnou čtyřku dostaly ODS a Trikolóra (shodně 4,2), KDU-ČSL (4,4) a ČSSD (4,6). Na TOP 09, která kandiduje v různých koalicích, ocenila TI její veřejný účet a seznam dárců, čímž strana napomohla k transparentnosti i svým liknavějším koaličním partnerům.\r\n</p>\r\n<br>\r\n<p>\r\nMezi největší nešvary letos podle organizace patřilo „manipulativní vedení kampaní“. Obhájci krajských pozic si podle TI v řadě případů zaplatily PR agentury, aby v médiích publikovaly reklamní články, které zdánlivě informují o běžné krajské agendě.\r\n</p>\r\n<br>\r\n<p>\r\n„Pokud tuto práci následně jednoznačně podstrkují v kampani jako svou propagaci a propagaci strany, jde o privatizaci veřejné funkce,“ uvedl ředitel TI David Ondráčka.\r\n</p>\r\n<br>\r\n<p>\r\nOrganizace hodnotila kampaně celkem tří desítek uskupení, a to velkých stran i jejich krajských koalic a úspěšných regionálních uskupení. Trendem v transparentnosti kampaně se podle vedoucího projektu transparentnivolby.cz Ondřeje Cakla stalo „lajdáctví“. Většina stran se podle něj ani nenamáhala použít aplikace na zveřejňování informací o rozpočtu, dárcích nebo personálním vedení kampaně. \r\n</p>\r\n', 1, 4, '2020-09-24 14:00:53', NULL),
(5, 'Kdo se před covidem chránil nejvíc, ten to odnesl jako první, řekl šéf Motola', 'Lidé, kteří se před nákazou covidem-19 chránili nejvíce, to odnesli jako první, prohlásil v Rozstřelu šéf Fakultní nemocnice v Motole Miloslav Ludvík. Nakažených pacientů mají v nemocnici jen málo, nejmladším je novorozené dítě. Ludvík také uvedl, že se italského scénáře v Praze neobává, jeho nemocnice je prý schopná nával pacientů ustát.\r\n', '<p>\r\nV Rozstřelu ředitel pražské nemocnice zdůraznil, že covid je zapotřebí brát s nadhledem, nebát se ho, ale zároveň neztrácet před ním respekt. Upozornil, že lépe vše zvládají dobře naladění jedinci, ne ti, kteří panikaří. Ti, kteří se snažili se před epidemií nejvíce ochránit, se nakonec nakazili jako první, dodal v nadsázce.\r\n</p>\r\n<br>\r\n<p>\r\n„Ve zdravém těle, zdravý duch. Lidé, kteří žijí normálně, kteří nepodléhají hysterii, na tom bývají nejlépe,“ prohlásil šéf Motola.\r\n</p>\r\n<br>\r\n<p>\r\nLudvík hovořil i o novém ministru zdravotnictví, s Romanem Prymulou se mu prý bude spolupracovat lépe, než s Adamem Vojtěchem. Je to muž na správném místě, myslí si Ludvík.\r\n</p>\r\n<br>\r\n<p>\r\n„S Romanem Prymulou se známe velmi dlouho, byli jsme oba ředitelé fakultních nemocnic. Lidská chemie tu bude fungovat lépe. S Adamem Vojtěchem jsme na tom byli věkově poměrně rozdílně, také jeho kariérní dráha byla jiná než u mě,“ řekl Ludvík na úvod Rozstřelu.\r\n</p>\r\n<br>\r\n<p>\r\nPrymula má podle něj velkou výhodu, protože má zkušenosti s řízením nemocnice, prací na ministerstvu, ale i s výzkumem. „Teď toho může využít, je správný muž na správném místě. Nebojí se realistických rozhodnutí, drsňák to ale úplně není. On umí říct, jak se věci mají.“\r\n</p>\r\n<br>\r\n<p>\r\nK rostoucímu počtu nakažených v Česku, kdy se i plní kapacity nemocnic, Ludvík řekl, že jeho nemocnice je schopná to ustát. Ihned může vyhradit pět desítek lůžek. Aby leželi pacienti na zemi jako v nejhorším období epidemie v Itálie podle něho nehrozí.\r\n</p>\r\n<br>\r\n<p>\r\nV celé republice bylo podle údajů ze začátku tohoto týdne na odděleních JIP a ARO volných 957 lůžek z celkových 3 872. Jen 246 z nich je přitom určeno pro pacienty s covidem-19. Nejhorší je situace v Praze, kde zůstává nezaplněno jen 14 procent těchto lůžek. „Dnes na nárůstu nakažených vidíme, co se v populaci stalo před sedmi až deseti dny. Musíme tu křivku zploštit, nesmíme totiž zahltit nemocnice,“ tvrdí Ludvík.\r\n</p>\r\n<br>\r\n<p>\r\nNejmladší pacient s virem je novorozenec\r\n</p>\r\n<br>\r\n<p>\r\nItalský scénář podle Ludvíka v Praze nehrozí. „Italské zdravotnictví je extrémně regionální. A to jsou nemocnice na úrovni našich krajských. A oni tam navezli lidi, kteří nemocniční péči třeba vůbec nepotřebovali,“ vidí Ludvík hlavní problém zaplnění nemocnic v Itálii.\r\n</p>\r\n<br>\r\n<p>\r\nNejmladším pozitivním pacientem v Motole je novorozenec. „Ten ale nemá žádné potíže. Nejvíce je pacientů máme s rokem narození kolem konce druhé světové války. Nejstarší je pacientka s rokem narození 1927, tu ale už budeme brzy propouštět,“ řekl Ludvík.\r\n</p>\r\n<br>\r\n<p>\r\nMladší pacienti prý nemají problémy, pokud nejsou obézní nebo nemají jiné rizikové faktory. „Lékaři z IKEMU říkají, že lidé musejí splňovat dva rizikové faktory, aby měli vážnější průběh nemoci. U nás mají obézní lidé přes 130 kilogramů.“\r\n</p>\r\n<br>\r\n<p>\r\nPostu ředitele Motola by se nevzdal\r\n</p>\r\n<br>\r\n<p>\r\nLudvík do Senátu kandiduje na Praze 5. Jedním z jeho hlavních témat jeho kampaně je i problém zápachu z továrny na granule, která sídlí nedaleko pražského Zličína. „Lidé se nemají jak bránit. Podle zákona nelze posoudit, jestli to smrdí hodně nebo málo. Když ta fabrika vydělává, měla by investovat i do opatření proti úniku zápachu,“ tvrdí Ludvík. V případě zvolení by v Senátu předložil návrh zákona, který by majitele reguloval.\r\n</p>\r\n<br>\r\n<p>\r\nZa hlavní soupeře o křeslo senátora považuje obhájce mandátu Václava Lásku a bývalého senátora Michaela Žantovského. „V případě zvolení neopustím funkci ředitele Motola. Senát funguje dva, tři dny v měsíci. Můžete přitom normálně pracovat, spousta senátorů jsou zároveň lékaři nebo starostové,“ oznámil v Rozstřelu.\r\n</p>\r\n<br>\r\n<p>\r\nŘeditelem Motola se Ludvík stal v roce 2000. Od roku 2002 zasedá v Zastupitelstvu hlavního města Prahy, v komunálních volbách 2014 neúspěšně kandidoval na pražského primátora. Poslední listopadový den roku 2016 ho prezident jmenoval ministrem zdravotnictví, ve vládě nahradil Svatopluka Němečka. Do sociální demokracie vstoupil už v 90. letech.\r\n</p>\r\n<br>\r\n<p>\r\nS Ludvíkem je spojeno i několik kauz. Na internet se dostal třeba údajný záznam jeho konverzace s personálem, v němž nabádal k přednostní péči o prominentní pacienty a vyjadřoval se o předem rozhodnutých výběrových řízeních slovy „Bez protekce a fingovaných tendrů to nejde.“ Záznam označil za sestříhaný a zmanipulovaný.\r\n</p>\r\n\r\n', 3, 5, '2020-09-24 14:03:56', NULL),
(6, 'Domlouval jsem prodej dolu Číňanům, uznal Mynář. Odměnu 500 milionů popřel\r\n', 'Vedoucí Kanceláře prezidenta republiky Vratislav Mynář přiznal, že zprostředkovával prodej hlubinného dolu na Opavsku Číňanům. V pořadu Rozstřel nicméně popřel, že by za to měl obdržet odměnu 500 milionů korun. Mynář promluvil i o schůzce s čínským velvyslancem, na které ho prý ujišťoval, že prezident nesouhlasí s cestou Miloše Vystrčila na Tchaj-wan.\r\n', '<p>\r\nInformaci zveřejnil někdejší Mynářův obchodní spolupracovník Radim Masný, majitel břidličného Dolu Radim ve Svatoňovicích v Moravskoslezském kraji. Mynář obvinil Masného ze lži.\r\n</p>\r\n<br>\r\n<p>\r\n„Ano, domlouval jsem prodej dolu se dvěma čínskými společnostmi. Byl jsem požádán akcionáři toho dolu, abych to zprostředkoval. V poslední fázi to ale selhalo, protože představitelé dolu měli v účetnictví a ve všech dokladech velký nepořádek, takže to bylo nerealizovatelné,“ řekl Mynář. Čínská společnost prý za důl nabídla 40 milionů korun.\r\n</p>\r\n<br>\r\n<p>\r\nNásledně Mynář promluvil o schůzce s čínským velvyslancem po návštěvě předsedy Senátu Miloše Vystrčila na Tchaj-wanu. „Požádal jsem ho, aby se snažil zabránit veškerým negativním dopadům senátní cesty. Pan velvyslanec mi řekl, že nedokáže odhadnout komplexní reakci, ale účastníci cesty budou mít s velkou pravděpodobností zakázán vstup na území Číny a firmy, které se cesty zúčastnily, nebudou moci obchodovat s čínskými společnostmi.“\r\n</p>\r\n<br>\r\n<p>\r\nMynář také velvyslance Čanga Ťien-mina ujišťoval, že se český přístup k politice jedné Číny nezměnil. Na schůzce také řekl, že se prezident k cestě staví odmítavě a nebude již předsedu Senátu zvát na jednání nejvyšších ústavních činitelů.\r\n</p>\r\n<br>\r\n<p>\r\nCestu Vystrčila na Tchaj-wan kritizovala Čína, která Tchaj-wan považuje za svou vzbouřeneckou provincii. Čínský ministr zahraničí Wang I pohrozil předsedovi české horní komory, že za misi zaplatí vysokou cenu. Proti výroku se ohradila česká diplomacie i evropští představitelé.\r\n</p>\r\n<br>\r\n<p>\r\n„Prezident nehájí zájmy Číny, prezident vždy hájí zájmy České republiky a jejích občanů. Nechápu, proč je u nás pozdvižení, že pan prezident pětkrát navštívil Čínu? Kancléřka Merkelová tam byla nejméně desetkrát a žádné pozdvižení to nevyvolává. Je spousta evropských politiků, kteří tam jezdí,“ řekl prezidentův kancléř.\r\n</p>\r\n<br>\r\n<p>\r\nZa prezidentem jen s negativním testem\r\n</p>\r\n<br>\r\n<p>\r\nBěhem debaty přišla řeč i na koronavirovou situaci. Podle Mynáře nepolevila v létě bezpečnostní opatření kolem prezidenta, tak jako ve zbytku republiky. „Zranění pana prezidenta nám to usnadnilo, protože teď nependluje mezi Lány a Pražským hradem. Na zámku k němu mohou pouze prověření lidé, kteří den předtím absolvují test na koronavirus. Následně jsou čtyři dny ve službě a takto se neustále střídají dvě skupiny. Všichni v jeho okolí nosí roušky,“ vysvětlil. \r\n</p>\r\n<br>\r\n<p>\r\nMynář také potvrdil, že Správa Pražského hradu má pět nakažených pracovníků. Nejedná se však o zaměstnance, kteří by se pohybovali v okolí prezidenta. \r\n</p>\r\n<br>\r\n<p>\r\nRekonvalescence prezidenta po zlomenině ruky probíhá podle Mynáře velmi dobře. „Lékaři jsou spokojení, prezident nemá žádný otok, jizvy jsou zahojené. Pan prezident se cítí naprosto v pořádku. V týdnu už měl pět jednání, dvě ho čekají dnes a další týden má schůzku nejvyšších ústavních činitelů,“ komentoval Mynář prezidentův program.\r\n</p>\r\n', 2, 3, '2020-09-24 14:06:36', NULL),
(7, 'Nad Nečasovou a Rittigem opět visí rozsudek kvůli vyzrazení informace BIS\r\n', 'Pražský vrchní soud ve čtvrtek projednává odvolání státního zástupce v kauze údajného vyzrazení utajované informace Bezpečnostní informační služby. Nepravomocný rozsudek zprostil viny všechny obžalované, tedy někdejší šéfku kabinetu premiéra Petra Nečase Janu Nagyovou (nyní Nečasovou), lobbistu Iva Rittiga i právníka Davida Michala.', '<p>\r\nObžaloba tvrdí, že Rittig se v roce 2012 od Nečasové dověděl o utajeném materiálu zaslaném premiérovi. Dovodil údajně, že zpráva BIS se týká právě jeho, a proto za Nečasovou poslal právníka Michala. Premiérova partnerka pak prý Michalovi obsah dokumentu prozradila a Rittig mohl učinit kroky k zakrytí svého vlivu na státní orgány a instituce.\r\n</p>\r\n<br>\r\n<p>\r\nPražský městský soud napoprvé uznal trojici vinnou, napodruhé – po odchodu původního předsedy senátu do důchodu – rozhodl opačně. Státní zástupce pro Nečasovou požadoval tříleté vězení, pro oba muže navrhoval podmínky a peněžité tresty.\r\n</p>\r\n<br>\r\n<p>\r\nKlíčovým důkazem obžaloby jsou odposlechy Rittigovy schůzky v pražském hotelu Ventana. Trojice vinu odmítá, podle Rittiga je obžaloba absurdní. Obhájci poukazovali mimo jiné na to, že informace o Rittigově vlivu na ministerstvu zemědělství nebyla tajná, protože o ní už dříve psali novináři.\r\n</p>\r\n', 1, 1, '2020-09-24 14:08:06', NULL),
(8, 'Tuny ryb v řece Bečvě otrávil kyanid, potvrdily výsledky vzorků', 'Desítky tun ryb uhynulých v řece Bečvě otrávily kyanidy. Potvrdily to výsledky rozborů vzorků vody. Na základě odebraných vzorků se bude nyní hledat původce havárie. Koncentraci jedů se již vodohospodářům podařilo naředit.\r\n', '<p>\r\nMluvčí České inspekce životního prostředí (ČIŽP) Radka Nastoupilová řekla, že rozbor potvrdil původní domněnku inspektorů. Kyanidy jsou prudké jedy, které dokážou usmrtit během několika minut. Jejich nebezpečí spočívá v zablokování buněčného dýchání.\r\n</p>\r\n<br>\r\n<p>\r\nMnožství smrtící látky zatím odborníci nedokážou určit. „To v tuto chvíli zatím vůbec netušíme,“ uvedla mluvčí ČIZP. Inspekce nechce k rozborům nic bližšího komentovat s tím, že by to mohlo zmařit vyšetřování.\r\n</p>\r\n<br>\r\n<p>\r\nKontaminační mrak začal ničit život v řece v neděli. Postupoval od Choryně na Vsetínsku až do Přerova, kde se zastavil díky velké kapacitě vodní nádrže v nadjezí. Jde o úsek v délce 38 kilometrů. Následky jsou dramatické, rybáři do kafilérie dosud odvezli 32 tun otrávených ryb.\r\n</p>\r\n<br>\r\n<p>\r\n„A pokračuje se dál. Nejvíce to chytlo místo mezi Lhotkou a Choryní a poté Hustopeče, Hranice a dál,“ informoval předseda Územního svazu rybářů pro Severní Moravu a Slezsko Pavel Kocián.\r\n</p>\r\n<br>\r\n<p>\r\nVodohospodáři v minulých dnech několikrát zvýšili odtok vody z nedaleké nádrže Bystřička, aby měla řeka vyšší průtok a látka se ve vodě co nejvíce naředila.\r\n</p>\r\n<br>\r\n<p>\r\n„Odběry v místech níže po toku dokazují, že koncentraci kyanidu se nám podařilo takto snížit,“ uvedl generální ředitel Povodí Moravy Václav Gargulák.\r\n</p>\r\n<br>\r\n<p>\r\nPodle mluvčího Povodí Moravy Petra Chmelaře totiž nelze z povrchových vod kyanidy odstranit, ani se nedá jejich koncentrace snížit oxidací chlorem, ozónem či jinou látkou.\r\n</p>\r\n<br>\r\n<p>\r\nČást naředěných látek se dostala i do řeky Moravy, do níž se Bečva vlévá.  I tady se snaží vodohospodáři zabránit vážnějším dopadům na životní prostředí. \r\n</p>\r\n<br>\r\n<p>\r\n„Vzhledem k tomu, že přímo na řece Moravě není žádná větší vodní nádrž, snižujeme koncentraci kyanidu díky zásobám vody ze Slušovic a Fryštáku, které leží na přítocích do Moravy,“ doplnil Gargulák.\r\n</p>\r\n<br>\r\n<p>\r\nSituace se podle něj daří postupně řešit. „Koncentrace po naředění vodou z vodních nádrží již nepřestavuje tak velké riziko pro vodní faunu a floru,“ podotkl.\r\n</p>\r\n<br>\r\n<p>\r\nPodle ekologů bez větší újmy nejspíš vyvázne i oblast Hranického krasu. Nebezpečí kontaminace nehrozí ani místní minerální vodě, nazývané kyselka, jejíž hladina se nachází o 60 až 100 centimetrů výše než je hladina Bečvy.\r\n</p>\r\n<br>\r\n<p>\r\nViník je stále neznámý, padají trestní oznámení\r\n</p>\r\n<br>\r\n<p>\r\nDosud se nepodařilo odhalit původce znečištění. ČIŽP vyloučila, že by toxická látka unikla z valašskomeziříčské chemičky Deza.\r\n</p>\r\n<br>\r\n<p>\r\nŘeditel Vodovodů a kanalizací Vsetín Roman Pilař se zároveň zastal i ostatních podniků v průmyslové zóně, která navazuje na areál Dezy. Odvodnění zde zajišťují dvě čerpací stanice, přes které jde odpadní voda do mechanicko-biologické čistírny.\r\n</p>\r\n<br>\r\n<p>\r\n„Přes tu žádné znečištění neprošlo, to znamená, že ze splaškových vod z průmyslové zóny pocházet nemůže. Pokud vím, byl problém s hodnotami pH vody a to by zcela vyřadilo a zničilo biologii čistírny a odstavilo celý proces,“ vysvětlil Pilař.\r\n</p>\r\n<br>\r\n<p>\r\nPodle něj je zabezpečení, které VaK používá ve Valašském Meziříčí, na špičkové úrovni. Mimo jde jen dešťová kanalizace, která zřejmě patří jednotlivým podnikům v zóně. Pokud by havárie pocházela odtud, ukázaly by to rozbory vody, na kterých pracuje ČIŽP.\r\n</p>\r\n<br>\r\n<p>\r\n„Naši inspektoři brali vzorky z výustí případných zdrojů ve Valašském Meziříčí,“ potvrdila Nastoupilová.\r\n</p>\r\n<br>\r\n<p>\r\nPřípadem se zabývá policie jako podezření ze spáchání trestného činu poškození a ohrožení životního prostředí z nedbalosti. \r\n</p>\r\n<br>\r\n<p>\r\nPadla už také první trestní oznámení na neznámého pachatele. Podal je například starosta města Hranice Jiří Kudláček nebo ekonomka a kandidátka na hejtmanku Zlínského kraje za Piráty Hana Ančincová.\r\n</p>', 5, 2, '2020-09-24 14:10:57', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `autor`
--

CREATE TABLE `autor` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `autor`
--

INSERT INTO `autor` (`ID`, `name`) VALUES
(1, 'Zdeněk Burdík'),
(2, 'Eva Buchtová'),
(3, 'Matyáš Barac'),
(4, 'Aleš Stránský'),
(5, 'Vilém Bílí');

-- --------------------------------------------------------

--
-- Struktura tabulky `kategorie`
--

CREATE TABLE `kategorie` (
  `ID` int(11) NOT NULL,
  `Kategorie` varchar(60) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `kategorie`
--

INSERT INTO `kategorie` (`ID`, `Kategorie`) VALUES
(1, 'Sport'),
(2, 'Politika'),
(3, 'Příroda'),
(4, 'Věda'),
(5, 'Škola');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_kategorie` (`id_kategorie`),
  ADD KEY `id_autor` (`id_autor`);

--
-- Klíče pro tabulku `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`ID`);

--
-- Klíče pro tabulku `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `article`
--
ALTER TABLE `article`
  MODIFY `ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pro tabulku `autor`
--
ALTER TABLE `autor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pro tabulku `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id_kategorie`) REFERENCES `kategorie` (`ID`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
