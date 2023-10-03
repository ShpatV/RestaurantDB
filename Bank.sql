Create Database Banka
use Banka

CREATE TABLE Banka (
	BankaID INT NOT NULL,
	Qyteti varchar(20) NOT NULL,
	Rruga varchar(20),
	ZipKodi char(5) NOT NULL,
	PRIMARY KEY (BankaID)
);
insert into Banka (BankaID , Qyteti , Rruga , ZipKodi)
values (1 , 'Prishtina' , 'Rruga B' , '10000'),
	   (2 , 'Ferizaj' , 'Ahmet Kaqiku' , '70000'),
	   (3 , 'Peje' , 'Hasan Prishtina' , '30000' ),
	   (4 , 'Mitrovica' , 'Tavnik' , '40000'),
	   (5 , 'Gjakova ' , 'Carshia Vjeter' , '50000'),
	   (6 , 'Prishtina' , 'Qyteza Pejton' , '10000'),
	   (7 , 'Gilan' , 'Agim Ramadani' , '60000'),
	   (8 , 'Prizeren' , 'Adem Jashari' , '20000'),
	   (9 , 'Ferizaj' , '12 Qershori' , '70000'),
	   (10 , 'Gilan' , 'Nuhi Berisha' , '60000'),
	   (11 , 'Prishtina' , 'Sheshi Nene Tereza' , '10000'),
	   (12 , 'Mitrovica' , 'Sheshi Isa Boletini' , '40000'),
	   (13 , 'Ferizaj' , 'Halil Alidemaj' , '70000'),
	   (14 , 'Peje' , 'Idriz Seferi' , '30000'),
	   (15 , 'Gjakov' , 'Filan Filani' , '50000')

CREATE TABLE Klienti (
	ID_Klienti INT NOT NULL ,
	Emri varchar(50) NOT NULL,
	Mbiemri varchar(50) NOT NULL,
	Datelindja DATE NOT NULL,
	BankaID INT NOT NULL,
	PagesaID INT NOT NULL,
	NrLlogaris INT NOT NULL,
	ID_Kredia INT NOT NULL,
	PRIMARY KEY (ID_Klienti)
);
ALTER TABLE Klienti ADD CONSTRAINT Klienti_fk0 FOREIGN KEY (BankaID) REFERENCES Banka(BankaID);
ALTER TABLE Klienti ADD CONSTRAINT Klienti_fk1 FOREIGN KEY (PagesaID) REFERENCES Pagesa(PagesaID);
ALTER TABLE Klienti ADD CONSTRAINT Klienti_fk2 FOREIGN KEY (ID_Kredia) REFERENCES Kredia(ID_Kredia);
ALTER TABLE Klienti ADD CONSTRAINT Klienti_fk3 FOREIGN KEY (NrLlogaris) REFERENCES Llogaria (NrLlogaris);

Insert into Klienti(ID_Klienti , Emri , Mbiemri , Datelindja , BankaID , PagesaID , ID_Kredia , NrLlogaris)
values (1 , 'Diamant' , 'Elezi' , '2001-09-19' , 2 ,3 , 1 , 1111),
	   (2 , 'Aurel' , 'Sylaj' , '2000-08-10' , 3 , 2 , 2 , 1111),
	   (3 , 'Filan' , 'Filani' , '1999-03-22' , 1 , 1 , 3 , 2222),
	   (4 , 'Bensik' , 'Qehaja' , '1997-04-12' , 4 , 4 ,4 , 3333),
	   (5 , 'Medina' , 'Shamolli' , '1998-05-20' , 5 , 5 , 5 , 4444),
	   (6 , 'Ramiz' , 'Hoxha' , '1992-10-20' , 6 , 5 , 6 , 3333 ),
	   (7 , 'Arber' , 'Kadriu' , '2000-01-04' ,7 , 6 , 6 , 2222),
	   (8 , 'Lavdim' , 'Menxhiqi' , '1997-03-07' , 8 ,1 , 2 , 1111 ),
	   (9 , 'Diellza' , 'Berisha' , '1998-06-09' , 9 , 1 , 1 , 5555),
	   (10 , 'Behar' , 'Haxhismajli' , '1999-11-11' , 10 , 4 ,1 , 5555),
	   (11 , 'Zhilbert' , 'Tafa' , '1999-05-05', 2 , 4 , 3 , 2222),
	   (12 , 'Bertan' , 'Karahoda' , '1993-03-24' , 13 , 6 , 6,1111),
	   (13 , 'Blerim' , 'Zylfiu' , '1990-05-29' , 12 , 5 ,1,2222),
	   (14, 'Muhamed' , 'Retkoceri' , '2000-07-17', 14 , 3 ,1 , 4444),
	   (15 , 'Shkelqim' , 'Berisha' , '1998-10-10' , 1 , 1 ,5 , 5555),
	   (16 , 'Egzon' , 'Jakupi' , '1992-09-19' , 3 ,3, 2 ,3333),
	   (17 , 'Aurela' , 'Sylejmani' , '1997-08-10' , 4 , 2 ,3 ,3333),
	   (18 , 'Filan' , 'Fisteki' , '1999-04-22' , 15 , 1 , 2,4444 ),
	   (19, 'Besim' , 'Qajtani' , '1998-04-12' , 14 , 6 , 1 ,4444),
	   (20 , 'Dren' , 'Beqa' , '1997-05-20' , 15 , 6 , 4 , 4444 ),
	   (21 , 'Ramize' , 'Hoxha' , '1992-10-20' , 6 , 6, 2 ,2222),
	   (22 , 'Arberesha' , 'Kadriu' , '1992-01-04' ,10 , 6 , 5,1111 ),
	   (23 , 'Hasan' , 'Menxhiqi' , '1997-03-07' , 2 ,5 ,6 , 5555),
	   (24 , 'Edmond' , 'Berisha' , '1998-06-09' , 9 , 1 , 5, 5555),
	   (25 , 'Behare' , 'Ismeti' , '1999-11-11' , 10 , 6,1 , 1111)

	   



CREATE TABLE Pagesa (
	PagesaID INT NOT NULL, 
	LlojiPageses varchar(50) NOT NULL,
	DitaPageses DATE ,
	DitaSkadimit DATE ,
	PRIMARY KEY (PagesaID)
);
insert into Pagesa (PagesaID , LlojiPageses , DitaPageses , DitaSkadimit)
values (1 , 'Pagesa ne banka tjera' , '2021-01-01' , '2021-02-02'),
	   (2 , 'Pagesa Brenda Bankes' , '2021-01-01' , '2021-05-05'),
	   (3 , 'Exchange' , '2021-01-01' , '2021-01-02'),
	   (4 , 'Deponim Terheqje te Parave' , '2021-01-01' , '2021-01-02'),
	   (5 , 'Pagesa Jashte Vendist' , '2021-01-01' , '2021-05-05'),
	   (6 , 'Pagesa te Checkeve' , '2021-01-01' , '2021-04-04'),
	   (7 , 'Pagesa Tjera', '2021-01-01', '2022-01-01')


CREATE TABLE Sporteli (
	Nr_Sporteli INT NOT NULL,
	LlojiSportelit varchar(50) NOT NULL UNIQUE,
	ID_Klienti INT NOT NULL,
	PagesaID INT NOT NULL,
	PRIMARY KEY (Nr_Sporteli)
);

ALTER TABLE Sporteli ADD CONSTRAINT Sporteli_fk0 FOREIGN KEY (ID_Klienti) REFERENCES Klienti (ID_Klienti);
ALTER TABLE Sporteli ADD CONSTRAINT Sporteli_fk1 FOREIGN KEY (PagesaID) REFERENCES Pagesa(PagesaID);

CREATE TABLE Llogaria (
	NrLlogaris INT NOT NULL,
	LlojiLlogaris VARCHAR(50) NOT NULL,
	Balanci INT  NOT NULL,
	PRIMARY KEY (NrLlogaris)
);
insert into Llogaria(NrLlogaris , LlojiLlogaris , Balanci )
values(1111,'llogari Rrjedhese',100000),
	  (2222,'llogari Page' , 80000),
	  (3333,'llogari Pensioni',50000),
	  (4444,'llogari Studentore',30000),
	  (5555,'llogari Kursimi' , 20000)



CREATE TABLE Sektori (
	ID_Sektori INT NOT NULL,
	Lloji_Sektorit varchar(50),
	Banka_ID INT NOT NULL,
	PRIMARY KEY (ID_Sektori)
);
Insert into Sektori (ID_Sektori , Lloji_Sektorit , Banka_ID)
	values (1 , 'Sektori Kredise' , 1),
		   (2 , 'Sektori Klientavee' , 1),
		   (3 , 'Sektori Biznesor' , 1),
		   (4 , 'Sektora Tjere' , 1)
	

CREATE TABLE SektoriKredis (
	Lloji_Sektorit varchar(50),
	ID_Sektori INT NOT NULL,
	PRIMARY KEY (ID_Sektori)
);

CREATE TABLE SektoriKlientave (
	Lloji_Sektorit varchar(50),
	ID_Sektori INT NOT NULL,
	PRIMARY KEY (ID_Sektori)
);

CREATE TABLE SektoriBiznesor (
	Lloji_Sektorit varchar(50),
	ID_Sektori INT NOT NULL,
	PRIMARY KEY (ID_Sektori)
);
ALTER TABLE Sektori ADD CONSTRAINT Sektori_fk0 FOREIGN KEY (Banka_ID) REFERENCES Banka(BankaID);

ALTER TABLE SektoriKredis ADD CONSTRAINT SektoriKredis_fk0 FOREIGN KEY (ID_Sektori) REFERENCES Sektori(ID_Sektori);

ALTER TABLE SektoriKlientave ADD CONSTRAINT SektoriKlientave_fk0 FOREIGN KEY (ID_Sektori) REFERENCES Sektori(ID_Sektori);

ALTER TABLE SektoriBiznesor ADD CONSTRAINT SektoriBiznesor_fk0 FOREIGN KEY (ID_Sektori) REFERENCES Sektori(ID_Sektori);

CREATE TABLE Kredia (
	ID_Kredia INT NOT NULL ,
	TipiKredis varchar(50) NOT NULL,
	Shuma INT NOT NULL,
	PRIMARY KEY (ID_Kredia)
);
insert into Kredia(ID_Kredia ,TipiKredis , Shuma )
values(1 , 'Kredi Biznesi' , 5000 ),
      (2 ,	'Kredi Hipotekare', 6000),
	  (3 , 'Kredi Bujqesore ' , 1000),
	  (4 , 'Kredi e te Rinjeve', 800 ),
	  (5 , 'Kredi Konsumatoreve' , 900),
	  (6 , 'Kredi Per investime' , 10000)


CREATE TABLE PagesaKredis (
	ID_Kredia INT NOT NULL,
	Nr_Pageses INT NOT NULL,
	DataPageses DATETIME NOT NULL,
	DataSkadimit DATETIME NOT NULL,
	PRIMARY KEY (ID_Kredia , Nr_Pageses)
);
insert into PagesaKredis(ID_Kredia , Nr_Pageses , DataPageses , DataSkadimit)
values(1 , 123,'2021-03-03' , '2024-03-03'),
	  (2 , 333,'2021-04-02' , '2025-02-15'),
      (3 , 432,'2021-05-01' , '2023-05-25'),
	  (4 , 525,'2021-06-04' , '2022-09-19'),
	  (5 , 678,'2021-06-13' , '2023-01-01'),
	  (6 , 777,'2021-07-01' , '2025-05-05')
ALTER TABLE PagesaKredis ADD CONSTRAINT PagesaKredis_fk0 FOREIGN KEY (ID_Kredia) REFERENCES Kredia(ID_Kredia);

CREATE TABLE Kompania (
	Kompania_ID INT NOT NULL,
	EmriKompanis varchar(50) NOT NULL,
	Qyteti Varchar(50) NOT NULL,
	BankaID INT NOT NULL,
	PRIMARY KEY (Kompania_ID)
);
insert into Kompania(Kompania_ID , EmriKompanis , Qyteti , BankaID)
values(1,'Eskavatori' , 'Ferizaj' , 2),
	  (2,'Rubin' , 'Ferizaj' , 2),
	  (3,'Alberti' , 'Prishtine' , 1),
	  (4,'Sherreti' , 'Prishtine' , 1),
	  (5,'Dardania' , 'Peje' , 3),
	  (6,'Metropol' , 'Mitrovice' , 4),
	  (7,'Dardha' , 'Gjakove' , 5),
	  (8,'Amra' , 'Gilan' , 7),
	  (9,'Drena' , 'Perzeren' , 8),
	  (10,'Obria' , 'Ferizaj' , 9)


ALTER TABLE Kompania ADD CONSTRAINT Kompania_fk0 FOREIGN KEY (BankaID) REFERENCES Banka(BankaID);

CREATE TABLE Pagesa_ne_Banka_Tjera (
	PagesaID INT NOT NULL,
	Lloji_Pageses varchar(50) NOT NULL,
	PRIMARY KEY (PagesaID)
);

CREATE TABLE Deponim_Terheqje_Te_Parave (
	PagesaID INT NOT NULL,
	Lloji_Pageses varchar(50) NOT NULL,
	
	PRIMARY KEY (PagesaID)
);

CREATE TABLE Pagesa_Brenda_Bankes (
	Lloji_Pageses varchar(50) NOT NULL,
	PagesaID INT NOT NULL,
	PRIMARY KEY (PagesaID)
);

CREATE TABLE Exchange (
	Lloji_Pageses varchar(50) NOT NULL,
	PagesaID INT NOT NULL,
	PRIMARY KEY (PagesaID)
);

CREATE TABLE Pagesa_Jasht_Vendit (
	Lloji_Pageses varchar(50) NOT NULL,
	PagesaID INT NOT NULL,
	PRIMARY KEY (PagesaID)
);

CREATE TABLE Pagesa_Te_Checkeve (
	Lloji_Pageses varchar(50) NOT NULL,
	PagesaID INT NOT NULL,
	PRIMARY KEY (PagesaID)
);
ALTER TABLE Pagesa_ne_Banka_Tjera ADD CONSTRAINT Pagesa_ne_Banka_Tjera_fk0 FOREIGN KEY (PagesaID) REFERENCES Pagesa(PagesaID);

ALTER TABLE Deponim_Terheqje_Te_Parave ADD CONSTRAINT Deponim_Terheqje_Te_Parave_fk0 FOREIGN KEY (PagesaID) REFERENCES Pagesa(PagesaID);

ALTER TABLE Pagesa_Brenda_Bankes ADD CONSTRAINT Pagesa_Brenda_Bankes_fk0 FOREIGN KEY (PagesaID) REFERENCES Pagesa(PagesaID);

ALTER TABLE Exchange ADD CONSTRAINT Exchange_fk0 FOREIGN KEY (PagesaID) REFERENCES Pagesa(PagesaID);

ALTER TABLE Pagesa_Jasht_Vendit ADD CONSTRAINT Pagesa_Jasht_Vendit_fk0 FOREIGN KEY (PagesaID) REFERENCES Pagesa(PagesaID);

ALTER TABLE Pagesa_Te_Checkeve ADD CONSTRAINT Pagesa_Te_Checkeve_fk0 FOREIGN KEY (PagesaID) REFERENCES Pagesa(PagesaID);


CREATE TABLE Kredit_Kartela (
	ID_Kartela INT NOT NULL,
	LlojiKarteles varchar(50) NOT NULL, 
	BankaID INT NOT NULL,
	PRIMARY KEY (ID_Kartela)
);
insert into Kredit_Kartela(ID_Kartela , LlojiKarteles , BankaID )
values (1, 'Kartel Biznesore' , 1 ),
	   (2, 'Kartel Studentore', 1),
	   (3, 'Kartel Gjitheperdorur', 1)
ALTER TABLE Kredit_Kartela ADD CONSTRAINT Kredit_Kartela_fk0 FOREIGN KEY (BankaID) REFERENCES Banka(BankaID);

CREATE TABLE Kryhen (
	ID_Klienti INT NOT NULL,
	PagesaID INT NOT NULL,
	PRIMARY KEY (ID_Klienti,PagesaID)
);
ALTER TABLE Kryhen ADD CONSTRAINT Kryhen_fk0 FOREIGN KEY (ID_Klienti) REFERENCES Klienti(ID_Klienti);

ALTER TABLE Kryhen ADD CONSTRAINT Kryhen_fk1 FOREIGN KEY (PagesaID) REFERENCES Pagesa(PagesaID);

CREATE TABLE Menaxheri (
	ID_Menaxheri INT NOT NULL,
	Emri varchar(50) NOT NULL,
	Mbiemri varchar(50) NOT NULL,
	Datelindja DATE NOT NULL,
	PRIMARY KEY (ID_Menaxheri)
);
insert into Menaxheri (ID_Menaxheri , Emri , Mbiemri , Datelindja)
values (4 , 'Lorik' , 'Asllani' , '1989-05-05' ),
	   (5 , 'Shemsi' , 'Kresha' , '1988-06-06' ),
	   (6 , 'Lorem' , 'Ispum' , '1989-05-05' ),
	   (7 , 'Dan' , 'Gashi' , '1988-06-06' ),
	   (8 , 'Gani' , 'Germia' , '1999-01-02'),
	   (10 , 'Agan' , 'Aliu' , '1999-01-02'),
	   (11 , 'Loris' , 'Agani' , '1989-05-05' ),
	   (12 , 'Shendrit' , 'Aliu' , '1988-06-06' ),
	   (13, 'Diamant' , 'Asllani' , '1989-05-05' )
	  

CREATE TABLE Puntori (
	PuntoriID INT NOT NULL,
	Emri varchar(50) NOT NULL,
	Mbiemri varchar(50) NOT NULL,
	Datelindja DATE NOT NULL,
	PRIMARY KEY (PuntoriID)
);
insert into Puntori (PuntoriID , Emri , Mbiemri ,Datelindja)
values (14 , 'Ismet' , 'Saliu' , '1992-06-06' ),
	   (18 , 'Agon' , 'Aliu' , '1999-01-02'),
	   (20 , 'Artan' , 'Aliti' , '1997-01-03'),
	   (66, 'Alban' , 'Hasani' , '1999-08-05' ),
	   (77 , 'Engjull' , 'Avdiu' , '1999-08-12' ),
	   (87 , 'Andis' , 'Bajrami' , '1989-09-30' ),
	   (93 , 'Bleona' , 'Duraku' , '1987-02-24' ),
	   (122 , 'Albin' , 'Beqiri' , '1995-03-01' ),
	   (345 , 'Erjon' , 'Januzi' , '1994-04-17' ),
	   (521 , 'Getoar' , 'Osmani' , '1993-07-07' ),
	   (541 , 'Rinesa' , 'Avdiu' , '1992-06-06' ),
	   (661 , 'Yll' , 'Veliu' , '1991-01-05' ),
	   (671 , 'Shkelqim' , 'Salihu' , '1993-07-20')

CREATE TABLE Ka(
	ID_Menaxheri INT NOT NULL,
	PuntoriID INT NOT NULL,
	Emri varchar(50) NOT NULL,
	Mbiemri varchar(50) NOT NULL,
	BankaID INT NOT NULL,
	PRIMARY KEY (ID_Menaxheri,PuntoriID)
);
ALTER TABLE Ka ADD CONSTRAINT Ka_fk0 FOREIGN KEY (BankaID) REFERENCES Banka(BankaID);

CREATE TABLE Puna (
	ID_Menaxheri INT NOT NULL,
	PuntoriID INT NOT NULL,
	PRIMARY KEY (ID_Menaxheri,PuntoriID)
);

ALTER TABLE Puna ADD CONSTRAINT Puna_fk0 FOREIGN KEY (PuntoriID) REFERENCES Puntori(PuntoriID);
ALTER TABLE Puna ADD CONSTRAINT Puna_fk1 FOREIGN KEY (ID_Menaxheri) REFERENCES Menaxheri(ID_Menaxheri);

CREATE TABLE Punojne_ne (
	PuntoriID INT NOT NULL,
	ID_Sektori INT NOT NULL,
	ID_Menaxheri INT NOT NULL,
	PRIMARY KEY (ID_Sektori,ID_Menaxheri,PuntoriID)
);


ALTER TABLE Punojne_ne ADD CONSTRAINT Punojne_ne_fk0 FOREIGN KEY (PuntoriID) REFERENCES Puntori(PuntoriID);
ALTER TABLE Punojne_ne ADD CONSTRAINT Punojne_ne_fk1 FOREIGN KEY (ID_Sektori) REFERENCES Sektori(ID_Sektori);
ALTER TABLE Punojne_ne ADD CONSTRAINT Punojne_ne_fk2 FOREIGN KEY (ID_Menaxheri) REFERENCES Menaxheri(ID_Menaxheri);

CREATE TABLE ATM (
	ATM_ID INT NOT NULL,
	Qyteti varchar(50) NOT NULL,
	Rruga varchar(50),
	BankaID INT NOT NULL,
	ID_Kartela INT NOT NULL,
	PRIMARY KEY (ATM_ID)
);
insert into ATM(ATM_ID,Qyteti,Rruga,BankaID,ID_Kartela)
values (1, 'Prishtine' , 'Rruga B' , 1 , 3),
		(2, 'Ferizaj' , 'Ahmet Kaqiku' , 2 , 3),
		(3, 'Peje' , 'Hasan Prishtina' , 3 , 3),
		(4 , 'Mitrovica' , 'Tavnik' ,  4 , 3),
		(5 , 'Gjakova ' , 'Carshia Vjeter' ,5,3),
		 (7 , 'Gilan' , 'Agim Ramadani' ,6,3),
	   (8 , 'Prizeren' , 'Adem Jashari' ,7,3)
		

ALTER TABLE ATM ADD CONSTRAINT ATM_fk0 FOREIGN KEY (BankaID) REFERENCES Banka(BankaID);
ALTER TABLE ATM ADD CONSTRAINT ATM_fk1 FOREIGN KEY (ID_Kartela) REFERENCES Kredit_Kartela(ID_Kartela);

CREATE TABLE Trezori (
	TrezoriID INT NOT NULL,
	Shuma INT NOT NULL,
	ID_Menaxheri INT NOT NULL,
	ATM_ID INT NOT NULL,
	PRIMARY KEY (TrezoriID)
);
insert into Trezori (TrezoriID , Shuma , ID_Menaxheri , ATM_ID)
values(1, 60000 , 4 , 1 ),
	  (2, 50000 ,5,2),
	  (3, 45000 ,6,3),
	  (4, 32000 ,7,4),
	  (5, 30000 ,8,5),
	  (6, 26000 ,10,7),
	  (7, 20000 ,11,8)

ALTER TABLE Trezori ADD CONSTRAINT Trezori_fk0 FOREIGN KEY (ID_Menaxheri) REFERENCES Menaxheri(ID_Menaxheri);
ALTER TABLE Trezori ADD CONSTRAINT Trezori_fk1 FOREIGN KEY (ATM_ID) REFERENCES ATM(ATM_ID);

UPDATE Klienti
SET Emri = 'Dardan' , Mbiemri = 'Fisteki' where ID_Klienti = 3;
UPDATE Klienti
SET Datelindja = '1999-01-09' where ID_Klienti = 1;
UPDATE Klienti
SET Emri = 'Bujar' , Mbiemri = 'Krasniqi' , BankaID = 11 where ID_Klienti = 25;
UPDATE Klienti 
Set Emri = 'Drenusha' , PagesaID = '5' where ID_Klienti = 20;
UPDATE Klienti 
Set Emri = 'Donat' , Mbiemri = 'Elezi' , BankaID = 12 , PagesaID = 1 , Datelindja = '1999-08-28' where ID_Klienti = 19;
UPDATE Banka 
SET Rruga = 'Shipol'  where BankaID = 4;
UPDATE Banka 
SET Qyteti = 'Skenderaj' , ZipKodi='10000' where BankaID=8;
UPDATE Banka 
SET Qyteti = 'Prizren' , Rruga ='Abi Carshia' , ZipKodi = '20000' where BankaID = 15;
UPDATE Pagesa 
SET LlojiPageses = 'Pagesa Brenda Bankes' where PagesaID = 1;
UPDATE Pagesa
Set LlojiPageses = 'Pagesa ne Banka Tjera' Where PagesaID = 2;
UPDATE Menaxheri 
SET Emri = 'Amar' where ID_Menaxheri = 4;
UPDATE Menaxheri 
SET Mbiemri = 'Sylejmani' where ID_Menaxheri = 5;
UPDATE Menaxheri
SET Datelindja = '1997-03-02' where ID_Menaxheri = 6;
UPDATE Menaxheri
SET Emri = 'Granit' ,  Mbiemri = 'Bajraktari' , Datelindja = '1998-09-09' where ID_Menaxheri = '8';
UPDATE Puntori
SET Emri = 'Aldon' where PuntoriID = 18;
UPDATE Puntori 
SET Emri = 'Albiona' , Mbiemri = 'Krasniqi'  where PuntoriID = 66;
UPDATE Puntori
SET Datelindja = '1996-06-06' where PuntoriID = 671;
UPDATE Puntori 
SET Emri = 'Besim' , Mbiemri = 'Idrizi' , Datelindja = '1991-01-01' where PuntoriID = 671;
UPDATE Sektori 
SET Lloji_Sektorit = 'Sektori Klientave' where ID_Sektori = 1;
UPDATE Sektori 
SET Lloji_Sektorit = 'Sektori Kredise' where ID_Sektori = 2;

delete from Banka where Rruga = 'Tavnik';
delete from Klienti where Emri = 'Filan';
delete from Pagesa where DitaPageses = '2021-12-31';
delete from Pagesa Where DitaSkadimit = '2022-01-01';
delete from Puntori where Emri = 'yll';
delete from Menaxheri where Datelindja = '1988-06-06';
delete from Sektori where Lloji_Sektorit = 'Sektora Tjere';
delete from Banka where Qyteti = 'Prizeren';
delete from Pagesa where LlojiPageses = 'Pagesa tjera';
delete from Klienti where Mbiemri = 'Hoxha';
delete from Puntori where Datelindja = '1988-06-06';

--faza e trete e projektit

--1 Query të thjeshta me nje relacion Diamant Elezi
--- te shfaqen te gjitha pikat e bankave perveq atyve me zip kod 70000
select Qyteti , Rruga 
from Banka
where NOT ZipKodi = '70000'

--- te shfaqen kredit me shume > 1000 
select k.TipiKredis, k.Shuma
from Kredia k
where k.Shuma > 1000

--- te shfaqen klientet me datelindje 1999-11-11
select k.ID_Klienti ,k.Emri , k.Mbiemri ,k.Datelindja
from Klienti k
where k.Datelindja = '1999-11-11'

-- te shfaqen menagjeret me mbiemrin aliu
select Emri , Mbiemri
from Menaxheri
where Mbiemri = 'Aliu'

-- te shfaqen pikat e bankave me zip kod 10000
select Qyteti , Rruga
from Banka
where ZipKodi = '10000'

--- te shfaqen kredit me shume ndermjet 800 dhe 5000
select *
from Kredia
where Shuma between 800 and 5000

--2 Query te thjeshta me dy e me shume relacione Diamant Elezi

--Te Shfaqen Klientet te cilet kan Daten e Lindjes ne mes 1992-01-01 dhe 1998-04-04 dhe Id e bankes te cilet jan te regjistruar
select k.Emri ,k.Mbiemri, b.BankaID
from Klienti k inner join Banka b on k.BankaID=b.BankaID
where k.Datelindja between '1992-01-01' and '1998-04-04'

--te shfaqet se ne cilen pik te bankes mund te  nxirret kartela e caktuar
Select kk.LlojiKarteles , b.bankaID , B.Qyteti
from Kredit_Kartela kk inner join Banka b on kk.BankaID=b.BankaID
where kk.LlojiKarteles = 'Kartel Biznesore'


-- te shfaqen klientet te cilen kan bere exchange te parave
Select  k.Emri , k.Mbiemri , p.PagesaID , p.LlojiPageses
from Klienti k right join Pagesa p on k.PagesaID = p.PagesaID
where  k.PagesaID = 3

--- te shfaqen gjithe klientet te cilet kane kredi mbi 1000 euro
select k.Emri, k.Mbiemri, kre.Shuma
from Klienti k, Kredia kre
where k.ID_Kredia=kre.ID_Kredia  and kre.Shuma >= 1000
order by kre.Shuma;

/*3. Të krijoni min. 8 query të avancuara (4 për student), të realizuara në minimum dy relacione (tabela) e më tepër. Diamant Elezi*/
--te shfaqen gjithe klientet me pagesa te rregullta me shume mbi 1000 euro poashtu emri ju fillon me A
select k.Emri, k.Mbiemri , kre.Shuma, COUNT(*) as [Klientet me Pagesa te rregullta]
from Klienti k inner join Kredia kre on k.ID_Kredia=kre.ID_Kredia
where k.Emri like 'a%' and kre.Shuma >= 1000
group by k.Emri, k.Mbiemri, kre.Shuma
order by [Klientet me Pagesa te rregullta]

---Te shfaqen gjithe menagjeret perkates per ruajten  e trezoreve me datelindje ne mes 1998  dhe 1999
select t.TrezoriID, m.Emri, m.Mbiemri ,m.Datelindja, count(m.ID_Menaxheri) as [nr i personit qe ploteson kushtin]
from Trezori t, Menaxheri m 
where t.ID_Menaxheri=m.ID_Menaxheri 
and m.Datelindja Between '1988-09-09' and '1999-02-02'
group by m.Emri, m.Mbiemri, m.Datelindja , t.TrezoriID
order by [nr i personit qe ploteson kushtin]

---Te Shfaqen Klientet te cilet kan kryer pagesat ne daten perkatese dhe ne shume mbi 2000 , poashtu dhe llojin e kredis qe kan paguar dhe te renditen nga data me hershme e skadimit te pagese
select k.Emri,k.Mbiemri,p.DitaPageses,p.PagesaID,kre.TipiKredis,kre.Shuma, min(p.DitaSkadimit) as [Data e skadimit te Pageses]
from Klienti k right join Pagesa p on k.PagesaID=p.PagesaID
right join Kredia kre on k.ID_Kredia=kre.ID_Kredia
where kre.Shuma > 2000
group by k.Emri,k.Mbiemri,p.DitaPageses,p.PagesaID,kre.TipiKredis,kre.Shuma
having min(p.DitaSkadimit)> '2021-02-02'
order by [Data e skadimit te Pageses]

--Te shfaqen te gjitha kompanit perkatese te cilat jan te antaresuara ne bankat  me lokacionin P
select distinct kmp.Kompania_ID, kmp.EmriKompanis, kmp.Qyteti, b.BankaID, b.ZipKodi, count(b.BankaID) as [numri i Kompanive me lokacion p..]
from Kompania kmp left join Banka b on kmp.BankaID=b.BankaID
where kmp.Qyteti like 'p%'
group by kmp.Kompania_ID, kmp.EmriKompanis, kmp.Qyteti, b.BankaID, b.ZipKodi
order by [numri i Kompanive me lokacion p..] 

/*4. Të krijoni min. 8 subquery të thjeshta (4 për student). Diamant Elezi*/
-- te shfaqen klientit me lokacion ne ferizaj poashtu dhe klientin me te ri ne moshe
select k.ID_Klienti, k.Datelindja , k.Emri,  k.Mbiemri,b.Qyteti 
from Banka b  join Klienti k on k.BankaID=b.BankaID
where b.Qyteti like 'Ferizaj'		
						(select max(k.Datelindja)from Klienti k) 

--- shkruani nje query ku do shfaqen menagjeret perkates te trezoreve me id <= 10
 select m.Emri, m.Mbiemri ,m.ID_Menaxheri 
 from Menaxheri m
 where ID_Menaxheri IN (select t.ID_Menaxheri
               from Trezori t 
where ID_Menaxheri <=10)
--te shfaqen lloji atm dhe bankat me lokacion me shkronjen e pare p si dhe llojin e karteles  perkatese poashtu Atm e fundit sipas ID
select kk.BankaID, kk.LlojiKarteles  ,a.Qyteti ,a.ATM_ID  
from Kredit_Kartela kk left join ATM a on a.ID_Kartela=kk.ID_Kartela
where a.Qyteti like 'p%'(select max(a.ATM_ID)
from ATM a);

--- te shfaqen trezoret dhe atm te mbushura nga trezoret me vlere ndermjet 26000 dhe 60000 , poashtu te shfaqet shuma me e vogel e gjitha trezoreve
select t.TrezoriID, a.Qyteti,a.BankaID,t.Shuma,a.ATM_ID
from Trezori t right join ATM a on t.ATM_ID = a.ATM_ID
where t.Shuma between 26000 and 60000 (select min(t.Shuma)
from Trezori t);


/*5. Të krijoni min. 8 subquery të avancuara (4 për student). (min. 1 subquery në klauzolën
    SELECT, dhe min. 1 subquery ne klauzolën FROM)*/

---Te shfaqen pagesat e kredive dhe tipet e kredive  me data te caktuara dhe me shume >5000
select pk.Nr_Pageses, k.TipiKredis , pk.DataSkadimit,k.Shuma, pk.DataPageses
from Kredia k, PagesaKredis pk
where k.ID_Kredia=pk.ID_Kredia
and Shuma < ALL
       (select Shuma
from Kredia
where k.ID_Kredia IN
           (select pk.ID_Kredia
from PagesaKredis 
where Shuma > 5000))


---te shfaqen  klientet , me ID e bankes >4 
SELECT b.BankaID , k.ID_Klienti , k.Emri, k.Mbiemri ,b.Qyteti,b.ZipKodi
FROM Klienti k , Banka b
WHERE k.BankaID=b.BankaID
and k.ID_Klienti IN       
					(SELECT BankaID
					FROM Banka b 
					where b.BankaID=k.BankaID)
Group by b.BankaID , k.ID_Klienti , k.Emri, k.Mbiemri ,b.Qyteti,b.ZipKodi
Having sum(b.BankaID)>4
order by b.BankaID

-- Te shfaqen gjitha Kompanit me Id te bankes >5
SELECT b.BankaID, kmp.EmriKompanis  , kmp.Qyteti , b.Rruga 
FROM Kompania kmp JOIN Banka b
on kmp.BankaID = b.BankaID
where kmp.Kompania_ID not in                                
					(SELECT BankaID 
					FROM Banka b
					Where BankaID > 5)
Group by kmp.Kompania_ID, b.BankaID,kmp.EmriKompanis , kmp.Qyteti , b.Rruga 
order by   kmp.Kompania_ID  asc


--Te shfaqen gjthe menagjeret ti cilet jane perkates per trezoret  dhe jane te renditur nga me i vjetri
SELECT t.TrezoriID, m.Emri,m.Mbiemri  , m.Datelindja
FROM Menaxheri m inner join Trezori t 
on t.ID_Menaxheri=m.ID_Menaxheri
where EXISTS
						(SELECT count (ID_Menaxheri)
						FROM Menaxheri m
						where  t.ID_Menaxheri = m.ID_Menaxheri
						GROUP BY ID_Menaxheri)
						order by Datelindja asc

/*6.Të krijoni min. 8 query/subquery (4 për student). Duke përdorur operacionet e algjebrës
relacionale (Union, Prerja, diferenca, etj.) Diamant Elezi*/

--- te shfaqen emmrat e puntoreve dhe menagjereve
select Emri from Puntori
UNION ALL
select Emri from Menaxheri
order by Emri;

---te shfaqen  emrat dhe mbiemrat e puntoreve dhe menagjerve te cilieve emri ju fillion me d
SELECT p.PuntoriID , p.Emri , p.Mbiemri
FROM Puntori p
			UNION
				(SELECT m.ID_Menaxheri , m.Emri , m.Mbiemri
				from Menaxheri m
				where Emri like 'd%')

--- te shfaqen klientet me kredi perveq atyve  qe kan kredi bujqesore
SELECT k.ID_Klienti ,k.Emri 
from Klienti k
		EXCEPT
				(Select kr.ID_Kredia , kr.TipiKredis  
				FROM Kredia kr
				where kr.Id_Kredia = 3)


--- te shfaqen id te klienteve te cilet jan ne piken e bankes me zip kod 10000
SELECT ID_Klienti 
FROM Klienti 
			INTERSECT
				(SELECT BankaID 
				FROM Banka 
				WHERE ZipKodi='10000')

----Procedurat

	Create Procedure GetKreditKartela
	as
	begin
	select *
	from Kredit_Kartela
	end

	execute GetKreditKartela



	CREATE PROCEDURE spHappTrezorin
	@Shuma  int
	AS
	BEGIN
	SELECT *
	from Trezori t
	where t.Shuma = @Shuma
	END

	execute spHappTrezorin 
	@Shuma = 32000 



	create procedure ShfaqKompanin
	@Qyteti varchar (50)
	as
	Begin
	Select*
	from Kompania k
	where k.Qyteti=@Qyteti
	END

	execute ShfaqKompanin
	@Qyteti = 'Ferizaj'



	create procedure GetKlienti
	@muaji int
	as
	begin
	select * 
	from Klienti k
	where DATEPART (m , k.Datelindja) = @muaji
	end

	execute GetKlienti 
	@muaji = 09

