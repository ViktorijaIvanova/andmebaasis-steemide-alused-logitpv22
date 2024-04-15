--git cmd
--git clone ....
--git andmebaasid
--git add .
--git commit -a -m "tabel ... on loodud"
CREATE DATABASE kinoteatrIvanova;
Use kinoteatrIvanova;

--tabel filmtype
CREATE TABLE filmType(
	filmTypeID int Primary key identity(1,1),
	filmType varchar(25),
	kirjeldus TEXT);
select * from filmType;
INSERT INTO filmType (filmType, kirjeldus)
VALUES ('5D','vaga põnev,kasuta prillid');

CREATE TABLE film(
	filmID int Primary key identity(1,1),
	filmNimetus varchar(25),
	zanrID int,
	pikkus int,
	rezisorID int,
	filmTypeId int);
--eklaam image);
Update film SET zanrID=1;
Update film SET filmTypeId=1;
Update film SET rezisorID=1;
INSERT INTO film (filmNimetus, pikkus)
VALUES ('kiosk', '3');
select * from film;
--FK: film-->filmType
ALTER TABLE film ADD FOREIGN KEY (filmTypeId) references filmType(filmTypeID);
ALTER TABLE film ADD FOREIGN KEY (zanrID) references zanr(zanrid);
ALTER TABLE film ADD FOREIGN KEY (rezisorID) references rezisor(rezisorID);
select * from filmType;
select * from film;

CREATE TABLE zanr(
	zanrID int Primary key identity(1,1),
	zanrNimi varchar(25),
	zanrKirjeldus TEXT);
INSERT INTO zanr (zanrNimi, zanrKirjeldus)
VALUES ('komoodia', 'vaga ilus');


CREATE TABLE piletiMyyk(
	piletiMyykID int Primary key identity(1,1),
	kogus int,
	kinokavaID int);
INSERT INTO piletiMyyk (kogus)
VALUES ('2');
Update piletiMyyk SET kinokavaID=4;

ALTER TABLE piletiMyyk ADD FOREIGN KEY (kinokavaID) references kinokava(kinokavaID);


CREATE TABLE kinokava(
	kinokavaID int Primary key identity(1,1),
	kuupaev DATETIME,
	filmNimetus int,
	piletihind int);
INSERT INTO kinokava (kuupaev, filmNimetus, piletihind)
VALUES ('10-02-2021', '1', '3');
ALTER TABLE kinokava ADD filmID int;
Update kinokava SET filmID=2;
ALTER TABLE kinokava ADD FOREIGN KEY (filmID) references film(filmID);

CREATE TABLE rezisor(
	rezisorID int Primary key identity(1,1),
	eesnimi varchar(25),
	perenimi varchar(25));
INSERT INTO rezisor(eesnimi, perenimi)
VALUES ('anna', 'karenina');
select * from rezisor;
select * from kinokava;
select * from piletiMyyk;
select * from zanr;
select * from filmType;
select * from film;


