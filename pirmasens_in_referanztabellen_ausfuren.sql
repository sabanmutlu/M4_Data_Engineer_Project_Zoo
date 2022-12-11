-- Referenztabellen

DROP TABLE if EXISTS "Anrede";

CREATE TABLE "Anrede" (
	"Anrede_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Anrede" VARCHAR(25)
);

INSERT INTO Anrede (
	Anrede
)
VALUES
("Frau"), 
("Herr");

DROP TABLE if EXISTS "Titel";

CREATE TABLE "Titel" (
	"Titel_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Titel" VARCHAR(25)
);

INSERT INTO Titel (
	Titel
)
VALUES
("Dr."), 
("Dr. med. vet."), 
("Prof. Dr."), 
("Prof. Dr. med. vet.");


DROP TABLE if EXISTS "Geschlect";

CREATE TABLE "Geschlect" (
	"Geschlect_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Geschlect" VARCHAR(15)
);

INSERT INTO Geschlect (
	Geschlect
)
VALUES
("Mänlich"), 
("Weiblich"),
("Divers");

DROP TABLE if EXISTS "Nationalitaet";

CREATE TABLE "Nationalitaet" (
	"Nationalitaet_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Nationalitaet" VARCHAR(50)
);

INSERT INTO Nationalitaet (
	Nationalitaet
)
VALUES
("Afghane / Afghanin"), 
("Ägypter / Ägypterin"), 
("Albaner / Albanerin"), 
("Algerier / Algerierin"), 
("Andorraner / Andorranerin"), 
("Angolaner / Angolanerin"), 
("Antiguaner / Antiguanerin"), 
("Äquatorialguineer / Äquatorialguineerin"), 
("Argentinier / Argentinierin"), 
("Armenier / Armenierin"), 
("Aserbaidschaner / Aserbaidschanerin"), 
("Äthiopier / Äthiopierin"), 
("Australier / Australierin"), 
("Bahamaer / Bahamaerin"), 
("Bahrainer / Bahrainerin"), 
("Bangladescher / Bangladescherin"), 
("Barbadier / Barbadierin"), 
("Belarusse / Belarussin"), 
("Belgier / Belgierin"), 
("Belizer / Belizerin"), 
("Beniner / Beninerin"), 
("Bhutaner / Bhutanerin"), 
("bolivianisch / Bolivianer"), 
("Botsuaner / Botsuanerin"), 
("Brasilianer / Brasilianerin"), 
("Bruneier / Bruneierin"), 
("Bulgare / Bulgarin"), 
("Burkiner / Burkinerin"), 
("Burundier / Burundierin"), 
("Chilene / Chilenin"), 
("Chinese / Chinesin"), 
("Costa­Ricaner / Costa­Ricanerin"), 
("Ivorer / Ivorerin"), 
("Däne / Dänin"), 
("Deutscher / Deutsche"), 
("Dominicaner / Dominicanerin"), 
("Dominikaner / Dominikanerin"), 
("Dschibutier / Dschibutierin"), 
("Ecuadorianer / Ecuadorianerin"), 
("Salvadorianer / Salvadorianerin"), 
("Eritreer / Eritreerin"), 
("Este / Estin"), 
("Fidschianer / Fidschianerin"), 
("Finne / Finnin"), 
("Franzose / Französin"), 
("Gabuner / Gabunerin"), 
("Gambier / Gambierin"), 
("Georgier / Georgierin"), 
("Ghanaer / Ghanaerin"), 
("Grenader / Grenaderin"), 
("Grieche / Griechin"), 
("Guatemalteke / Guatemaltekin"), 
("Guineer / Guineerin"), 
("Guinea­Bissauer / Guinea­Bissauerin"), 
("Guyaner / Guyanerin"), 
("Haitianer / Haitianerin"), 
("Honduraner / Honduranerin"), 
("Inder / Inderin"), 
("Indonesier / Indonesierin"), 
("Iraker / Irakerin"), 
("iranisch / Iraner"), 
("Ire / Irin"), 
("Isländer / Isländerin"), 
("Israeli / Israeli"), 
("Italiener / Italienerin"), 
("Jamaikaner / Jamaikanerin"), 
("Japaner / Japanerin"), 
("Jemenit / Jemenitin"), 
("Jordanier / Jordanierin"), 
("Kambodschaner / Kambodschanerin"), 
("Kameruner / Kamerunerin"), 
("Kanadier / Kanadierin"), 
("Kasache / Kasachin"), 
("Katarer / Katarerin"), 
("Kenianer / Kenianerin"), 
("Kirgise / Kirgisin"), 
("Kiribatier / Kiribatierin"), 
("Kolumbianer / Kolumbianerin"), 
("Komorer / Komorerin"), 
("Kongolese / Kongolesin"), 
("kongolesisch / Kongolese"), 
("koreanisch / Koreaner"), 
("koreanisch / Koreaner"), 
("Kosovare / Kosovarin"), 
("Kroate / Kroatin"), 
("Kubaner / Kubanerin"), 
("Kuwaiter / Kuwaiterin"), 
("laotisch / Laote"), 
("Lesother / Lesotherin"), 
("Lette / Lettin"), 
("Libanese / Libanesin"), 
("Liberianer / Liberianerin"), 
("Libyer / Libyerin"), 
("Liechtensteiner / Liechtensteinerin"), 
("Litauer / Litauerin"), 
("Luxemburger / Luxemburgerin"), 
("Madagasse / Madagassin"), 
("Malawier / Malawierin"), 
("Malaysier / Malaysierin"), 
("Malediver / Malediverin"), 
("Malier / Malierin"), 
("Malteser / Malteserin"), 
("Marokkaner / Marokkanerin"), 
("Marshaller / Marshallerin"), 
("Mauretanier / Mauretanierin"), 
("Mauritier / Mauritierin"), 
("Mexikaner / Mexikanerin"), 
("mikronesisch / Mikronesier"), 
("moldauisch / Moldauer"), 
("Monegasse / Monegassin"), 
("Mongole / Mongolin"), 
("Montenegriner / Montenegrinerin"), 
("Mosambikaner / Mosambikanerin"), 
("Myanmare / Myanmarin"), 
("Namibier / Namibierin"), 
("Nauruer / Nauruerin"), 
("Nepalese / Nepalesin"), 
("Neuseeländer / Neuseeländerin"), 
("Nicaraguaner / Nicaraguanerin"), 
("Niederländer / Niederländerin"), 
("Nigrer / Nigrerin"), 
("Nigerianer / Nigerianerin"), 
("Niueaner / Niueanerin"), 
("Norweger / Norwegerin"), 
("Omaner / Omanerin"), 
("Österreicher / Österreicherin"), 
("Pakistaner / Pakistanerin"), 
("Palauer / Palauerin"), 
("Panamaer / Panamaerin"), 
("Papua-Neuguineer / Papua-Neuguineerin"), 
("Paraguayer / Paraguayerin"), 
("Peruaner / Peruanerin"), 
("Philippiner / Philippinerin"), 
("Pole / Polin"), 
("Portugiese / Portugiesin"), 
("Ruander / Ruanderin"), 
("Rumäne / Rumänin"), 
("Salomoner / Salomonerin"), 
("Sambier / Sambierin"), 
("Samoaner / Samoanerin"), 
("San­Marinese / San­Marinesin"), 
("São­Toméer / São­Toméerin"), 
("Saudi­Araber / Saudi­Araberin"), 
("Schwede / Schwedin"), 
("Schweizer / Schweizerin"), 
("Senegalese / Senegalesin"), 
("Serbe / Serbin"), 
("Seycheller / Seychellerin"), 
("Sierra­Leoner / Sierra­Leonerin"), 
("Simbabwer / Simbabwerin"), 
("Singapurer / Singapurerin"), 
("Slowake / Slowakin"), 
("Slowene / Slowenin"), 
("Somalier / Somalierin"), 
("Spanier / Spanierin"), 
("Sri­Lanker / Sri­Lankerin"), 
("Lucianer / Lucianerin"), 
("Vincenter / Vincenterin"), 
("Südafrikaner / Südafrikanerin"), 
("Sudanese / Sudanesin"), 
("Südsudanese / Südsudanesin"), 
("Surinamer / Surinamerin"), 
("syrisch / Syrer"), 
("Tadschike / Tadschikin"), 
("tansanisch / Tansanier"), 
("Thailänder / Thailänderin"), 
("Togoer / Togoerin"), 
("Tongaer / Tongaerin"), 
("Tschader / Tschaderin"), 
("Tscheche / Tschechin"), 
("Tunesier / Tunesierin"), 
("Türke / Türkin"), 
("Turkmene / Turkmenin"), 
("Tuvaluer / Tuvaluerin"), 
("Ugander / Uganderin"), 
("Ukrainer / Ukrainerin"), 
("Ungar / Ungarin"), 
("Uruguayer / Uruguayerin"), 
("Usbeke / Usbekin"), 
("Vanuatuer / Vanuatuerin"), 
("venezolanisch / Venezolaner"), 
("der Vereinigten Staaten (von Amerika) / Amerikaner / Amerikanerin"), 
("Brite / Britin"), 
("Vietnamese / Vietnamesin"), 
("Zentralafrikaner / Zentralafrikanerin"), 
("Zyprer / Zyprerin");


DROP TABLE if EXISTS "Land";

CREATE TABLE "Land" (
	"Land_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Land" VARCHAR(50)
);

INSERT INTO Land (
	Land
)
VALUES
("Afghanistan"), 
("Ägypten"), 
("Albanien"), 
("Algerien"), 
("Andorra"), 
("Angola"), 
("Antigua und Barbuda"), 
("Äquatorialguinea"), 
("Argentinien"), 
("Armenien"), 
("Aserbaidschan"), 
("Äthiopien"), 
("Australien"), 
("Bahamas"), 
("Bahrain"), 
("Bangladesch"), 
("Barbados"), 
("Belarus"), 
("Belgien"), 
("Belize"), 
("Benin"), 
("Bhutan"), 
("Bolivien"), 
("Bosnien und Herzegowina"), 
("Botsuana"), 
("Brasilien"), 
("Brunei Darussalam"), 
("Bulgarien"), 
("Burkina Faso"), 
("Burundi"), 
("Cabo Verde"), 
("Chile"), 
("China"), 
("Cookinseln"), 
("Costa Rica"), 
("Côte d'Ivoire"), 
("Dänemark"), 
("Deutschland"), 
("Dominica"), 
("Dominikanische Republik"), 
("Dschibuti"), 
("Ecuador"), 
("El Salvador"), 
("Eritrea"), 
("Estland"), 
("Eswatini"), 
("Fidschi"), 
("Finnland"), 
("Frankreich"), 
("Gabun"), 
("Gambia"), 
("Georgien"), 
("Ghana"), 
("Grenada"), 
("Griechenland"), 
("Guatemala"), 
("Guinea"), 
("Guinea-Bissau"), 
("Guyana"), 
("Haiti"), 
("Heiliger Stuhl"), 
("Honduras"), 
("Indien"), 
("Indonesien"), 
("Irak"), 
("Iran"), 
("Irland"), 
("Island"), 
("Israel"), 
("Italien"), 
("Jamaika"), 
("Japan"), 
("Jemen"), 
("Jordanien"), 
("Kambodscha"), 
("Kamerun"), 
("Kanada"), 
("Kasachstan"), 
("Katar"), 
("Kenia"), 
("Kirgisistan"), 
("Kiribati"), 
("Kolumbien"), 
("Komoren"), 
("Kongo"), 
("Kongo"), 
("Korea"), 
("Korea"), 
("Kosovo"), 
("Kroatien"), 
("Kuba"), 
("Kuwait"), 
("Laos"), 
("Lesotho"), 
("Lettland"), 
("Libanon"), 
("Liberia"), 
("Libyen"), 
("Liechtenstein"), 
("Litauen"), 
("Luxemburg"), 
("Madagaskar"), 
("Malawi"), 
("Malaysia"), 
("Malediven"), 
("Mali"), 
("Malta"), 
("Marokko"), 
("Marshallinseln"), 
("Mauretanien"), 
("Mauritius"), 
("Mexiko"), 
("Mikronesien"), 
("Moldau"), 
("Monaco"), 
("Mongolei"), 
("Montenegro"), 
("Mosambik"), 
("Myanmar"), 
("Namibia"), 
("Nauru"), 
("Nepal"), 
("Neuseeland"), 
("Nicaragua"), 
("Niederlande"), 
("Niger"), 
("Nigeria"), 
("Niue"), 
("Nordmazedonien"), 
("Norwegen"), 
("Oman"), 
("Österreich"), 
("Pakistan"), 
("Palau"), 
("Panama"), 
("Papua-Neuguinea"), 
("Paraguay"), 
("Peru"), 
("Philippinen"), 
("Polen"), 
("Portugal"), 
("Ruanda"), 
("Rumänien"), 
("Russische Föderation"), 
("Salomonen"), 
("Sambia"), 
("Samoa"), 
("San Marino"), 
("São Tomé und Príncipe"), 
("Saudi-Arabien"), 
("Schweden"), 
("Schweiz"), 
("Senegal"), 
("Serbien "), 
("Seychellen"), 
("Sierra Leone"), 
("Simbabwe"), 
("Singapur"), 
("Slowakei"), 
("Slowenien"), 
("Somalia"), 
("Spanien"), 
("Sri Lanka"), 
("St. Kitts und Nevis"), 
("St. Lucia"), 
("St. Vincent und die Grenadinen"), 
("Südafrika"), 
("Sudan"), 
("Südsudan"), 
("Suriname"), 
("Syrien"), 
("Tadschikistan"), 
("Tansania"), 
("Thailand"), 
("Timor-Leste"), 
("Togo"), 
("Tonga"), 
("Trinidad und Tobago"), 
("Tschad"), 
("Tschechien"), 
("Tunesien"), 
("Türkei"), 
("Turkmenistan"), 
("Tuvalu"), 
("Uganda"), 
("Ukraine"), 
("Ungarn"), 
("Uruguay"), 
("Usbekistan"), 
("Vanuatu"), 
("Vatikanstadt"), 
("Venezuela"), 
("Vereinigte Arabische Emirate"), 
("Vereinigte Staaten"), 
("Vereinigtes Königreich"), 
("Vietnam"), 
("Zentralafrikanische Republik"), 
("Zypern");


DROP TABLE if EXISTS "Soz_Status";

CREATE TABLE "Soz_Status" (
	"Soz_Status_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Soz_Status" VARCHAR(25)
);

INSERT INTO Soz_Status (
	Soz_Status
)
VALUES
("Ledig"), 
("Verheiratet");


DROP TABLE if EXISTS "Mwst"; 

CREATE TABLE "Mwst" ( 
	"Mwst_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	"Mwst_Satz" REAL -- Name veraenderung
);

INSERT INTO "Mwst" (
	"Mwst_Satz"
)
VALUES
(19), 
(7);


INSERT INTO "Einheit" (
	"Einheit"
)
VALUES
("Steuck"), 
("g")
("kg"), 
("cm"), 
("m"), 
("packung"), 
("flasche")
;


INSERT INTO "Waehrung" (
	"Waehrung"
)
VALUES
("EUR"), 
("USD"), 
("SWF")
;


INSERT INTO "JaNein" (
	"JaNein_Wert", 
	"JaNein"
)
VALUES
("0", "Nein"), 
("1", "Ja")
;