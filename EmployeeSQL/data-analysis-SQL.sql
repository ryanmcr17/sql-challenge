-- #1 List the employee number, last name, first name, sex, and salary of each employee (2 points)

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
	join salaries as s
	on (e.emp_no = s.emp_no);
	

-- #2 List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)

select e.first_name, e.last_name, e.hire_date
from employees as e
where extract('year' from e.hire_date) = 1986;


-- #3 List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
	join departments as d
	on (dm.dept_no = d.dept_no)
		join employees as e
		on (dm.emp_no = e.emp_no);


-- #4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)

select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
	join dept_emp as de
	on (e.emp_no = de.emp_no)
		join departments as d
		on (de.dept_no = d.dept_no);


-- #5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)

select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules' and e.last_name LIKE 'B%';


-- #6 List each employee in the Sales department, including their employee number, last name, and first name (2 points)

select e.emp_no, e.last_name, e.first_name
from employees as e
	join dept_emp as de
	on (e.emp_no = de.emp_no)
		join departments as d
		on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales';


-- #7 List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
	join dept_emp as de
	on (e.emp_no = de.emp_no)
		join departments as d
		on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales' or d.dept_name = 'Development';


-- #8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)

select e.last_name, count(e.last_name)
from employees as e
group by e.last_name
order by count(e.last_name) desc;
