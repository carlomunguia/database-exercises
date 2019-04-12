use employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR   first_name = 'Vidya'
   OR   first_name = 'Maya';

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND  gender = 'M';

SELECT emp_no, birth_date, concat(first_name, ' ', last_name) AS 'full_name', gender, hire_date
FROM employees
WHERE last_name LIKE 'E%'
   OR   last_name LIKE '%e'
LIMIT 100;

SELECT *
FROM employees
WHERE last_name LIKE 'E%e';

SELECT first_name, last_name, hire_date, birth_date, datediff(curdate(), hire_date)
FROM employees
WHERE hire_date LIKE '199%'
  AND  birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC; -- Will group all w/same last name

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND  last_name NOT LIKE '%qu%';