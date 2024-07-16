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


create  database school;
create table Teacher 
(
ID int primary key  identity(1,1) ,
fname varchar(255),
lname varchar(255),
);

create table TeacherDetails
(
ID int  identity(1,1) ,
Job_number int,
birth_day date,
Specialization varchar(255),
salary float,
TeacherID int UNIQUE,
FOREIGN KEY  (TeacherID)  REFERENCES  Teacher(ID) 
);


create table Courses
(
ID int primary key  identity(1,1),
Courses_name varchar (255),
TeacherID int ,
FOREIGN KEY  (TeacherID)  REFERENCES  Teacher(ID) 
);



 create table Students 
 (
 ID int primary key identity(1,1),
 Student_name varchar (255),
 );
 create table Courses_Students
 (
CoursesID int ,
 StudentID int ,
FOREIGN KEY  (StudentID)  REFERENCES Students(ID),
FOREIGN KEY  (CoursesID)  REFERENCES Courses(ID)

 );


 
 select * from Courses;
 select * from Students;
 select * from Teacher;
 select * from TeacherDetails;







