create database Library;
create table books(
id int identity(1,1),
title varchar(255),
AuthorID int,
PublishedYear int ,
CopiesAvailable int ,
BookCategory varchar (255)
);
create table Authors
(
AuthorID int identity(1,1),
FirstName varchar(255),
LastName varchar(255),
BirthYear varchar(255)
);
select* from books ;
select* from Authors ;
select max (title) ,max(CopiesAvailable) as  BookAvailability From books 
select AVG(PublishedYear) as AveragePublicationYear from books
select sum(CopiesAvailable) from books
TRUNCATE TABLE books;
drop table Authors;




