-- FOREIGN KEY (order_date) REFERENCES orders

DROP TABLE if EXISTS "Futter";

CREATE TABLE "Futter" (
	"Futter_ID"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Futtername"	VARCHAR(50),
	"Futterart_ID"	INTEGER,
	"Lagerbestand"	INTEGER,
	"Meldebestand"	INTEGER,
	"Einheit"	VARCHAR(25), 
	FOREIGN KEY ("Futterart_ID") REFERENCES "Futterart"
);

DROP TABLE if EXISTS "Futterart";

CREATE TABLE "Futterart" (
    "Futterart_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Futterartname" VARCHAR(50),
    "Bemerkung" TEXT
);

DROP TABLE if EXISTS "Futterlieferant";

CREATE TABLE "Futterlieferant" (
	"Futterlieferant_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Futter_ID" INTEGER,
	"Lieferant_ID" INTEGER,
	"Menge" INTEGER,	
	"Preis_EK_netto" REAL, -- Name veraenderung
	"Waehrung" VARCHAR(15), -- Name veraenderung
	"Einheit_Menge" VARCHAR(25),
	"Auftragsdatum" DATE, 
	"Lieferdatum" DATE,
	"Bemerkung" VARCHAR(200),
	"Datum" DATE, 
	"Rabatt" REAL, 
	FOREIGN KEY ("Futter_ID") REFERENCES "Futter",
	FOREIGN KEY ("Lieferant_ID") REFERENCES "Lieferant"
);



DROP TABLE if EXISTS "Gattung";

CREATE TABLE "Gattung" (
	"Gattung_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Gattungsname" VARCHAR(50),
	"Information" VARCHAR(300)
);


DROP TABLE if EXISTS "Gebaeude"; -- Name veraenderung

CREATE TABLE "Gebaeude" ( -- Name veraenderung
	"Gebaeude_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, -- Name veraenderung
	"Gebaeudename" VARCHAR(50), -- Name veraenderung
	"Anzahl_Etagen" INTEGER, -- Name veraenderung
	"Position_auf_Gelaende" VARCHAR(50) -- Name veraenderung
);



DROP TABLE if EXISTS "Gehege";

CREATE TABLE "Gehege" (
	"Gehege_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Gehegeart_ID" INTEGER,
	"Gehegename" VARCHAR(50), 
	"Groesse" INTEGER, -- Name veraenderung
	"Einheit_Groesse" VARCHAR(50), -- Name veraenderung
	"Bemerkung" VARCHAR(200), 
	FOREIGN KEY ("Gehegeart_ID") REFERENCES "Gehegeart"
);



DROP TABLE if EXISTS "Gehegeart";

CREATE TABLE "Gehegeart" (
	"Gehegeart_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Gehegeartname" VARCHAR(50)
);


DROP TABLE if EXISTS "GehegeGebaeude"; -- Name veraenderung

CREATE TABLE "GehegeGebaeude" ( -- Name veraenderung
	"GehegeGebaeude_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, -- Name veraenderung
	"Gehege_ID" INTEGER,
	"Gebaeude_ID" INTEGER, -- Name veraenderung
	"Etage" INTEGER, 
	FOREIGN KEY ("Gehege_ID") REFERENCES "Gehege",
	FOREIGN KEY ("Gebaeude_ID") REFERENCES "Gebaeude"
);



DROP TABLE if EXISTS "Historie";

CREATE TABLE "Historie" (
	"Historie_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Tier_ID" INTEGER,
	"Name" VARCHAR(50),
	"Strasse" VARCHAR(50), -- Name veraenderung
	"Hausnummer" INTEGER, 
	"PLZ" VARCHAR(25),
	"Ort" VARCHAR(50), 
	"Land" VARCHAR(50),
	"Telefonnummer" VARCHAR(50),
	"Faxnummer" VARCHAR(50),
	"Emailadresse" VARCHAR(50),
	"Create" DATE,
	"Modify" DATE,
	"Von" DATE,
	"Bis" DATE, 
	FOREIGN KEY ("Tier_ID") REFERENCES "Tier"
);



DROP TABLE if EXISTS "Inkompatibilitaet"; -- Name veraenderung

CREATE TABLE "Inkompatibilitaet" ( -- Name veraenderung
	"Inkompatibilitaet_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, -- Name veraenderung
	"Tier_ID" INTEGER,
	"Inkompatibilitaet" INTEGER, -- Name veraenderung
	FOREIGN KEY ("Tier_ID") REFERENCES "Tier", 
	FOREIGN KEY ("Inkompatibilitaet") REFERENCES "Tier" ("Tier_ID")
);


DROP TABLE if EXISTS "Krankenakte";

CREATE TABLE "Krankenakte" (
	"Krankenakte_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Tier_ID" INTEGER,
	"Tierarzt_ID" INTEGER,
	"Behandlungsgrund" VARCHAR(50), 
	"Befund" VARCHAR(50), 
	"Behandlungsbeginn" DATE,
	"Behandlungsende" DATE, 
	"Bemerkung" VARCHAR(200),
	"Meldepflichtige_Krankheit" BOOLEAN, -- Name veraenderung
	"Medikation" VARCHAR(100),
	"Behandlungsdatum" DATE, 
	FOREIGN KEY ("Tier_ID") REFERENCES "Tier", 
	FOREIGN KEY ("Tierarzt_ID") REFERENCES "Tierarzt"
);


DROP TABLE if EXISTS "Lieferant";

CREATE TABLE "Lieferant" (
	"Lieferant_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Firma" VARCHAR(50),
	"Anrede" VARCHAR(15),
	"Vorname" VARCHAR(50), 
	"Nachname" VARCHAR(50), 
	"Strasse" VARCHAR(50), -- Name veraenderung
	"Hausnummer" VARCHAR(15), 
	"PLZ" VARCHAR(15),
	"Ort" VARCHAR(50), 
	"Land" VARCHAR(50),
	"Telefonnummer_Festnetz" VARCHAR(50), -- Name veraenderung
	"Telefonnummer_Mobil" VARCHAR(50),  -- Name veraenderung
	"Faxnummer" VARCHAR(50), 
	"Emailadresse" VARCHAR(50),
	"Ansprechpartner" VARCHAR(50), 
	"Bemerkung" VARCHAR(200),
	"Create" DATE,
	"Modify" DATE
);


DROP TABLE if EXISTS "Mahlzeit"; 

CREATE TABLE "Mahlzeit" ( 
	"Mahlzeit_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	"Mahlzeitname" VARCHAR(50) 
);


DROP TABLE if EXISTS "MahlzeitFutter";

CREATE TABLE "MahlzeitFutter" (
	"MahlzeitFutter_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Mahlzeit_ID" INTEGER,
	"Futter_ID" INTEGER,
	"Menge" INTEGER, 
	"Bemerkung" VARCHAR(200), 
	FOREIGN KEY ("Mahlzeit_ID") REFERENCES "Mahlzeit", 
	FOREIGN KEY ("Futter_ID") REFERENCES "Futter"
);


DROP TABLE if EXISTS "Mitarbeiter";

CREATE TABLE "Mitarbeiter" (
	"Mitarbeiter_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Position_ID" INTEGER,
	"Vertretung" INTEGER,
	"Anrede" VARCHAR(50),
	"Titel" VARCHAR(15),
	"Geschlecht" VARCHAR(50), 
	"Vorname" VARCHAR(50), 
	"Nachname" VARCHAR(50), 
	"Strasse" VARCHAR(50), -- Name veraenderung
	"Hausnummer" VARCHAR(15), 
	"PLZ" VARCHAR(15),
	"Ort" VARCHAR(50), 
	"Telefonnummer_Festnetz" VARCHAR(50), -- Name veraenderung
	"Telefonnummer_Mobil" VARCHAR(50),  -- Name veraenderung
	"Faxnummer" VARCHAR(50), 
	"Emailadresse" VARCHAR(50),
	"Beschaeftigt_seit" DATE, -- Name veraenderung
	"Beschaeftigt_bis" DATE, -- Name veraenderung
	"Geburtsdatum" DATE,
	"Geburtsort" VARCHAR(50),
	"Nationalitaet" VARCHAR(50), -- Name veraenderung
	"Sozialer_Status" VARCHAR(50),
	"Bemerkung" VARCHAR(200),
	"Create" DATE,
	"Modify" DATE, 
	FOREIGN KEY ("Position_ID") REFERENCES "Position"
);


DROP TABLE if EXISTS "MitarbeiterTierart"; 

CREATE TABLE "MitarbeiterTierart" ( 
	"MitarbeiterTierart_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	"Mitarbeiter_ID" INTEGER,
	"Tierart_ID" INTEGER, 
	FOREIGN KEY ("Mitarbeiter_ID") REFERENCES "Mitarbeiter", 
	FOREIGN KEY ("Tierart_ID") REFERENCES "Tierart"
	
);


DROP TABLE if EXISTS "Position"; 

CREATE TABLE "Position" ( 
	"Position_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	"Positionsname" VARCHAR(50)
);


DROP TABLE if EXISTS "Rundweg";

CREATE TABLE "Rundweg" (
	"Rundweg_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Rundwegname" VARCHAR(50),
	"Farbe" VARCHAR(25), -- Referanz
	"Laenge_(m)" INTEGER,  -- Name veraenderung
	"Dauer_(min)" INTEGER,  -- Name veraenderung
	"Barrierefrei" BOOLEAN
);


DROP TABLE if EXISTS "Teilweg";

CREATE TABLE "Teilweg" (
	"Teilweg_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Teilwegname" VARCHAR(50),
	"Vor_Gehege_ID" INTEGER, -- Name veraenderung
	"Nach_Gehege_ID" INTEGER,  -- Name veraenderung
	FOREIGN KEY ("Vor_Gehege_ID") REFERENCES "Gehege" ("Gehege_ID"), 
	FOREIGN KEY ("Nach_Gehege_ID") REFERENCES "Gehege" ("Gehege_ID")
);


DROP TABLE if EXISTS "TeilwegRundweg";

CREATE TABLE "TeilwegRundweg" (
	"TeilwegRundweg_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Rundweg_ID" INTEGER, 
	"Teilweg_ID" INTEGER, 
	FOREIGN KEY ("Rundweg_ID") REFERENCES "Rundweg", 
	FOREIGN KEY ("Teilweg_ID") REFERENCES "Teilweg"
);


DROP TABLE if EXISTS "Tier";

CREATE TABLE "Tier" (
	"Tier_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Tierart_ID" INTEGER,
	"Tiername" VARCHAR(50),
	"Groesse" INTEGER, 
	"Gewicht" INTEGER, 
	"Geburtsdatum" DATE, 
	"Sterbedatum" DATE, 
	"Herkunft" VARCHAR(50), 
	"Im_Zoo_seit" DATE, 
	"Im_Zoo_bis" DATE, 
	"Im_Zoo_geboren" BOOLEAN, 
	"Vatertier" INTEGER, 
	"Muttertier" INTEGER, 
	"Vertraeglichkeit" INTEGER, -- ?
	"Bemerkung" VARCHAR(200), 
	"Geschlecht" BOOLEAN, 
	"Einheit_Groesse" VARCHAR(15),
	"Einheit_Gewicht" VARCHAR(15),
	FOREIGN KEY ("Tierart_ID") REFERENCES "Tierart", 
	FOREIGN KEY ("Vatertier") REFERENCES "Tier" ("Tier_ID"), 
	FOREIGN KEY ("Muttertier") REFERENCES "Tier" ("Tier_ID")
);


DROP TABLE if EXISTS "Tierart";

CREATE TABLE "Tierart" (
	"Tierart_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Gattung_ID" INTEGER,
	"Tierart" VARCHAR(50),
	"Natürlicher_Lebensraum" VARCHAR(50), 
	"Verhaltensweise" VARCHAR(50), 
	"Abstammug" VARCHAR(50), 
	"Verwandte_Arten" VARCHAR(50), 
	FOREIGN KEY ("Gattung_ID") REFERENCES "Gattung"
);



DROP TABLE if EXISTS "Tierarzt";

CREATE TABLE "Tierarzt" (
	"Tierarzt_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Anrede" VARCHAR(15), 
	"Titel" VARCHAR(15), 
	"Geschlecht" BOOLEAN, 
	"Vorname" VARCHAR(50), 
	"Nachname" VARCHAR(50), 
	"Strasse" VARCHAR(50), 
	"Hausnummer" INTEGER, 
	"PLZ" VARCHAR(15), 
	"Ort" VARCHAR(50), 
	"Land" VARCHAR(50), 
	"Telefonnummer_Festnetz" VARCHAR(25), 
	"Telefonnummer_Mobil" VARCHAR(25), 
	"Faxnummer" VARCHAR(25), 
	"Emailadresse" VARCHAR(50), 
	"Vertretung" INTEGER, 
	"Bemerkung" VARCHAR(200), 
	"Create" DATE, 
	"Modify" DATE, 
	"Praxis" VARCHAR(50)
);


DROP TABLE if EXISTS "TierGehege";

CREATE TABLE "TierGehege" (
	"TierGehege_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Tier_ID" INTEGER,
	"Gehege_ID" INTEGER, 
	FOREIGN KEY ("Tier_ID") REFERENCES "Tier", 
	FOREIGN KEY ("Gehege_ID") REFERENCES "Gehege"
);


DROP TABLE if EXISTS "TierMahlzeit";

CREATE TABLE "TierMahlzeit" (
	"TierMahlzeit_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Tier_ID" INTEGER,
	"Mahlzeit_ID" INTEGER,
	"Fütterungszeit" DATE, 
	FOREIGN KEY ("Tier_ID") REFERENCES "Tier", 
	FOREIGN KEY ("Mahlzeit_ID") REFERENCES "Mahlzeit"
);


DROP TABLE if EXISTS "TierMitarbeiter";

CREATE TABLE "TierMitarbeiter" (
	"TierMitarbeiter_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Tier_ID" INTEGER,
	"Mitarbeiter_ID" INTEGER,
	"Bemerkung" VARCHAR(200), 
	FOREIGN KEY ("Tier_ID") REFERENCES "Tier", 
	FOREIGN KEY ("Mitarbeiter_ID") REFERENCES "Mitarbeiter"
);


DROP TABLE if EXISTS "TierTierarzt";

CREATE TABLE "TierTierarzt" (
	"TierTierarzt_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Tier_ID" INTEGER,
	"Tierarzt_ID" INTEGER, 
	FOREIGN KEY ("Tier_ID") REFERENCES "Tier", 
	FOREIGN KEY ("Tierarzt_ID") REFERENCES "Tierarzt"
);


DROP TABLE if EXISTS "VertretungTierarzt"; -- Empfehl Change name to VertretungTierarzt

CREATE TABLE "VertretungTierarzt" (
	"VertretungTierarzt_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Tierarzt_ID" INTEGER,
	"Vertretung" INTEGER,
	"Grund" VARCHAR(100), 
	"Von" DATE, 
	"Bis" DATE,
	FOREIGN KEY ("Tierarzt_ID") REFERENCES "Tierarzt", 
	FOREIGN KEY ("Vertretung") REFERENCES "Tierarzt"
);

DROP TABLE if EXISTS "VertretungMitarbeiter";

CREATE TABLE "VertretungMitarbeiter" (
	"VertretungMitarbeiter_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Mitarbeiter_ID" INTEGER,
	"Vertretung" INTEGER, 
	"Grund" VARCHAR(100), 
	"Von" DATE, 
	"Bis" DATE, 
	FOREIGN KEY ("Mitarbeiter_ID") REFERENCES "Mitarbeiter"
);


-- Referanz Tabellen

DROP TABLE if EXISTS "Anrede";

CREATE TABLE "Anrede" (
	"Anrede_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Anrede" VARCHAR(25)
);


DROP TABLE if EXISTS "Titel";

CREATE TABLE "Titel" (
	"Titel_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Titel" VARCHAR(25)
);


DROP TABLE if EXISTS "Geschlect";

CREATE TABLE "Geschlect" (
	"Geschlect_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Geschlect" VARCHAR(15)
);


DROP TABLE if EXISTS "Nationalitaet";

CREATE TABLE "Nationalitaet" (
	"Nationalitaet_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Nationalitaet" VARCHAR(50)
);


DROP TABLE if EXISTS "Land";

CREATE TABLE "Land" (
	"Land_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Land" VARCHAR(50)
);



DROP TABLE if EXISTS "Soz_Status";

CREATE TABLE "Soz_Status" (
	"Soz_Status_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Soz_Status" VARCHAR(25)
);


DROP TABLE if EXISTS "Mwst"; 

CREATE TABLE "Mwst" ( 
	"Mwst_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	"Mwst_Satz" REAL -- Name veraenderung
);

DROP TABLE if EXISTS "PLZ_Ort";

CREATE TABLE "PLZ_Ort" ( 
	"PLZ_Ort_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"PLZ" VARCHAR(10), 
	"Ort" VARCHAR(50)
);


DROP TABLE if EXISTS "Einheit";

CREATE TABLE "Einheit" ( 
	"Einheit_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Einheit" VARCHAR(25)
);


DROP TABLE if EXISTS "Waehrung";

CREATE TABLE "Waehrung" ( 
	"Waehrung_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Waehrung" VARCHAR(15)
);


DROP TABLE if EXISTS "JaNein";

CREATE TABLE "JaNein" ( 
	"JaNein_ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"JaNein_Wert" BOOLEAN, 
	"JaNein" VARCHAR(15)
);