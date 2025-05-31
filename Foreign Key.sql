create database school;
use school;

create table classes(
class_id int auto_increment primary key,
class_name varchar(50) not null
);

create table students(
student_id int auto_increment primary key,
student_name varchar(100) not null,
class_id int,
foreign key(class_id) references classes(class_id)
on update cascade
on delete set null
);

insert into classes (class_name) values ('Mathematics'),
('Science'),('History');

insert into students (student_name,class_id) values
('A',1),('B',2),('C',1);

select * from students;
select * from classes;

delete from classes where class_id = 2;

update classes set class_id = 101 where class_id =1;
update classes set class_id = 301 where class_id =3;


-- View Relationship | check foreign key constraints

show create table students;


-- see all foreign key in current ddatabase:

select
    table_name,
    column_name
    constraint_name,
    referenced_table_name, 
    referenced_column_name
from 
   information_schema.key_column_usage
where 
   referenced_table_name is not null
and table_schema ="school";