--Section 4 More Operators
SELECT * 
FROM employee
WHERE last_name = 'Foster'
OR last_name = 'Elliott'
OR last_name = 'Mitchell'
OR last_name = 'Perry'
OR last_name = 'Lawson'
    
--IN Keyword
SELECT * 
FROM employee
WHERE last_name IN ('Foster','Elliott','Mitchell','Perry','Lawson');


--Between and Not Between
SELECT *
FROM employee
WHERE hire_date >= '01-JAN-2016' AND hire_date <= '31-DEC-2016';

SELECT *
FROM employee
WHERE hire_date BETWEEN '01-JAN-2016' AND '31-DEC-2016';

--ALL Keyword
SELECT *
FROM employee
WHERE salary >30000
AND salary > 40000
AND salary > 50000;

SELECT *
FROM employee
WHERE salary > ALL(30000, 40000, 50000);
