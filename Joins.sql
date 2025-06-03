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

-- inner join
select student.name,marks.subject,marks.score from student inner
join marks on student.id = marks.student_id;

-- left join 
delete from marks where student_id = 12;
select student.name,marks.subject,marks.score from student
left join marks on student.id = marks.student_id;

-- right join
select student.name,marks.subject,marks.score from student
right join marks on student.id = marks.student_id;

-- cross join
select student.name,marks.subject,marks.score from student
cross join marks;


