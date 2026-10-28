create database normalization_demo;
use normalization_demo;

-- 1NF
create table student_data_1 (
studentID int,
studentName varchar(50),
course varchar(30),
Department varchar(20),
advisor varchar(30)
);

-- 2NF
create table student_data_2 (
studentID int primary key,
studentName varchar(50),
Department varchar(20),
advisor varchar(30)
);

create table student_data_2NF_enrollment (
studentID int,
course varchar(30),
foreign key (studentID) references student_data_2(StudentID)
);

-- 3NF
create table advisor (
Department varchar(20) primary key,
advisor varchar(30)
);

create table student_data_3 (
studentID int,
studentName varchar(50),
Department varchar(20), 
foreign key (Department) references advisor(Department)
);


