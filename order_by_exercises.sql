    USE employees;

    SELECT *
    FROM employees
    WHERE first_name IN ('Irena', 'Maya', 'Vidya')
    ORDER BY first_name, last_name;

    SELECT *
    FROM employees
    WHERE last_name like ('E%e');
    LIMIT  100;


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

    SELECT *
    FROM employees
    WHERE last_name LIKE 'E%'
      AND last_name LIKE '%e';


    SELECT *
    FROM employees
    WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%-12-25';

    SELECT *
    FROM employees
    WHERE last_name LIKE '%q%'
      AND last_name not like '%qu%';