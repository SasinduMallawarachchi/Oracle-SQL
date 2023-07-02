--Sub queries
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary > (
    SELECT AVG (SALARY)
	FROM employee
    )
--Multiple sub queries
SELECT employee_id, first_name, last_name, department_id
FROM employee
WHERE department_id IN  (
    SELECT department_id,department_name
	FROM department
    WHERE department_name IN ('Sales', 'Finance')
    )

--Insert data 
INSERT INTO employee (employee_id, first_name, last_name, department_id)
VALUES (300,'Sasindu', 'Mallwarachchi', 3)

INSERT INTO employee VALUES (301,'Jaho', 'Smith', 1, 82000, 14, '10-JAN-2017')

--update
UPDATE emplyee
SET salary = salary + 10000
WHERE employee_id=85

--delete
DELETE FROM employee
WHERE employee_id = 250

--Creating a table
CREATE TABLE job_role (
    job_role_id NUMBER(10),
    role_name vARCHAR2(50),
    role_create_date DATE
);

SELECT * FROM job_role

--Alter
ALTER TABLE job_role
ADD job_description VARCHAR2(200);

ALTER TABLE job_role
DROP COLUMN job_description;

--Drop table
DROP TABLE job_role