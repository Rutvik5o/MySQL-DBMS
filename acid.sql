SELECT * FROM mydbtemp.students;
insert into students values(2,53,"yeahu@gmail.com",false,"juy");
start transaction;
update students set age = age + 1 where id =1;
update students set age = age -1 where id = 2;
rollback;
select * from students;
rollback;