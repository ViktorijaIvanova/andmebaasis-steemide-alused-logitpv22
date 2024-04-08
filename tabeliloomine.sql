SQL SERVER MANAGEMENT STUUDIO

https://meet.google.com/

--ab loomine
Use IvanovaLOGITpv22;
--tabeli loomine
Create table opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aaddress TEXT,
sisseastumis_kp date 
);
-- primary key -primaarne võti mis annab unukaalssus
--identity(1,1) -määrab igaühele oma numbri 
--kuva kõik mis on tabelis
SELECT * FROM opilane;
--andmete lisamine 
INSERT INTO opilane(eesnimi, perenimi, isikukood, aaddress, sisseastumis_kp)
VALUES('Kari', 'Fudova', '60604120291', 'Tallinn', '2022-08-28');
SELECT * FROM opilane;
---------------------------------------
CREATE TABLE Language
(
ID int NOT NULL PRIMARY KEY,
Code char(3) NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
Percentage decimal(5,2)
); 
--tabeli andmete lisamine
SELECT * FROM Language;
INSERT INTO Language (ID, Code, Language, IsOfficial, Percentage)
VALUES (100, 'EST', 'Eesti', 1, 80.5)
-- TABELI STRUKTUURI MUUTMINE 
ALTER TABLE Language ADD Capital varchar(20);
--veergu kustutamine 
ALTER TABLE Language DROP COLUMN Capital;
ALTER TABLE Language ADD Capital varchar(20);
INSERT INTO Language (ID, Code, Language, IsOfficial, Percentage, Capital)
VALUES (101, 'FIN', 'Soome', 1, 90.5, 'Helsinki');
--uuendamine 
UPDATE Language SET Capital='Tallinn'
WHERE ID=100;
