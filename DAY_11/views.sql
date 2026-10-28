-- view is a virtuable table created from an existing table
-- create database
create database training_center;
use training_center;

-- create tables
create table students (
student_id int primary key,
student_name varchar(50),
age int,
city varchar(50),
course varchar(50),
fees int
);

create table trainers (
trainer_id int primary key,
trainer_name varchar(50),
experience int,
subject varchar(50),
salary int
);

create table courses (
course_id int primary key,
course_name varchar(50),
duration_months int,
fees int
);

-- insert sample data
-- Students
INSERT INTO students (student_id, student_name, age, city, course, fees)
VALUES
(1, 'Rahul', 21, 'Hyderabad', 'Python', 15000),
(2, 'Priya', 22, 'Chennai', 'SQL', 12000),
(3, 'Arjun', 20, 'Bangalore', 'Java', 18000),
(4, 'Sneha', 23, 'Mumbai', 'Data Analytics', 25000),
(5, 'Kiran', 21, 'Vijayawada', 'Python', 15000),
(6, 'Anjali', 24, 'Pune', 'Web Development', 20000),
(7, 'Rohit', 22, 'Delhi', 'SQL', 12000),
(8, 'Divya', 20, 'Hyderabad', 'Java', 18000),
(9, 'Varun', 25, 'Chennai', 'Data Analytics', 25000),
(10, 'Kavya', 21, 'Bangalore', 'Python', 15000),
(11, 'Manoj', 23, 'Mumbai', 'Web Development', 20000),
(12, 'Pooja', 22, 'Pune', 'SQL', 12000),
(13, 'Suresh', 24, 'Delhi', 'Java', 18000),
(14, 'Meena', 20, 'Hyderabad', 'Data Analytics', 25000),
(15, 'Vikram', 26, 'Vijayawada', 'Python', 15000),
(16, 'Harika', 21, 'Chennai', 'Web Development', 20000),
(17, 'Ajay', 23, 'Bangalore', 'SQL', 12000),
(18, 'Swathi', 22, 'Mumbai', 'Java', 18000),
(19, 'Naveen', 25, 'Pune', 'Data Analytics', 25000),
(20, 'Lakshmi', 20, 'Delhi', 'Python', 15000);

-- Trainers
INSERT INTO trainers (trainer_id, trainer_name, experience, subject, salary)
VALUES
(1, 'Ramesh', 5, 'Python', 45000),
(2, 'Sowmya', 3, 'SQL', 35000),
(3, 'Praveen', 7, 'Java', 55000),
(4, 'Anusha', 4, 'Data Analytics', 48000),
(5, 'Karthik', 6, 'Web Development', 50000),
(6, 'Deepa', 2, 'Python', 30000),
(7, 'Sandeep', 8, 'SQL', 60000),
(8, 'Bhavani', 5, 'Java', 45000),
(9, 'Mohan', 10, 'Data Analytics', 70000),
(10, 'Rekha', 3, 'Web Development', 38000),
(11, 'Harish', 4, 'Python', 40000),
(12, 'Keerthi', 6, 'SQL', 52000),
(13, 'Nikhil', 9, 'Java', 65000),
(14, 'Lavanya', 2, 'Data Analytics', 32000),
(15, 'Santosh', 7, 'Web Development', 58000),
(16, 'Sirisha', 5, 'Python', 46000),
(17, 'Gopal', 3, 'SQL', 36000),
(18, 'Madhavi', 8, 'Java', 62000),
(19, 'Chaitanya', 6, 'Data Analytics', 54000),
(20, 'Farah', 4, 'Web Development', 42000);

-- Courses
INSERT INTO courses (course_id, course_name, duration_months, fees)
VALUES
(1, 'Python', 3, 15000),
(2, 'SQL', 2, 12000),
(3, 'Java', 4, 18000),
(4, 'Data Analytics', 6, 25000),
(5, 'Web Development', 5, 20000),
(6, 'Machine Learning', 6, 30000),
(7, 'Artificial Intelligence', 8, 40000),
(8, 'Data Science', 7, 35000),
(9, 'C Programming', 2, 10000),
(10, 'C++ Programming', 3, 13000),
(11, 'Cloud Computing', 4, 28000),
(12, 'Cyber Security', 6, 32000),
(13, 'DevOps', 5, 27000),
(14, 'Power BI', 2, 14000),
(15, 'Tableau', 2, 16000),
(16, 'Excel', 1, 8000),
(17, 'HTML and CSS', 2, 9000),
(18, 'JavaScript', 3, 14000),
(19, 'React JS', 3, 17000),
(20, 'Big Data', 5, 33000);

SELECT * FROM students;
SELECT * FROM trainers;
SELECT * FROM courses;

SELECT COUNT(*) FROM students;
SELECT COUNT(*) FROM trainers;
SELECT COUNT(*) FROM courses;


