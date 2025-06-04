
-- for concatination 
select concat(age,'optional',email) as name from students;
select concat(age,email) as name from students;
select age,email,concat(age,'optional',email) as name 
from students;


-- for current time & date
select now();

-- for knowing length of string
select length("checking length");
select length(email) as len from students;

-- round
select round(12.353253,3);

-- date difference
select datediff('2025-04-05','2024-09-08');
select round(datediff(now(),hire_date)/365,1) as days from employees;


