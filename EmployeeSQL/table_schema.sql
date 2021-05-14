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

-- Find the average salary for each job title
CREATE TABLE average_salary AS
	SELECT ROUND(AVG(s.salary),2), et.title
	FROM employee_info AS ei
	LEFT JOIN employee_titles AS et ON ei.emp_title = et.title_id
	LEFT JOIN employee_salaries AS s ON ei.emp_no = s.emp_no
	GROUP BY title;