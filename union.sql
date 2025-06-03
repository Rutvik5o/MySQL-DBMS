create database practicejoin;

use practicejoin;

create table student(
id int primary key,
name varchar(255)
);

insert into student(id,name) values 
(1,'Liam'),
(2,'Aarav'),
(3,'Sophia'),
(4,'Zara'),
(5,'Noah'),
(6,'Mira'),
(7,'Ethan'),
(8,'Anaya'),
(9,'Lucas'),
(10,'Ishaan'),
(11,'Emma'),
(12,'Riya'),
(13,'Oliver'),
(14,'Kiara'),
(15,'Elijah');

create table marks(
id int auto_increment primary key,
student_id int,
subject varchar(30),
score int,
foreign key(student_id) references student(id)
);

insert into marks(student_id, subject, score) values
(1, 'Maths', 78),
(1, 'Science', 84),
(1, 'English', 72),
(2, 'Maths', 65),
(2, 'Science', 70),
(3, 'Maths', 90),
(3, 'English', 88),
(4, 'Science', 55),
(4, 'Maths', 60),
(5, 'English', 74),
(5, 'Maths', 68),
(6, 'Science', 81),
(6, 'Maths', 77),
(7, 'English', 59),
(8, 'Maths', 91),
(8, 'Science', 89),
(9, 'English', 63),
(10, 'Science', 75),
(10, 'Maths', 82),
(11, 'English', 85),
-- (12, 'Maths', 66),
(13, 'Science', 72),
(14, 'English', 79),
(15, 'Maths', 88);

select * from student;
select * from marks;

select student_id from marks
union
select id from student;

create table employees(
employee_id int primary key,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
hire_date date,
salary decimal(10,2),
is_active boolean
);

select * from employees;


insert into employees(employee_id, first_name, last_name, department, hire_date, salary, is_active) values
(1, 'John', 'Doe', 'Engineering', '2020-03-15', 75000.00, true),
(2, 'Jane', 'Smith', 'Marketing', '2019-06-22', 68000.50, true),
(3, 'Alice', 'Johnson', 'HR', '2021-01-10', 59000.00, true),
(4, 'Bob', 'Williams', 'Engineering', '2018-11-05', 82000.00, false),
(5, 'Charlie', 'Brown', 'Sales', '2022-09-01', 62000.75, true),
(6, 'Diana', 'Miller', 'Finance', '2020-07-14', 70000.00, true),
(7, 'Ethan', 'Davis', 'Engineering', '2017-04-30', 88000.00, false),
(8, 'Fiona', 'Garcia', 'Marketing', '2023-02-18', 64000.25, true),
(9, 'George', 'Martinez', 'HR', '2016-10-20', 60000.00, false),
(10, 'Hannah', 'Lopez', 'Sales', '2021-12-05', 61000.00, true);


create table emp_personal(
personal_id int auto_increment primary key,
employee_id int,
date_of_birth date,
phone_number varchar(15),
email varchar(100),
adresss text,
marital_status varchar(25),
foreign key(employee_id) references employees(employee_id)
);

insert into emp_personal(employee_id, date_of_birth, phone_number, email, adresss, marital_status) values
(1, '1990-05-12', '9876543210', 'john.doe@example.com', '123 Elm St, New York, NY', 'Married'),
(2, '1988-09-23', '9123456789', 'jane.smith@example.com', '456 Oak Ave, Los Angeles, CA', 'Single'),
(3, '1992-11-08', '9012345678', 'alice.johnson@example.com', '789 Pine Rd, Chicago, IL', 'Single'),
(4, '1985-07-19', '9988776655', 'bob.williams@example.com', '321 Maple St, Houston, TX', 'Divorced'),
(5, '1994-03-30', '8899776655', 'charlie.brown@example.com', '654 Birch Ln, Phoenix, AZ', 'Single'),
(6, '1989-01-25', '9871234567', 'diana.miller@example.com', '987 Cedar Dr, Philadelphia, PA', 'Married'),
(7, '1983-12-11', '9123987654', 'ethan.davis@example.com', '159 Spruce Blvd, San Antonio, TX', 'Married'),
(8, '1995-06-17', '9098765432', 'fiona.garcia@example.com', '753 Redwood St, San Diego, CA', 'Single'),
(9, '1987-02-09', '9001234567', 'george.martinez@example.com', '852 Willow Ct, Dallas, TX', 'Married'),
(10, '1991-10-01', '9988123456', 'hannah.lopez@example.com', '147 Poplar Way, San Jose, CA', 'Single');

select * from emp_personal;

select first_name,last_name from employees
union
select email,adresss from emp_personal;

-- if you do select email,employee_id from emp_personal
-- then it give error bcoz employee_id data type is int, and 
-- can't give with string., can't mismatch


