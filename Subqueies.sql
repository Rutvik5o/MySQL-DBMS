show databases;
use practicejoin;
show tables;

select * from employees;

-- subquery
select first_name,last_name,salary from employees where 
salary > ( select avg(salary) from employees);

-- co:related queries
-- using e to get references of that query
select first_name,last_name,salary,department from employees e
where salary > (
select avg(salary) from employees where department = e.department
);

select * from employees;