--show databases
-- use practicejoin;
-- show tables;

select * from employees where department ="HR";
-- create index idx on employees(department);
-- before making index and after making index: to retrieve
-- data in you get differnece
-- in that read operation is fast, but write is slow

select * from employees where department ="HR" and salary 
> 50000;

-- multi column index
create index idx2 on employees(department,salary);

-- drop index
drop index idx2 on employees;

-- viewing exisiting indexes

show index from employees;