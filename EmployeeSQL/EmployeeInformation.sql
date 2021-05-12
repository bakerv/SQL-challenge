-- Create data tables, then manually import the CSV files using pgAdmin
CREATE TABLE Departments (
dept_no VARCHAR(4),
dept_name VARCHAR(20)
);

CREATE TABLE Department_Employees (
emp_no INT,
dept_no VARCHAR(4)
);

CREATE TABLE Department_Manager (
dept_no VARCHAR(4),
emp_no INT
);

CREATE TABLE Employee_Info (
emp_no INT,
emp_title VARCHAR(5),
birth_date date,
first_name VARCHAR(20),
last_name VARCHAR(20),
sex VARCHAR(1),
hire_date date
);

CREATE TABLE Employee_Salaries (
emp_no INT,
salary INT
);

CREATE TABLE Employee_Titles (
title_id VARCHAR(5),
title VARCHAR(20)
);

-- verify CSV file imports
SELECT * FROM department_employees;

SELECT * FROM department_manager;

SELECT * FROM departments;

SELECT * FROM employee_info;

SELECT * FROM employee_salaries;

SELECT * FROM employee_titles;

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
SELECT d.dept_name,de.emp_no,ei.last_name,ei.first_name
FROM departments AS d
RIGHT JOIN department_employees AS de ON d.dept_no = de.dept_no
LEFT JOIN employee_info AS ei ON de.emp_no = ei.emp_no
WHERE ;