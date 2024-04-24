CREATE TABLE film (
  filmID int primary key AUTO_INCREMENT
  filmnimetus varchar(50),
  kestvus int,
  rezisorID varchar(50),
  v_aasta int;

--uue protseduuri
DELIMITER $$
CREATE PROCEDURE `otsing1Taht`(IN `taht` CHAR(1) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER
Begin 
	SELECT * from film
	WHERE filmNimetus LIKE  CONCAT(@taht,'%');
End;



--protseduuri käivitamine
CALL otsing1Taht ('F');

--filmi kustutamone
CREATE PROCEDURE `kustutaFilm`(IN `id` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
	BEGIN SELECT * FROM film; 
DELETE FROM film WHERE filmID=id;
SELECT * FROM film; 
END; 
--проверяем через teosta


--
CREATE PROCEDURE `FilmdeArv`() NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN SELECT COUNT(*) AS 'filmide Arv' FROM film; END 

Call 'FilmdeArv'();
--
CREATE PROCEDURE `lisaFilm` NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values (uusfilm, kestvus,rezisoor , aasta); SELECT * FROM film; END


--
CREATE PROCEDURE `uuendaRezisorFilmis`(IN `uusrezisoor` VARCHAR(50), IN `filmNimetus` VARCHAR(50)) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN Select * from film WHERE filmNimetus='filmnimi'; UPDATE film SET rezisoor=uusrezisoor WHERE filmNimetus=filmNimetus; Select * from film where filmNimetus='filmNimi'; END; 
