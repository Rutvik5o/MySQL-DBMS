SELECT * FROM mydbtemp.students

select @@autocommit;

select current_time

select current_timestamp;

select now()

select localtime;
select localtimestamp;

alter table students add column date_joined datetime
default (now());

select * from students;

-- usage of now,current_time
insert into students (id,age,date_joined) values(24,5,current_timestamp())