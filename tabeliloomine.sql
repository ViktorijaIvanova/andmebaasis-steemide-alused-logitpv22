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
SELECT * FROM opilane;