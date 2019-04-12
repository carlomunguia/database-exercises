use employees;

select *
from employees
where hire_date = (select hire_date
                   from employees
                   where emp_no = '101010');

describe titles;

select title
from titles
where emp_no IN (select emp_no from employees where first_name = 'Aamod');


select *
from employees
         join dept_manager dm on employees.emp_no = dm.emp_no
    and dm.to_date > now();

select *
from employees
where gender = 'F'
  and emp_no in (select emp_no from dept_manager where to_date > now());


# select *
# from employees
# where gender = 'F'
#   and emp_no in (select emp_no from dept_manager where to_date > now());

select dept_name
from departments
where dept_no in (
    select dept_no
    from dept_manager
             join employees e on dept_manager.emp_no = e.emp_no
    where to_date > now()
      AND e.gender = 'F'
);


select first_name, last_name
from employees
where emp_no = (
    select emp_no from salaries where salary = (select max(salary) from salaries));


select first_name, last_name
from employees
where emp_no = (
    select emp_no
    from salaries
    order by salary desc
    limit 1
);