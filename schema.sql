

CREATE TABLE departments (
  dept_no varchar primary key,
  dept_name varchar
);

create table titles (
	title_id varchar primary key,
	title varchar
);



CREATE TABLE employees (
	emp_no integer primary key,
	emp_title varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	foreign key(emp_title)
	references titles(title_id)
);


CREATE TABLE dept_emp (
	emp_no int,
	dept_no varchar, 
	foreign key(emp_no)
	references employees(emp_no),
	foreign key(dept_no)
	references departments(dept_no)
);

create table dept_manager (
	dept_no varchar,
	emp_no int,
	foreign key(emp_no)
	references employees(emp_no),
	foreign key(dept_no)
	references departments(dept_no)
);

create table salaries (
	emp_no int,
	salary int,
	foreign key(emp_no)
	references employees(emp_no)
);