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
