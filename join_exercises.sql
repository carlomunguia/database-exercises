USE employees;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name)
from employees e
         join dept_manager dm on e.emp_no = dm.emp_no
         join departments d on dm.dept_no = d.dept_no
where dm.to_date > curdate()
order by d.dept_name;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name)
from employees e
         join dept_manager dm on e.emp_no = dm.emp_no
         join departments d on dm.dept_no = d.dept_no
where dm.to_date > curdate()
  and e.gender = 'F'
order by d.dept_name;

select t.title, count(t.title)
from titles t
         join dept_emp de on de.emp_no = t.emp_no
where t.to_date > curdate()
  AND de.dept_no = 'd009'
  and de.to_date > curdate()
GROUP BY t.title;


select d.dept_name as 'Department Name',
       concat(e.first_name, ' ', e.last_name)
                   as 'Department Manager',
       s.salary    as 'Salary'
from employees e
         join dept_manager dm on e.emp_no = dm.emp_no
         join departments d on dm.dept_no = d.dept_no
         join salaries s on e.emp_no = s.emp_no
where dm.to_date > curdate()
  and s.to_date > curdate()
order by d.dept_name;



select concat(e.first_name, ' ', e.last_name),
       d.dept_name,
       concat(managers.first_name, ' ', managers.last_name)
from employees e
         join dept_emp de on e.emp_no = de.emp_no
         join departments d on de.dept_no = d.dept_no
         join dept_manager dm on e.emp_no = dm.emp_no
         join employees managers on managers.emp_no = dm.emp_no
where dm.to_date > curdate()
and de.to_date > curdate()
order by d.dept_name;