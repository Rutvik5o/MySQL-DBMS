show databases;
use practicejoin;
show tables;

-- delimiter using stored_procesdure
delimiter //
create procedure list_emp()
begin 
-- starting logic
select * from employees;
select first_name from employees;
end //
delimiter ;

call list_emp() -- calling

-- store procedure with parameters
delimiter //
create procedure getid(in empid int)
begin
select * from employees where employee_id = empid;
end //
delimiter ;

call getid(5); -- calling


drop procedure if exists list_emp;  -- delete


