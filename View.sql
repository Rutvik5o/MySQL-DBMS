use practicejoin;
select * from employees;

select first_name,department,salary,round(datediff(now(),
hire_date)/365,1) 
as years from employees;

-- making view
-- rather than writing typical query we just create to view
-- use query as a just simple virtual table 
create view Temp as select first_name,department,salary,round(datediff(now(),
hire_date)/365,1) 
as years from employees;

select * from temp;