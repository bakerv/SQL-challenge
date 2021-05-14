

-- Query data tables
-- List employee number, last name, first name, sex, and salary
SELECT ei.emp_no,ei.last_name,ei.first_name,ei.sex,s.salary
FROM employee_salaries AS s
LEFT JOIN employee_info AS ei
ON s.emp_no = ei.emp_no;

--List first name, last name, and hire date for 1986 hires

SELECT first_name, last_name,hire_date FROM employee_info
WHERE DATE_PART('year',hire_date) = 1986;


--Department number, department name, employee number, last name, and first name; for the manager of each department
SELECT d.dept_no,d.dept_name,dm.emp_no,ei.last_name,ei.first_name
FROM departments AS d
RIGHT JOIN department_manager AS dm ON d.dept_no = dm.dept_no
LEFT JOIN employee_info AS ei ON dm.emp_no = ei.emp_no;

-- List department number, employee number, last name, first name, and department name for all employees
SELECT d.dept_name,de.emp_no,ei.last_name,ei.first_name
FROM departments AS d
RIGHT JOIN department_employees AS de ON d.dept_no = de.dept_no
LEFT JOIN employee_info AS ei ON de.emp_no = ei.emp_no;

-- first name, last name, and sex for a specific group of employees
SELECT first_name, last_name, sex
FROM employee_info
WHERE first_name = 'Hercules' AND SUBSTRING(last_name,1,1) = 'B';

-- For all employees in the sales department; employee number, last name, first name, and department name
SELECT de.emp_no,ei.last_name,ei.first_name,d.dept_name
FROM departments AS d
RIGHT JOIN department_employees AS de ON d.dept_no = de.dept_no
LEFT JOIN employee_info AS ei ON de.emp_no = ei.emp_no
WHERE  d.dept_name = 'Sales';

-- For all employees in the sales and development departments; employee number, last name, first name, and department name
SELECT de.emp_no,ei.last_name,ei.first_name,d.dept_name
FROM departments AS d
RIGHT JOIN department_employees AS de ON d.dept_no = de.dept_no
LEFT JOIN employee_info AS ei ON de.emp_no = ei.emp_no
WHERE  d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- Frequency count of last names in descending order
SELECT last_name,COUNT(last_name)
FROM employee_info
GROUP BY last_name
ORDER BY COUNT DESC;

