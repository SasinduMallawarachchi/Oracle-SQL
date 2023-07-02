--Section 3 Viewing data--
SELECT * 
FROM employee;

SELECT EMPLOYEE_ID,FIRST_NAME
FROM employee;

SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME
FROM employee
WHERE FIRST_NAME = 'Jessica'

--Comparison operators
    
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY 
FROM employee
WHERE SALARY > 40000;

--Filtering the partial values

SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME
FROM employee
WHERE LAST_NAME LIKE 'Bu%';

SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME
FROM employee
WHERE LAST_NAME LIKE '%e%';

SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME
FROM employee
WHERE FIRST_NAME LIKE 'Ann_';

--Filtering data by date
SELECT *
FROM employee
where hire_date = '03-OCT-2010';

SELECT value
FROM SYS.NLS.DATABASE_PARAMETERS
where parameter = 'NLS_DATE_FORMAT';

--Using 2 filters
SELECT *
FROM employee
WHERE first_name = 'Ann' OR last_name = 'Hill';

--More Than 2 filters
SELECT *
FROM employee
WHERE first_name = 'Barbara' 
AND (HIRE_DATE < '01-DEC-2014'
OR salary < 70000);

--Null records
SELECT EMPLOYEE_ID, FIRST_NAME,SALARY
FROM employee
where SALARY IS NULL;

--DISTINC keyword
SELECT DISTINCT LAST_NAME,DEPARTMENT_ID
FROM employee
