select a.emp_no, last_name, first_name, sex, salary from employees a
join salaries b on b.emp_no = a.emp_no;

select first_name, last_name, hire_date from employees
where to_char(hire_date,'YYYY') = '1986';

select b.dept_no, dept_name, a.emp_no, last_name, first_name  from employees a
join dept_manager b on b.emp_no =a.emp_no
join departments c on c.dept_no = b.dept_no;


select a.emp_no, last_name, first_name, dept_name from employees a
join dept_emp b on b.emp_no = a.emp_no
join departments  c on c.dept_no = b.dept_no;

select first_name, last_name, sex from employees
where first_name = 'Hercules'
and last_name like 'B%';

select a.emp_no, last_name, first_name, dept_name from employees a
join dept_emp b on b.emp_no = a.emp_no
join departments  c on c.dept_no = b.dept_no
where dept_name = 'Sales';

select a.emp_no, last_name, first_name, dept_name from employees a
join dept_emp b on b.emp_no = a.emp_no
join departments  c on c.dept_no = b.dept_no
where dept_name in ('Sales','Development');

select count(last_name) as count, last_name from employees
group by last_name
order by count desc ;



