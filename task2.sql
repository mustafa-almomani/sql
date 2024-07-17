create database jaradat_tec
create table Categories 
(
ID int primary key identity(1,1),
name varchar(255)
);
create table Authors 
(
ID int primary key identity(1,1),
name varchar(255)
);
create table Sections 
(
ID int primary key identity(1,1),
name varchar(255)
);

create table USERS
(
ID int primary key identity(1,1),
name varchar(255)
);
create table BOOKS
(
ID int primary key identity(1,1),
name varchar(255),
ID_USER int FOREIGN KEY REFERENCES USERS (ID),
ID_Categories int FOREIGN KEY REFERENCES Categories (ID),
);
create table EMPLOYEE
(
ID int primary key identity(1,1),
name varchar(255),
ID_Sections int UNIQUE  FOREIGN KEY REFERENCES Sections (ID)
);


create table Categories_Sections
(
ID_Categories int FOREIGN KEY REFERENCES Categories (ID),
ID_Sections int  FOREIGN KEY REFERENCES Sections (ID)

);
create table BOOKS_Authors
(
ID_BOOKS int FOREIGN KEY REFERENCES BOOKS (ID),
ID_Authors int FOREIGN KEY REFERENCES Authors (ID)
);


SET IDENTITY_INSERT Authors ON
GO
INSERT INTO Authors (Name)
VALUES 
('Author A'), 
('Author B'), 
('Author C'), 
('Author D'), 
('Author E');

SET IDENTITY_INSERT Authors  OFF;
SET IDENTITY_INSERT Categories  OFF;
SET IDENTITY_INSERT Sections  OFF;
SET IDENTITY_INSERT EMPLOYEE  OFF;
SET IDENTITY_INSERT USERS  OFF;
SET IDENTITY_INSERT BOOKS  OFF;


insert into Categories  values ('Mystery'),  ('Biography'), ('Physics'),('World History'),( 'Fairy Tales');
insert into Sections  values ('Fiction'),('Non-Fiction'),('Science'),('History'),('Children');
insert into EMPLOYEE  values ('EMPLOYEE 1',1),('EMPLOYEE2 ',2),('EMPLOYEE3 ',3),('EMPLOYEE4 ',4),('EMPLOYEE5 ',5);
insert into USERS  values ('USERS 1'),(  'USERS 2'),(  'USERS 3'),( 'USERS 4'),(  'USERS 5');
insert into BOOKS (name) values ('MUSTAFA'),  ('MALIK'),  ('QUSAI'), ('NOOR'), ( 'ALI');



SELECT ID_Sections ,c.name ,c.ID ,e.ID,e.name
FROM Sections c
INNER JOIN EMPLOYEE e ON  c.ID = e.ID ;



SELECT *
FROM Authors
FULL OUTER JOIN BOOKS
ON BOOKS.ID = Authors.id;


SELECT *
FROM USERS
LEFT JOIN Categories
ON Categories.id =USERS.id ;


SELECT *
FROM BOOKS_Authors
RIGHT JOIN BOOKS
ON BOOKS.id = BOOKS_Authors.ID_Authors;

select Authors.name , BOOKS.name
from Authors
join BOOKS on Authors.ID = BOOKS.ID_USER;
