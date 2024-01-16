-- Table creation with constraints
CREATE TABLE DOCTOR (
    did INT PRIMARY KEY,
    dname VARCHAR(255) NOT NULL,
    dept VARCHAR(50),
    qualification VARCHAR(10) CHECK (qualification IN ('MBBS', 'MS', 'Ortho')),
    salary DECIMAL(10, 2)
);

CREATE TABLE PATIENT (
    pid INT PRIMARY KEY,
    pname VARCHAR(255) NOT NULL,
    disease VARCHAR(50),
    charges DECIMAL(10, 2) DEFAULT 100,
    did INT,
    FOREIGN KEY (did) REFERENCES DOCTOR(did)
);

-- Inserting records
INSERT INTO DOCTOR VALUES (1, 'Dr. Smith', 'Cardiology', 'MBBS', 80000.00);
-- Add more records as needed

INSERT INTO PATIENT VALUES (101, 'John Doe', 'Fever', 150, 1);
-- Add more records as needed

-- Queries
1. SELECT * FROM DOCTOR;
   SELECT * FROM PATIENT;

2. SELECT dname, qualification, salary FROM DOCTOR;

3. SELECT pid, pname, charges FROM PATIENT;

4. UPDATE PATIENT SET charges = 5000 WHERE disease = 'Cancer';

-- Saving changes is automatic for most databases, but if you want to commit explicitly, use COMMIT; statement.
