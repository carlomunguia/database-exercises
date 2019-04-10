USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
  AND (
        last_name IN ('Herber', 'Baek')
        OR first_name = 'Shridhar'
    );