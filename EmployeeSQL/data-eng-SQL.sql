
CREATE TABLE titles (
    title_id varchar(20) not null,
    title varchar(20) not null,
	primary key (title_id)
);

CREATE TABLE employees (
    emp_no int not null,
    emp_title_id varchar(20) not null,
    birth_date varchar(20) not null,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    sex varchar(20) not null,
    hire_date varchar(20) not null,
	primary key (emp_no),
	foreign key (emp_title_id) references titles(title_id)
);

CREATE TABLE salaries (
    emp_no int not null,
    salary int not null,
	primary key (emp_no),
	foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE departments (
    dept_no varchar(20) not null,
    dept_name varchar(20) not null,
	primary key (dept_no)
);

CREATE TABLE dept_manager (
    emp_no int not null,
    dept_no varchar(20) not null,
	primary key (emp_no),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

CREATE TABLE dept_emp (
    emp_no int not null,
    dept_no varchar(20) not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);
