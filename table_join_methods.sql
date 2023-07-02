--Joins
--Innert join
SELECT employee_id, first_name, last_name, DEPARTMENT_NAME, employee.DEPARTMENT_ID
FROM employee 
JOIN department ON employee.DEPARTMENT_ID = department.DEPARTMENT_ID

--Left outer join
SELECT 
c.customer_id,
c.first_name,
c.last_name,
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id

--Right outer join
SELECT 
d.department_id,
d.department_name,
e.first_name,
e.last_name,
FROM department d
RIGHT JOIN employee e ON e.department_id = d.department_id
ORDER BY d.department_id;

--Full outer join
SELECT 
d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name,
FROM department d
FULL JOIN employee e ON d.department_id = e.department_id
ORDER BY d.department_id;

--Natural join
SELECT 
e.employee_id,
e.first_name,
e.last_name,