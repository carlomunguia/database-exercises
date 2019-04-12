use employees;

SELECT DISTINCT title
from employees.titles;

SELECT first_name, last_name
from employees.employees
where last_name LIKE 'E%e'
GROUP BY last_name, first_name;

SELECT last_name, COUNT(last_name)
from employees.employees
where last_name like '%q%'
  and last_name not like '%qu%'
GROUP BY last_name
ORDER BY COUNT(last_name) desc;

SELECT count(*), gender
from employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
group by gender;




