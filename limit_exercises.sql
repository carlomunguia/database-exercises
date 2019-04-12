USE employees;

SELECT DISTINCT last_name
from employees
ORDER BY last_name DESC
LIMIT 10;

SELECT first_name, last_name, hire_date, birth_date
from employees
where hire_date like '199%'
  and birth_date like '%-12-25'
ORDER BY birth_date, hire_date DESC
limit 5 offset 45;





