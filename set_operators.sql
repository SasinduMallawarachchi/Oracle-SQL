--Set Operators
--Union
SELECT 'Employee', first_name,last_name
FROM employee
UNION 
SELECT 'Customer', first_name,last_name
FROM customer;
ORDER BY last_name
    
--Union All
SELECT first_name,last_name
FROM employee
UNION ALL
SELECT first_name,last_name
FROM customer
ORDER BY 1,2;

--Intersects Operator
SELECT first_name,last_name
FROM employee
INTERSECT
SELECT first_name,last_name
FROM customer;
