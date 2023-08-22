
CREATE TABLE titles (
    title_id varchar(20) primary key,
    title varchar(20)
);

CREATE TABLE employees (
    emp_no int primary key,
    emp_title_id varchar(20),
    birth_date varchar(20),
    first_name varchar(20),
    last_name varchar(20),
    sex varchar(20),
    hire_date varchar(20)
);

CREATE TABLE salaries (
    emp_no int primary key,
    salary int
);

CREATE TABLE departments (
    dept_no varchar(20) primary key,
    dept_name varchar(20)
);

CREATE TABLE dept_manager (
    emp_no int primary key,
    dept_no varchar(20)
);

CREATE TABLE dept_emp (
    emp_no int,
    dept_no varchar(20),
    primary key (emp_no, dept_no)
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

