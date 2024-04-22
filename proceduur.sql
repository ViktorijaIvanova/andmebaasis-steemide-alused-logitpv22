CREATE DATABASE Ivanovaprocedure;
USE Ivanovaprocedure;

CREATE TABLE film(
filmID int PRIMARY KEY identity(1,1),
filmNimetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int);
select * from film;
--mockaroo.com

insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Little Miss Broadway', 201, 'Thorstein Krolik', 1992);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Dolphin Tale', 187, 'Patrizia Rozalski', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('The Feathered Serpent', 159, 'Felix Sheber', 1994);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Wicker Man, The', 167, 'Rori Verden', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Dying at Grace', 225, 'Zebulen Lafferty', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Cremaster 2', 295, 'Tabor Stean', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('(Absolutions) Pipilotti''s Mistakes ((Entlastungen) Pipilottis Fehler)', 215, 'Emmie Taynton', 1990);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Shock Waves', 277, 'Irita Silcox', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Face', 203, 'Emmerich De Giorgio', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('The Mule', 110, 'Enrika Shenton', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Blade of the Ripper', 198, 'Ansel Pattlel', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Left Behind', 138, 'Jerald Dragon', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Hunt, The (Jagten)', 274, 'Florie Greetland', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Australian Atomic Confessions', 243, 'Ondrea Causton', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Shootist, The', 186, 'Caye Mapholm', 2011);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Four-Faced Liar, The', 173, 'Jessi Tonbye', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('After Innocence', 232, 'Jodie Haacker', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Downloading Nancy', 192, 'York Shortland', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('I Am Michael', 131, 'Laurianne Gaiford', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Sinners and Saints', 216, 'Kirstin Simonsson', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Rid of Me', 295, 'Kettie Rowlings', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Deep Water', 103, 'Etty Thurner', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Horseman, The', 237, 'Wenona Pipes', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Summer in Berlin (Sommer vorm Balkon)', 170, 'Pattin Arnely', 1988);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Satyricon', 220, 'Ardene Khotler', 1993);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Val Lewton:  The Man in the Shadows', 273, 'Latrena Backshill', 1993);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Backstairs (Hintertreppe)', 204, 'Rosalia Boobier', 1993);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Justice League: Crisis on Two Earths', 165, 'Rosaline McIvor', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('African Queen, The', 116, 'Millard Lau', 1999);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Blue Like Jazz', 220, 'Inez Collishaw', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Naked Weapon (Chek law dak gung)', 237, 'Meredith Leban', 1985);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Reconstruction', 144, 'Jada Balthasar', 1996);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Starry Eyes', 159, 'Ryley Strothers', 1992);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Let It Snow', 225, 'Reese Stroulger', 1998);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Clown and the Kid, The', 193, 'Stephine Buckell', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Killing of America, The', 277, 'Maure Style', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Big Brown Eyes', 275, 'Sharline Warbys', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Repo Men', 114, 'Norry Menco', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Scream of Fear (a.k.a. Taste of Fear)', 193, 'Nissa Allworthy', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Weary River', 208, 'Serge Laurie', 2001);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Stuart Little', 240, 'Raddie Cannam', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Confessions (Kokuhaku)', 248, 'Elbertina Semeniuk', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Year of Living Dangerously, The', 110, 'Randolf Monnoyer', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Harakiri (Seppuku)', 223, 'Mylo Rands', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Guerrilla: The Taking of Patty Hearst', 275, 'Joane Luckwell', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Father of the Bride', 179, 'Rhona Ellse', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Getaway, The', 242, 'Aliza Kilvington', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('50 Worst Movies Ever Made, The', 228, 'Damien Moynham', 1999);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('One in a Million: The Ron LeFlore Story', 285, 'Lindie McRorie', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Shorts', 220, 'Yolanthe Brisker', 2005);
select * from film;

--filmiNimetusi otsing esimeśe tähe järgi
CREATE Procedure otsing1Taht
@taht char(1)
AS
Begin 
	SELECT * from film
	WHERE filmNimetus LIKE  CONCAT(@taht,'%');
End;
--käivitamine
EXEC otsing1Taht 'A';

--protseduur mis kustutab sisestatud id järgi
CREATE procedure kustutaFilm
@id int 
AS 
BEGIN
SELECT * FROM film;
DELETE FROM film WHERE filmID=@id;
SELECT * FROM film;
END;
EXEC kustutaFilm 42;

--proceduur, mis loeb filmide arv kokku
CREATE procedure FilmdeArv
AS
SELECT COUNT(*) AS 'filmide Arv' FROM film;
EXEC FilmdeArv;

--proceduur mis täitab tabeli film
CREATE procedure lisaFilm
@uusfilm varchar(50),
@kestvus int,
@rezisoor varchar(50),
@aasta int
AS
BEGIN
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values (@uusfilm, @kestvus,@rezisoor , @aasta);
SELECT * FROM film;
END;
EXEC lisaFilm 'Test', 222, 'Test', 2000;

--procedur, mis uuendab rezisööri andmed filmNimi järgi
CREATE procedure uuendaRezisorFilmis
@uusrezisoor varchar(50),
@filmNimetus varchar(50)
AS 
BEGIN
Select * from film;
UPDATE film SET rezisoor=@uusrezisoor
WHERE filmNimetus=@filmNimetus
Select * from film;
END;
EXEC uuendaRezisorFilmis 'Oskar Luts', 'Test';
