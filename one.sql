-- 1) Creating tables with constraints
CREATE TABLE DEPARTMENT (
    d_id INT PRIMARY KEY,
    d_name VARCHAR(255) NOT NULL
);

CREATE TABLE EMPLOYEE (
    e_id INT PRIMARY KEY,
    e_name VARCHAR(255) NOT NULL,
    e_desig VARCHAR(255) CHECK (e_desig IN ('Manager', 'Clerk', 'Supervisor')) NOT NULL,
    e_doj DATE NOT NULL,
    e_city VARCHAR(255) DEFAULT 'Ahmedabad',
    e_Salary INT,
    d_id INT,
    FOREIGN KEY (d_id) REFERENCES DEPARTMENT(d_id)
);

-- 2) Inserting minimum 8 records
INSERT INTO DEPARTMENT VALUES (1, 'HR'), (2, 'IT');
INSERT INTO EMPLOYEE VALUES
(101, 'John Doe', 'Manager', '2023-01-01', 'Ahmedabad', 60000, 1),
(102, 'Jane Smith', 'Clerk', '2023-02-15', 'Ahmedabad', 40000, 2),
-- Add 6 more records as needed

-- 3) Display all records of employee table
SELECT * FROM EMPLOYEE;

-- 4) List name and salary of employees who are managers
SELECT e_name, e_Salary FROM EMPLOYEE WHERE e_desig = 'Manager';

-- 5) Increase salary by 1000 and rename it as Increment
UPDATE EMPLOYEE SET e_Salary = e_Salary + 1000; 
//Select e_name,e_Salary + 1000 as increment from employee;

-- 6) Update designation as "Leader" whose id is '3'
UPDATE EMPLOYEE SET e_desig = 'Leader' WHERE e_id = 3;

-- 7) Save all the changes (Assuming commit in a transactional system)
COMMIT;
