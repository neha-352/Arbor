-- Step 1: Creating a database
CREATE DATABASE Company;

-- Step 2: To use this database
USE Company;



-- Step 3: Creating a table

CREATE TABLE Employee (
EmployeeId int,
Name varchar(20),
Gender varchar(20),
Salary int,
Department varchar(20),
Experience int
);

-- Step 4 :Add value to the table:

INSERT INTO Employee VALUES 

(1, 'Sagar Wavhal', 'Male', 35000, 'Boss', 8),
(2, 'Tessa','Female',75000,'Finance',3),
(3,'Bob','Male',28000,'HR',5),
(4, 'Abhishek Wavhal', 'Male', 95000, 'IT', 2),
(5, 'Priya Sharma', 'Female', 45000, 'IT', 2),
(6, 'Rahul Patel', 'Male', 65000, 'Sales', 5),
(7, 'Nisha Gupta', 'Female', 55000, 'Marketing', 4),
(8, 'Vikram Singh', 'Male', 75000, 'Finance', 7),
(9, 'Aarti Desai', 'Female', 50000, 'IT', 3);


select * from employee;

-- que1
select department , sum(salary) 
from employee
group by department;

-- que 2
select department , avg(salary) 
from employee
group by department;

-- que3
select gender,count(employeeid)
from employee
group by gender;

-- que4
select department,count(employeeid)
from employee
group by department;

-- que5
select gender,min(salary)
from employee
group by gender;

-- que6
select department,max(salary)
from employee
group by department;

-- que7
select department,avg(experience)
from employee
group by department;