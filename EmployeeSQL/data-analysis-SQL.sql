-- #1 List the employee number, last name, first name, sex, and salary of each employee (2 points)

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
	join salaries as s
	on (e.emp_no = s.emp_no);
	

-- #2 List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)

