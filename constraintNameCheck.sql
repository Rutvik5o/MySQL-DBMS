create table accounts(
id int,
balance decimal(10,2) check (balance >=0)
);

insert into accounts values(1,-34);

-- name be given to constraints
create table college_students(
roll_no int primary key,
age int constraint chk_age check (age >= 5),
email varchar(255) unique
);

insert into college_students values(1,7,"yello@gmail.com");
-- confirm with that try to enter value less than the condition
-- you will see the constraint name 