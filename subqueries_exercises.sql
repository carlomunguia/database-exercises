use employees;

select *
from employees
where hire_date = (select hire_date
                   from employees
                   where emp_no = '101010');


describe titles;

select *
from titles
where emp_no IN (select emp_no from employees where first_name = 'Aamod');

select *
from employees
         join dept_manager dm on employees.emp_no = dm.emp_no
where gender = 'F';

select *
from departments
where dept_no in (
    select dept_no
    from dept_manager
             join employees e on dept_manager.emp_no = e.emp_no
    where to_date > now()
      and e.gender = 'F');


select first_name, last_name
from employees
where emp_no = (
    select emp_no
    from salaries
    where salary = (select max(salary)
                    from salaries
    ));

select email
from users
where user_id