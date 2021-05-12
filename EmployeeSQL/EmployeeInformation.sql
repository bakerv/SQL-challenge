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
birth_date VARCHAR(10),
first_name VARCHAR(20),
last_name VARCHAR(20),
sex VARCHAR(1),
hire_date VARCHAR(10)
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

-- Join data tables
CREATE TABLE Complete_data AS(
SELECT ei.
FROM Employee_info AS ei
)
-- Select desired information