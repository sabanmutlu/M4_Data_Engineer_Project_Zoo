
-- Normalen tabellen

-- Ohne Fremdschlüssel

INSERT INTO Futterart (
	Futterartname,
	Bemerkung
)
VALUES
("Trockenfutter", "geringer Aufwand, erhöhter Wasserbedarf , hoher Zahnabrieb, Kauapparat wird gestärkt, Futtermenge ist geringer wegen hoher Nährstoffdichte"), 
("Nassfutter", "geringer Aufwand, kaum erhöhter Wasserbedarf, geringer Zahnabrieb, Kauapparat wird wenig beansprucht, Futtermenge muss höher sein aufgrund geringer Nährstoffdichte"),
("Nassfutter", "hoher Aufwand, kein erhöhter Wasserbedarf, hoher Zahnabrieb (wenn Knochen verfüttert werden), Kauapparat wird gestärkt (wenn Knochen und Knorpel verfüttert werden), Futtermenge ist abhängig von den einzelnen Komponenten");


INSERT INTO Gattung (
	"Gattungsname",
	"Information"
)
VALUES
("Untergattung", "aaa"), 
("Sektion", "bbb"),
("Untersektion", "ccc"),
("Serie", "ddd"), 
("Unterserie", "eee")
;


INSERT INTO Tierart (
	"Gattung_ID",
	"Tierart", 
	"Natürlicher_Lebensraum",
	"Verhaltensweise",
	"Abstammug",
	"Verwandte_Arten"
)
VALUES
(1, "Säugetiere", "Land", "mit Haaren und fast immer vier Beinen", "Synapsiden", "Therapsiden"), 
(2, "Vögel", "Land, Wasser", "die Eier legen und Federn sowie einen Schnabel besitzen", "Sauropsiden", "Eureptilien"),
(2, "Amphibien", "Land, Wasser", "sind wechselwarme", "Landwirbeltiere", "Amphibienartige"),
(3, "Reptilien", "Land, Wasser", "die sich kriechend fortbewegen", "Sauropsiden", "Eureptilien"), 
(4, "Fische", "Wasser", "die Eier legen, mit Kiemen atmen", "Wirbeltiere", "Rundmäuler"),
(5, "Insekten", "Land", "die ein Exoskelett (Chitin-Panzer) besitzen", "Archosaurier", "Fleischflosser"),
(5, "Spinnentiere", "Land", "mit acht Beinen", "Archosaurier", "Kiefermäuler"),
(5, "Wirbellose", "Land, Wasser", "sind Weichtiere, Krebstiere, Schwämme und Würmer", "Wirbeltiere", "Rundmäuler")
;


INSERT INTO Gebaeude (
	"Gebaeudename",
	"Anzahl_Etagen", 
	"Position_auf_Gelaende"
)
VALUES
("Hauptgebaeude", 1, "Recht"), 
("Vögelgebaeude", 1, "Link"),
("Wassertiere", 0, "Center"),
("Katzensektor", 2, "Center"), 
("Saeugetiere", 0, "Center")
;


INSERT INTO Gehegeart (
	"Gehegeartname"
)
VALUES
("Zimmergehege"), 
("Freigehege"),
("Wildgehege"),
("Aquarien"), 
("Eigenbauten")
;

INSERT INTO Gehege (
	"Gehegeart_ID",
	"Gehegename", 
	"Groesse", 
	"Einheit_Groesse", 
	"Bemerkung"
)
VALUES
(1, "Zimm01", 5, "m", "aaa"), 
(1, "Zimm02", 4, "m", "bbb"),
(2, "Frei01", 4, "m", "ccc"),
(2, "Frei02", 3, "m", "cdd"), 
(3, "Wild01", 3, "m", "eee")
;


INSERT INTO GehegeGebaeude (
	"Gehege_ID",
	"Gebaeude_ID", 
	"Etage"
)
VALUES
(1, 1, 1), 
(1, 2, 1),
(2, 1, 0),
(2, 2, 2), 
(3, 3, 1)
;


INSERT INTO Mahlzeit (
	"Mahlzeitname"
)
VALUES
("Fruehstueck"), 
("Mittagessen"),
("Abendessen"),
("Andere")
;


INSERT INTO Futter (
	"Futtername",
	"Futterart_ID", Bemerkung
	"Lagerbestand", 
	"Meldebestand", 
	"Einheit"
)
VALUES
("Meatbone", 1, 5, 10, "Stueck"), 
("Fishfurkatzen", 1, 6, 10, "m"),
("MahlfurSaug", 2, 10, 20, "Stueck"),
("MahlfurRotten", 2, 20, 30, "kg"), 
("Essenbest", 3, 5, 10, "Stueck")
;

INSERT INTO Position (
	"Positionsname"
)
VALUES
("Tierpfleger"), 
("Auszubildender"),
("Praktikant"),
("Sekretariat"), 
("Lager")
;

INSERT INTO Mitarbeiter (
	"Vertretung", 
	"Anrede", 
	"Titel", 
	"Geschlecht", 
	"Vorname", 
	"Nachname", 
	"Strasse", 
	"Hausnummer", 
	"PLZ", 
	"Ort", 
	"Telefonnummer_Festnetz", 
	"Telefonnummer_Mobil", 
	"Faxnummer", 
	"Emailadresse", 
	"Beschaeftigt_seit", 
	"Beschaeftigt_bis", 
	"Geburtsdatum", 
	"Nationalitaet", 
	"Sozialer_Status", 
	"Bemerkung", 
	"Create", 
	"Modify"
)
VALUES
(2, 'Herr', '', 'männlich', 'Hank', 'Mudroch', 'Am Fritzschgut', '97', '10249', 'Berlin', '03046545', '01745616515', '0304654555', 'hm@web.de', '43831', '', '23743', 'deutsch', 'ledig', '', '', ''), 
(3, 'Herr', '', 'männlich', 'Hayet', 'Schmuck von Kirchberg', 'Reitscharweg', '35', '10178', 'Berlin', '03012345678', '', '03012345677', 'hsch@t-online.de', '38473', '', '29252', 'deutsch', 'verheiratet', '', '', ''), 
(1, 'Frau', '', 'weiblich', 'Hellen', 'Mühlen', 'Am Gerhardsplatz', '24', '10965', 'Berlin', '030155156461', '01571651666', '', 'muehlen@web.de', '40513', '', '25628', 'deutsch', 'ledig', '', '', '')
;


INSERT INTO VertretungMitarbeiter (
	"Mitarbeiter_ID",
	"Vertretung", 
	"Grund", 
	"Von", 
	"Bis"
)
VALUES
(1, 2, "Krankheit", "2022-03-05", "2022-03-07"), 
(2, 3, "Krankheit", "2022-03-08", "2022-03-10"), 
(3, 1, "Urlaub", "2022-04-08", "2022-04-18")
;


INSERT INTO Futterlieferant (
	"Mitarbeiter_ID",
	"Vertretung", 
	"Grund", 
	"Von", 
	"Bis"
)
VALUES
(1, 2, "Krankheit", "2022-03-05", "2022-03-07"), 
(2, 3, "Krankheit", "2022-03-08", "2022-03-10"), 
(3, 1, "Urlaub", "2022-04-08", "2022-04-18")
;

INSERT INTO "Futterlieferant" (
	"Futter_ID",
	"Lieferant_ID",
	"Menge",
	"Preis_EK_netto", 
	"Waehrung",
	"Einheit_Menge",
	"Auftragsdatum",
	"Lieferdatum",
	"Bemerkung",
	"Datum",
	"Rabatt"
)
VALUES
(1, ), 

;



INSERT INTO Tierarzt (
	"Anrede",
	"Titel",
	"Geschlecht",
	"Vorname",
	"Nachname",
	"Strasse",
	"Hausnummer",
	"PLZ",
	"Ort",
	"Land",
	"Telefonnummer_Festnetz",
	"Telefonnummer_Mobil",
	"Faxnummer",
	"Emailadresse",
	"Vertretung",
	"Bemerkung",
	"Create",
	"Modify",
	"Praxis"
)
VALUES
('Herr', 'Dr. vet.', 'männlich', 'Jed', 'Muschang', 'Rienecker Straße', '31', '14057', 'Berlin', 'Deutschland', '03046545', '01745616515', '0304654555', 'tierarzt1@web.de', 2, '', '', '', 'Tierarztpraxis Muschang'), 
('Herr', 'Dr.', 'männlich', 'Jannic', 'Muntinga', 'Riedfeld', '87 C', '13591', 'Berlin', 'Deutschland', '03012345678', '015845265651', '03012345677', 'tierarzt2@t-online.de', 3, '', '', '', ''), 
('Herr', '', 'männlich', 'Iuriiovič', 'Mulbach', 'Richard-Oberle-Weg', '35', '13129', 'Berlin', 'Deutschland', '030155156461', '01571651666', '030564985885', 'tierarzt3@web.de', 1, '', '', '', 'Tierarztpraxis Mulbach')
;


INSERT INTO VertretungTierarzt (
	"Tierarzt_ID",
	"Vertretung", 
	"Grund", 
	"Von", 
	"Bis"
)
VALUES
(1, 2, "Krankheit", "2022-03-05", "2022-03-07"), 
(2, 3, "Krankheit", "2022-03-08", "2022-03-10"), 
(3, 1, "Urlaub", "2022-04-08", "2022-04-18")
;


INSERT INTO Tier (
	"Tierart_ID",
	"Tiername",
	"Name",
	"Groesse", 
	"Gewicht", 
	"Geburtsdatum", 
	"Sterbedatum", 
	"Herkunft", 
	"Im_Zoo_seit", 
	"Im_Zoo_bis", 
	"Im_Zoo_geboren", 
	"Vatertier", 
	"Muttertier", 
	"Vertraeglichkeit", -- ?
	"Bemerkung", 
	"Geschlecht", 
	"Einheit_Groesse",
	"Einheit_Gewicht"
)
VALUES
(1, 'Löwe', 'Hans', 150, 60, '2015-03-05', '2019-06-05', 'Asia', '2015-03-05', '', 1, '', '', 22, 'eee', 'mänlich', 'cm', 'kg'), 
(2, 'Papagai', 'Stefanie', 30, 600, '2015-03-05', '', 'Afrika', '2015-04-05', '', 0, '', '', 23, 'rrr', 'weiblich', 3, 'cm', 'g'), 
(4, 'Krokodil', 'Starkie', 120, 50, '2015-03-05', '', 'Afriks', '2015-05-05', '', 0, '', '', 24, 'ttt', 'weiblich', 1, 'cm', 'kg')
;


INSERT INTO TierTierarzt (
	"Tier_ID",
	"Tierarzt_ID"
)
VALUES
(1, 1), 
(2, 2), 
(3, 3)
;


INSERT INTO TierMitarbeiter (
	"Tier_ID",
	"Mitarbeiter_ID", 
	"Bemerkung"
)
VALUES
(1, 3, "uuu"), 
(2, 2, "ppp"), 
(3, 1, "iii")
;


INSERT INTO TierMahlzeit (
	"Tier_ID",
	"Mahlzeit_ID", 
	"Fütterungszeit"
)
VALUES
(1, 1, '2015-03-05'), 
(2, 2, '2015-04-05'), 
(1, 3, '2015-05-05'), 
(2, 3, '2015-06-05'), 
(3, 1, '2015-07-05')
;


INSERT INTO TierGehege (
	"Tier_ID",
	"Gehege_ID"
)
VALUES
(1, 3), 
(2, 1), 
(3, 2)
;


INSERT INTO Teilweg (
	"Teilwegname",
	"Vor_Gehege_ID", 
	"Nach_Gehege_ID"
)
VALUES
("X", 3, 2), 
("Y", 1, 3), 
("Z", 2, 1)
;


INSERT INTO Rundweg (
	"Rundwegname",
	"Farbe", 
	"Laenge_(m)", 
	"Dauer_(min)", 
	"Barrierefrei"
)
VALUES
("Raubtierfütterungstour", "Rot", 300, 30, 0), 
("Gefiederte Freunde", "Grün", 255, 25, 1), 
("Alles Giftige", "Blau", 200, 20, 1)
;


INSERT INTO TeilwegRundweg (
	"Rundweg_ID", 
	"Teilweg_ID"
)
VALUES
(3, 2), 
(1, 3), 
(2, 1)
;


INSERT INTO MitarbeiterTierart (
	"Mitarbeiter_ID", 
	"Tierart_ID"
)
VALUES
(3, 2), 
(1, 3), 
(2, 1)
;


INSERT INTO MahlzeitFutter (
	"Mahlzeit_ID", 
	"Futter_ID", 
	"Menge", 
	"Bemerkung"
)
VALUES
(3, 5, 2, "ttt"), 
(4, 2, 3, "llll"), 
(2, 1, 2, "fff")
;


	"Firma",
	"Anrede",
	"Vorname",
	"Nachname",
	"Strasse",
	"Hausnummer",
	"PLZ",
	"Ort",
	"Land",
	"Telefonnummer_Festnetz",
	"Telefonnummer_Mobil",
	"Faxnummer",
	"Emailadresse",
	"Ansprechpartner",
	"Bemerkung",
	"Create",
	"Modify"


INSERT INTO Lieferant (
	"Firma",
	"Anrede",
	"Vorname",
	"Nachname",
	"Strasse",
	"Hausnummer",
	"PLZ",
	"Ort",
	"Land",
	"Telefonnummer_Festnetz",
	"Telefonnummer_Mobil",
	"Faxnummer",
	"Emailadresse",
	"Ansprechpartner",
	"Bemerkung",
	"Create",
	"Modify"
)
VALUES
('Abc', 'Frau', 'Lia', 'Schmid', 'Davidsrain', '80', '6074', 'Giswil', 'Deutschland', '+49 0711 2842222', '+49 0711 2842222', '+49 0711 2842222', 'hholy@gmail.com', 'John Gordon', '', '2015-04-26 00:00:00.000', '2015-04-26 00:00:00.000'), 
('Def', 'Herr', 'Elia', 'Geiser', 'Im Zimmerhof', '175', '1958', 'Saint-Léonard, Sion', 'Deutschland', '+49 0711 2842223', '+49 0711 2842223', '+49 0711 2842223', 'astrid.gruber@apple.at', 'Frank Ralston', '', '2015-05-05 00:00:00.000', '2015-05-05 00:00:00.000'), 
('Ghi', 'Herr', 'Léon', 'Lanz', 'Maispracherweg', '176', '6808', 'Torricella-Taverne', 'Deutschland', '+49 0711 2842224', '+49 0711 2842224', '+49 0711 2842224', 'daan_peeters@apple.be', 'Victor Stevens', '', '2015-05-06 00:00:00.000', '2015-05-06 00:00:00.000'), 
('Jkl', 'Herr', 'Julian', 'Friedli', 'Wildschutzweg', '58', '3636', 'Forst-Längenbühl', 'Deutschland', '+49 0711 2842225', '+49 0711 2842225', '+49 0711 2842225', 'kara.nielsen@jubii.dk', 'Richard Cunningham', '', '2015-05-08 00:00:00.000', '2015-05-08 00:00:00.000'), 
;


	INSERT INTO Futterlieferant (
	"Futter_ID",
	"Lieferant_ID",
	"Menge",
	"Preis_EK_netto",
	"Waehrung",
	"Einheit_Menge",
	"Auftragsdatum",
	"Lieferdatum",
	"Bemerkung",
	"Datum",
	"Rabatt"
)
VALUES
('3', '2', '3', '33', 'EUR', 'kg', '2015-03-05', '2015-03-05', '', '2015-03-05', '10'), 
('1', '3', '4', '44', 'SCF', 'Stueck', '2015-03-05', '2015-03-05', '', '2015-03-05', '10'), 
('2', '1', '5', '55', 'EUR', 'kg', '2015-03-05', '2015-03-05', '', '2015-03-05', '5')

;




INSERT INTO Historie (
	"Tier_ID",
	"Name",
	"Strasse",
	"Hausnummer",
	"PLZ",
	"Ort",
	"Land",
	"Telefonnummer",
	"Faxnummer",
	"Emailadresse",
	"Create",
	"Modify",
	"Von",
	"Bis"
)
VALUES
('3', 'Hans', 'Wasserturm-Promenade', '52', '5077', 'Elfingen', 'Deutschland', '+49 0711 2842222', '+49 0711 2842222', 'robbrown@shaw.ca', '2015-04-26 00:00:00', '2015-04-26 00:00:00', '2015-04-26 00:00:00', ''), 
('1', 'Stefanie', 'Hangweglein', '37', '1272', 'Genolier', 'Deutschland', '+49 0711 2842223', '+49 0711 2842223', 'edfrancis@yachoo.ca', '2015-05-05 00:00:00', '2015-05-05 00:00:00', '2015-05-05 00:00:00', ''), 
('2', 'Melanie', 'Eichhornstrasse', '19', '6211', 'Dagmersellen', 'Deutschland', '+49 0711 2842224', '+49 0711 2842224', 'marthasilk@gmail.com', '2015-05-06 00:00:00', '2015-05-06 00:00:00', '2015-05-06 00:00:00', '')
;



INSERT INTO Inkompatibilitaet (
	"Tier_ID", 
	"Inkompatibilitaet"
)
VALUES
(3, 5), 
(4, 2), 
(2, 1)
;


CREATE TABLE "Krankenakte" (
	"Tier_ID",
	"Tierarzt_ID",
	"Behandlungsgrund",
	"Befund",
	"Behandlungsbeginn",
	"Behandlungsende",
	"Bemerkung",
	"Meldepflichtige_Krankheit",
	"Medikation",
	"Behandlungsdatum"
);

INSERT INTO Krankenakte (
	"Tier_ID",
	"Tierarzt_ID",
	"Behandlungsgrund",
	"Befund",
	"Behandlungsbeginn",
	"Behandlungsende",
	"Bemerkung",
	"Meldepflichtige_Krankheit",
	"Medikation",
	"Behandlungsdatum"
)
VALUES
('1', '3', 'Krankheit', 'XX', '2015-04-26 00:00:00', '2015-04-26 00:00:00', '', '0', 'Ab', '2015-04-26 00:00:00'), 
('2', '2', 'Krankheit', 'YY', '2015-05-05 00:00:00', '2015-05-05 00:00:00', '', '1', 'Cd', '2015-05-05 00:00:00'), 
('3', '1', 'Monatlich', 'ZZ', '2015-05-06 00:00:00', '2015-05-06 00:00:00', '', '0', 'Ef', '2015-05-06 00:00:00')
;