# SQL-challenge
This challenge leverages the power of SQL to query data across multiple data sets. The python packages SQLalchemy and Pandas are used to create visualizations of the SQL Tables.

## Data Used
The Pewlett Hackard data sets are used for this challenge. These data sets emulate real employee data that is stored across 6 separate files to control access and file security. 

## Analysis

The data in these sets is not what you would expect from typical employee data. For one, the employee salaries do not form a normal distribution.

![Employee Salaries Histogram](https://github.com/bakerv/SQL-challenge/blob/main/Images/Salary_Histogram.png)

This distrubution is heavily right skewed, with a large portion of employees at an entry level salary.

When you group the data by job title, you see that senior positions make less, on average, than their entry level counterparts.

![Employee Average Salaries](https://github.com/bakerv/SQL-challenge/blob/main/Images/Salary_Barchart.png)
