--tee uus branch nimega sqlLaused
--kopeeri failisisu oma repositooriumi uue branch'i alla
-- tee k�ik �lesanded l�bi SQL Server'is
--K�sim�rki asemel pane vastav kommentaar ja tee git add . ja git commit -a -m " kommentaar"

-- db loomine
create database LOGITpv22


--git add .
--git commit -a -m "db loomine"
use LOGITpv22;
--minge sellesse andmebaasi
create table Gender
(
Id int NOT NULL primary key,
Gender nvarchar(10) not null
)
--loomine tabeli Gender
Select * from Gender;
--kirjutame select ja vaata tabeli

create table Person
(
Id int not null primary key,
Name nvarchar(25),
Email nvarchar(30),
GenderId int
)

--- andmete sisestamine tabelisse
insert into Gender (Id, Gender)
values (1, 'Female')
insert into Gender (Id, Gender)
values (2, 'Male')
--lisage tabelisse veerud

--add constraint-lisab tabeli loomisel piirangu,siin on n�iteks v�ljal piirang id
alter table Person add constraint tblPerson_GenderId_FK
foreign key (GenderId) references Gender(Id)


-- sisestame andmed
insert into Person (Id, Name, Email, GenderId)
values (1, 'Supermees', 's@s.com', 2)
insert into Person (Id, Name, Email, GenderId)
values (2, 'Wonderwoman', 'w@w.com', 1)
insert into Person (Id, Name, Email, GenderId)
values (3, 'Batman', 'b@b.com', 2)
insert into Person (Id, Name, Email, GenderId)
values (4, 'Aquaman', 'a@a.com', 2)
insert into Person (Id, Name, Email, GenderId)
values (5, 'Catwoman', 'c@c.com', 1)
insert into Person (Id, Name, Email, GenderId)
values (6, 'Antman', 'ant"ant.com', 2)
insert into Person (Id, Name, Email, GenderId)
values (7, 'Spiderman', 'spider@spiderman.com', 2)

-- vaatame tabeli andmeid
select * from Person

--- v��rv�tme piirangu maha v�tmine
alter table Person
drop constraint tblPerson_GenderId_FK

--sisestame v��rtuse tabelisse
insert into Gender (Id, Gender)
values (3, 'Unknown')
--lisame v��rv�tme uuesti
alter table Person
add constraint DF_Person_GenderId
default 3 for GenderId


---- 2 tund

select * from Person
select * from Gender

insert into Person (Id, Name, Email)
values (8, 'Test', 'Test')

--- lisame uue veeru tabelisse
alter table Person
add Age nvarchar(10)

-- uuendame andmeid
update Person
set Age = 149
where Id = 8

--add constraint __ check- kontrollib, kas kirjed t��tavad uue piirangu lisamisel
alter table Person
add constraint CK_Person_Age check (Age > 0 and Age < 150)

insert into Person (Id, Name, Email, GenderId, Age)
values (9, 'Test', 'Test', 2, 16)
--siin oli viga, kirjas oli 160 ja vanus ei tohi olla suurem kui 150

--go- Saadab k�su k�igi eelnevate SQL-lausete t�itmiseks
select * from Person
go
delete from Person where Id = 8
go
select * from Person

---lisame veeru juurde
alter table Person
add City nvarchar(25)

--tahame tead k�iki, kes elavad Gothami linnas 
select * from Person where City = 'Gotham'
--k�ik, kes ei ela Gothamis
select * from Person where City <> 'Gotham'
select * from Person where City != 'Gotham'

--n�itab teatud vanusega inimesi
select *from Person where Age = 100 or 
Age = 50 or Age = 20
select * from Person where Age in (100, 50, 20)

---n�itab teatud vanusevahemikus olevaid inimesi
select * from Person where Age between 30 and 50

---wildcard e n�itab k�ik g-t�hega linnad
select * from Person where City like 'n%'
select * from Person where Email like '%@%'

-- n�itab k�iki, kellel ei ole @-m�rki emailis
select * from Person where Email not like '%@%'

--- n�itab, kelle on emailis ees ja peale @-m�rki
-- ainult �ks t�ht
select * from Person where Email like '_@_.com'

--like '[^WAS]%' t�hendab, et otsime veerust Name ridu, mis algavad mis tahes t�hega peale W, A ja S.
select * from Person where Name like '[^WAS]%'
---Select * from Person where (City = 'Gotham' v�i City = 'New York') ja Age >= 40 p�ring tagastab k�ik tabelist Isik olevad read, kus on j�rgmised tingimused:Veeru City v��rtus on kas �Gotham� v�i �New York� ja veeru Vanus v��rtus on suurem kui 40 v�i sellega v�rdne.
select * from Person where (City = 'Gotham' or City = 'New York')
and Age >= 40

--- v�tab kolm esimest rida
select top 3 * from Person

---kolm esimest, aga tabeli j�rjestus on Age ja siis Name
select * from Person
select top 3 Age, Name from Person

---n�itab esimesed 50% tabelis
select top 50 percent * from Person
--order by cast- sorteerib p�ringutulemusi
select * from Person order by cast(Age as int)
select * from Person order by Age

--arvutab tabeli k�igi kirjete vanuste summa
select sum(cast(Age as int)) from Person

--- kuvab k�ige nooremat isikut
select min(cast(Age as int)) from Person
--- k�ige vanem isik
select max(cast(Age as int)) from Person

select City, sum(cast(Age as int)) as TotalAge from Person group by City





--- tund 3

---loome uued tabelid
create table Department
(
Id int primary key,
DepartmentName nvarchar(50),
Location nvarchar(50),
DepartmentHead nvarchar(50)
)

create table Employees
(
Id int primary key,
Name nvarchar(50),
Gender nvarchar(10),
Salary nvarchar(50),
DepartmentId int
)

--andmete lisamine tabelisse
insert into Department (Id, DepartmentName, Location, DepartmentHead)
values (1, 'IT', 'London', 'Rick')
insert into Department (Id, DepartmentName, Location, DepartmentHead)
values (2, 'Payroll', 'Delhi', 'Ron')
insert into Department (Id, DepartmentName, Location, DepartmentHead)
values (3, 'HR', 'New York', 'Christie')
insert into Department (Id, DepartmentName, Location, DepartmentHead)
values (4, 'Other Deparment', 'Sydney', 'Cindrella')

select * from Department

insert into Employees (Id, Name, Gender, Salary, DepartmentId)
values (1, 'Tom', 'Male', 4000, 1)
insert into Employees (Id, Name, Gender, Salary, DepartmentId)
values (2, 'Pam', 'Female', 3000, 1)
insert into Employees (Id, Name, Gender, Salary, DepartmentId)
values (3, 'John', 'Male', 3500, 1)
insert into Employees (Id, Name, Gender, Salary, DepartmentId)
values (4, 'Sam', 'Male', 4500, 2)
insert into Employees (Id, Name, Gender, Salary, DepartmentId)
values (5, 'Todd', 'Male', 2800, 1)
insert into Employees (Id, Name, Gender, Salary, DepartmentId)
values (6, 'Ben', 'Male', 7000, 1)
insert into Employees (Id, Name, Gender, Salary, DepartmentId)
values (7, 'Sara', 'Female', 4800, 3)
insert into Employees (Id, Name, Gender, Salary, DepartmentId)
values (8, 'Valarie', 'Female', 5500, 1)
insert into Employees (Id, Name, Gender, Salary, DepartmentId)
values (9, 'James', 'Male', 6500, NULL)
insert into Employees (Id, Name, Gender, Salary, DepartmentId)
values (10, 'Russell', 'Male', 8800, NULL)

select * from Employees

---Iga tulemuse rida sisaldab unikaalset Name ja DepartmentId v��rtuste paari.
select distinct Name, DepartmentId from Employees

---arvutab palgav��rtuste summa
select sum(cast(Salary as int)) from Employees
---arvutab miinimumpalga v��rtuse k�igi tabeli kannete hulgast Employees
select min(cast(Salary as int)) from Employees


alter table Employees
add City nvarchar(25)


alter table Employees
add DepartmentId
int null
--siin on viga, kuna veerg departmentId on juba olemas


--lisab tabelisse T��tajad uue veeru MiddleName, mis salvestab stringiv��rtusi maksimaalse pikkusega 30 t�hem�rki.
alter table Employees
add MiddleName nvarchar(30)

alter table Employees
add LastName nvarchar(30)

update Employees set Name = 'Tom', MiddleName = 'Nick', LastName = 'Jones'
where Id = 1
update Employees set Name = 'Pam', MiddleName = NULL, LastName = 'Anderson'
where Id = 2
update Employees set Name = 'John', MiddleName = NULL, LastName = NULL
where Id = 3
update Employees set Name = 'Sam', MiddleName = NULL, LastName = 'Smith'
where Id = 4
update Employees set Name = NULL, MiddleName = 'Todd', LastName = 'Someone'
where Id = 5
update Employees set Name = 'Ben', MiddleName = 'Ten', LastName = 'Sven'
where Id = 6
update Employees set Name = 'Sara', MiddleName = NULL, LastName = 'Connor'
where Id = 7
update Employees set Name = 'Valarie', MiddleName = 'Balerine', LastName = NULL
where Id = 8
update Employees set Name = 'James', MiddleName = '007', LastName = 'Bond'
where Id = 9
update Employees set Name = NULL, MiddleName = NULL, LastName = 'Crowe'
where Id = 10
--siin on viga, tuleb kirjutada lihtsalt name, mitte firstname


--- igast reast v�tab esimeses veerus t�idetud lahtri ja kuvab ainult seda
select Id, coalesce(Name, MiddleName, LastName) as Name
from Employees
--siin kirjutame ka lihtsalt name

select * from Employees
select * from Department





--- loome stored procedure, mis kuvab vaate
create procedure spGetEmployees
as begin
	select Name, Gender from Employees
end

spGetEmployees
exec spGetEmployees
execute spGetEmployees

--- protseduur v�tab kaks parameetrit ja tagastab nimekirja t��tajatest, kelle m��ratud sugu ja osakonna identifikaator �htivad l�bitud parameetri v��rtustega.
create proc spGetEmployeesByGenderAndDepartment
@Gender nvarchar(20),
@DepartmentId int
as begin
	select Name, Gender, DepartmentId from Employees where Gender = @Gender
	and DepartmentId = @DepartmentId
end

--- k�ik esimeses osakonnas meessoost t��tavad isikud
spGetEmployeesByGenderAndDepartment 'Male', 1

spGetEmployeesByGenderAndDepartment @DepartmentId =  1, @Gender = 'Male'



--protseduur v�tab parameetri ja tagastab teatud soost t��tajate arvu.
create proc spGetEmployeeCountByGender
@Gender nvarchar(20),
@EmployeeCount int output
as begin
	select @EmployeeCount = count(Id) from Employees where Gender = @Gender
end

-- annab teada, palju on meessoost isikuid ning kuvab vastava stringi
declare @TotalCount int
exec spGetEmployeeCountByGender 'Female', @TotalCount out
if(@TotalCount = 0)
	print '@TotalCount is null'
else
	print '@TotalCount is not null'
print @TotalCount

-- annab teada, palju on meessoost isikuid
declare @TotalCount int
exec spGetEmployeeCountByGender @EmployeeCount = @TotalCount out, @Gender = 'Male'
print @TotalCount

---arvutab tabelis olevate kirjete (t��tajate) koguarvu
create proc spTotalCount2
@TotalCount int output
as begin
	select @TotalCount = count(Id) from Employees
end
--- k�ivitame sp
declare @TotalEmployees int
execute spTotalCount2 @TotalEmployees output
select @TotalEmployees

--- protseduur v�imaldab saada t��taja nime tema tunnuse j�rgi
create proc spGetNameById1
@Id int,
@FirstName nvarchar(50) output
as begin
	select @FirstName = Name from employees where Id = @Id
end

--?
declare @FirstName nvarchar(50)
execute spGetNameById1 6, @FirstName output
print 'Name of the employee = ' + @FirstName

--?
create proc spGetNameById2
@Id int
as begin
	return (select FirstName from Employees where Id = @Id)
end

-- ?
declare @EmployeeName nvarchar(50)
exec @EmployeeName = spGetNameById2 1
print 'Name of the employee = ' + @EmployeeName

select * from Employees