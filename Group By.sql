show databases;
use practicejoin;
show tables;

select * from employees;

-- Group By
select department,count(*) as total_emp from 
employees
group by department;

-- using with aggregate function
select department,avg(salary),is_active as total_emp from 
employees
group by department,is_active;

-- having clause (replacement of where in grouping)
select department,avg(salary) as total_emp,is_active from 
employees
group by department,is_active having total_emp>50000;

-- rollup: giving subtotal,avg of avg all rows
select department,is_active,sum(salary) as total_emp from 
employees
group by department,is_active  with rollup;