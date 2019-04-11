USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Maya', 'Vidya')
ORDER BY first_name, last_name;

SELECT CONCAT()
FROM employees
WHERE last_name like ('E%e');



SELECT *
FROM employees
WHERE hire_date like '199%-%-%'
  and birth_date like '%-12-25'
ORDER BY birth_date, hire_date DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
    AND gender = 'M';

SELECT  emp_no, birth_date, concat(first_name, ' ', last_name) AS 'full_name', gender, hire_date
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';
LIMIT 100;

SELECT  first_name, last_name, hire_date, datediff(curdate(), hire_date)
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name not like '%qu%';