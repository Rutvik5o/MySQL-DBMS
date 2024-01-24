mysql> create table countries(
    -> country_id int primary key,
    -> country_name varchar(255)
    -> );


mysql> create table locations(
    -> l_id int primary key,
    -> s_a varchar(255),
    -> p_c varchar(255),
    -> city varchar(255),
    -> state varchar(255),
    -> country_id int,
    -> constraint con_fk foreign key (Country_id) references countries (country_id)
    -> );


mysql> create table department(
    -> d_id int primary key,
    -> d_name varchar(255),
    -> m_id int,
    -> l_id int,
    -> constraint con_fk1 foreign key (l_id) references locations(l_id)
    -> );


mysql> create table jobs(
    -> job_id int primary key,
    -> job_title varchar(255) not null,
    -> min_salary double(9,2),
    -> max_salary int check (max_salary<100000)
    -> );

mysql> create table employee(
    -> e_id int primary key,
    -> f_name varchar(255),
    -> email varchar(255),
    -> p_n varchar(255),
    -> hire_data date,
    -> job_id int,
    -> constraint con_fk2 foreign key (job_id) references jobs(job_id)
    -> );

(2)
mysql> alter table employee
    -> add column l_name varchar(255);
	
(3)
mysql> alter table jobs
    -> add check (min_salary >= 7000);
	
(4)
mysql> alter table countries
    -> modify country_name varchar(30);
	
(5)
mysql> insert into countries values (1,'india'),(2,'combodia'),(3,'Nepal'),(4,'Sri Lanka'),(5,'Singapo
re');

mysql> insert into locations values (1, 'Street A1', '12345', 'City1', 'State1', 1),
(2, 'Street A2', '67890', 'City2', 'State2', 2),
(3, 'Street A3', '54321', 'City3', 'State3', 3),
(4, 'Street A4', '98765', 'City4', 'State4', 4), 
(5, 'Street A5', '11111', 'City5', 'State5', 5);

mysql> insert into department values  (1, 'HR Department', 101, 1),
(2, 'IT Department', 102, 2),
(3, 'Finance Department', 103, 3),
(4, 'Marketing Department', 104, 4),
(5, 'Operations Department', 105, 5);

mysql> insert into department values  (1, 'HR Department', 101, 1),
(2, 'IT Department', 102, 2),
(3, 'Finance Department', 103, 3),
(4, 'Marketing Department', 104, 4),
(5, 'Operations Department', 105, 5);


mysql> insert into jobs values (1, 'Software Engineer', 60000.00, 90000),
(2, 'Data Analyst', 50000.50, 80000),
(3, 'Marketing Specialist', 45000.75, 75000),
(4, 'Financial Analyst', 55000.25, 85000),
(5, 'HR Manager', 65000.00, 95000);

mysql> insert into employee values (101, 'John', 'john.doe@example.com', '555-1234', '2022-01-15', 1, 'Doe'),
(102, 'Jane', 'jane.smith@example.com', '555-5678', '2022-02-20', 2, 'Smith'),
(103, 'Bob', 'bob.johnson@example.com', '555-9876', '2022-03-25', 3, 'Johnson'),
(104, 'Emily', 'emily.davis@example.com', '555-4321', '2022-04-10', 4, 'Davis'),
(105, 'Michael', 'michael.lee@example.com', '555-8765', '2022-05-05', 5, 'Lee');


(6)
mysql> select * from employee where f_name like 'v%';

(7)
mysql> select * from jobs where min_salary between 50000 and 70000;

(8)
mysql> select * from locations where city= 'Ahemedabad';

(9)
mysql> select * from locations set city = 'Surat' where l_id = 3;

(10)
mysql> delete from department where l_id > 3;

mysql> delete from locations where country_id > 3;

mysql> delete from countries where country_id > 3;










	
	





