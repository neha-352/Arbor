-- Create the database 
CREATE DATABASE EmployeeManagement; 
USE EmployeeManagement; 

-- create table department
create table departments (
 departmentid int primary key auto_increment,
 DepartmentName VARCHAR(50) NOT NULL, 
Location VARCHAR(50), 
HeadOfDepartment VARCHAR(50), 
AnnualBudget DECIMAL(10, 2) 
); 

-- Create the Employee table 
CREATE TABLE Employees ( 
EmployeeID INT PRIMARY KEY AUTO_INCREMENT, 
FirstName VARCHAR(50), 
LastName VARCHAR(50), 
DepartmentID INT, 
Salary DECIMAL(10, 2), 
DateOfJoining DATE, 
Email VARCHAR(100), 
foreign key (departmentid) references departments (departmentid)
);

-- Insert records into Departments table 
INSERT INTO Departments (DepartmentName, Location, HeadOfDepartment, AnnualBudget) 
VALUES  
('HR', 'Pune', 'Raj Sharma', 500000), 
('Finance', 'Mumbai', 'Sneha Gupta', 1000000), 
('IT', 'Bangalore', 'Anil Kumar', 1500000), 
('Sales', 'Delhi', 'Priya Singh', 1200000), 
('Operations', 'Pune', 'Ravi Patil', 900000), 
('Admin', 'Chennai', 'Geeta Reddy', 400000), 
('Legal', 'Hyderabad', 'Amit Desai', 600000), 
('Logistics', 'Mumbai', 'Nisha Joshi', 700000), 
('Research', 'Bangalore', 'Vikram Roy', 2000000), 
('Support', 'Pune', 'Arun Kumar', 800000); 

select * from departments;

-- Insert records into Employees table 
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, 
Email) values 
('Ravi', 'Sharma', 1, 45000, '2022-05-20', 'ravi.sharma@example.com'), 
('Priya', 'Patil', 2, 60000, '2021-03-15', 'priya.patil@example.com'), 
('Amit', 'Kumar', 3, 75000, '2020-01-10', 'amit.kumar@example.com'), 
('Sneha', 'Desai', 4, 50000, '2019-07-22', 'sneha.desai@example.com'), 
('Nisha', 'Joshi', 5, 55000, '2023-08-01', 'nisha.joshi@example.com'), 
('Raj', 'Verma', 6, 48000, '2022-09-14', 'raj.verma@example.com'), 
('Anil', 'Roy', 7, 70000, '2020-02-20', 'anil.roy@example.com'), 
('Vikram', 'Chauhan', 8, 45000, '2023-06-11', 'vikram.chauhan@example.com'), 
('Arun', 'Khan', 9, 65000, '2021-12-03', 'arun.khan@example.com'), 
('Geeta', 'Reddy', 10, 62000, '2020-11-10', 'geeta.reddy@example.com'), 
('Rohit', 'Sharma', 1, 46000, '2022-03-25', 'rohit.sharma@example.com'), 
('Pooja', 'Mehta', 2, 59000, '2021-05-17', 'pooja.mehta@example.com'), 
('Karan', 'Jain', 3, 73000, '2020-08-10', 'karan.jain@example.com'), 
('Smita', 'Pawar', 4, 51000, '2019-09-14', 'smita.pawar@example.com'), 
('Neha', 'Deshmukh', 5, 57000, '2023-10-19', 'neha.deshmukh@example.com'), 
('Rahul', 'Joshi', 6, 50000, '2022-07-07', 'rahul.joshi@example.com'), 
('Ajay', 'Roy', 7, 72000, '2020-03-25', 'ajay.roy@example.com'), 
('Sunita', 'Sharma', 8, 48000, '2023-11-21', 'sunita.sharma@example.com'), 
('Akshay', 'Patil', 9, 68000, '2021-01-15', 'akshay.patil@example.com'), 
('Isha', 'Reddy', 10, 64000, '2020-06-12', 'isha.reddy@example.com'), 
('Vivek', 'Shah', 1, 47000, '2022-02-23', 'vivek.shah@example.com'), 
('Tina', 'Gupta', 2, 58000, '2021-06-28', 'tina.gupta@example.com'), 
('Aditya', 'Kumar', 3, 72000, '2020-09-05', 'aditya.kumar@example.com'), 
('Simran', 'Pawar', 4, 52000, '2019-11-08', 'simran.pawar@example.com'), 
('Sanjay', 'Deshmukh', 5, 56000, '2023-05-30', 'sanjay.deshmukh@example.com'), 
('Anjali', 'Joshi', 6, 51000, '2022-08-17', 'anjali.joshi@example.com'), 
('Ramesh', 'Roy', 7, 74000, '2020-04-16', 'ramesh.roy@example.com'), 
('Preeti', 'Sharma', 8, 49000, '2023-12-05', 'preeti.sharma@example.com'), 
('Ankur', 'Patil', 9, 66000, '2021-07-13', 'ankur.patil@example.com'), 
('Meera', 'Reddy', 10, 61000, '2020-10-20', 'meera.reddy@example.com'), 
('Vikas', 'Shah', 1, 49000, '2022-04-04', 'vikas.shah@example.com'), 
('Neeta', 'Gupta', 2, 60000, '2021-09-09', 'neeta.gupta@example.com'), 
('Ashish', 'Kumar', 3, 74000, '2020-12-01', 'ashish.kumar@example.com'), 
('Ritu', 'Pawar', 4, 53000, '2019-10-24', 'ritu.pawar@example.com'), 
('Santosh', 'Deshmukh', 5, 58000, '2023-02-18', 'santosh.deshmukh@example.com'), 
('Lata', 'Joshi', 6, 52000, '2022-11-29', 'lata.joshi@example.com'), 
('Arjun', 'Roy', 7, 71000, '2020-07-04', 'arjun.roy@example.com'), 
('Kiran', 'Sharma', 8, 50000, '2023-03-10', 'kiran.sharma@example.com'), 
('Mohit', 'Patil', 9, 67000, '2021-11-11', 'mohit.patil@example.com'), 
('Naina', 'Reddy', 10, 63000, '2020-02-14', 'naina.reddy@example.com');

select * from employees;

-- We have hired two employees, Siddharth Gupta (email: siddharth.gupta@example.com, 
-- salary: ₹70,000, DOJ: 2024-01-01) and Aarav Jain (email: aarav.jain@example.com, salary: 
-- ₹72,000, DOJ: 2024-01-02), in the IT department (DepartmentID: 3). Add these records. 

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, 
Email) values ("Siddharth","Gupta",3,70000,"2024-01-02","siddharth.gupta@example.com"),
("Aarav","Jain",3,72000,"2024-01-02","aarav.jain@example.com");

select * from employees;

-- Situation -2 
-- The Marketing department has been created (DepartmentID: 11) with a budget of 
-- ₹13,00,000, located in Pune, and headed by Rakesh Mehta. Add this department.

INSERT INTO Departments (DepartmentName, Location, HeadOfDepartment, AnnualBudget) 
VALUES  ("Marketing","Pune","Rakesh Mehta",1300000);

select * from departments;

-- Situation -3 
-- Three employees have been hired for the Marketing department (DepartmentID: 11): 
-- Rahul Mehra (email: rahul.mehra@example.com, salary: ₹58,000, DOJ: 2024-01-10), Sara 
-- Kapoor (email: sara.kapoor@example.com, salary: ₹62,000, DOJ: 2024-01-11), and Nitin Shah 
-- (email: nitin.shah@example.com, salary: ₹60,000, DOJ: 2024-01-12). Add these records.  

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, 
Email) values ("Rahul","Mehra",11,58000,"2024-01-10","rahul.mehra@example.com"),
("Sara","Kapoor",11,62000,"2024-01-11","sara.kapoorexample.com"),
("Nitin","shah",11,60000,"2024-01-12","nitin.shah@example.com");
 
--  Situation -4  
-- Two employees have been hired for the HR department (DepartmentID: 1): Riya Sharma 
-- (email: riya.sharma@example.com, salary: ₹50,000, DOJ: 2024-02-01) and Mohit Desai (email: 
-- mohit.desai@example.com, salary: ₹55,000, DOJ: 2024-02-02). Add these records. 

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, 
Email) values ("Riya","Sharma",1,50000,"2024-02-01","riya.sharma@example.com"),
("Mohit","Desai",1,55000,"2024-02-02"," mohit.desai@example.com");

 select * from employees;
 
 -- Situation 5
 -- Sneha Rao (email: sneha.rao@example.com) has joined the Finance department 
-- (DepartmentID: 2) on 2024-02-15 with a salary of ₹60,000. Add this record.

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, 
Email) values("Sneha","Rao",2,60000,"2024-02-25","sneha.rao@example.com");

--  Situation 6
-- Three employees have been hired for the Legal department (DepartmentID: 7): Aditya 
-- Malhotra (email: aditya.malhotra@example.com, salary: ₹65,000, DOJ: 2024-03-01), Priyanka 
-- Kapoor (email: priyanka.kapoor@example.com, salary: ₹67,000, DOJ: 2024-03-02), and Kunal 
-- Singh (email: kunal.singh@example.com, salary: ₹68,000, DOJ: 2024-03-03). Add these 
-- records. 

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, 
Email) values ("Aditya","Malhotra",7,65000,"2024-03-01","aditya.malhotra@example.com"),
("Priyanka","Kapoor",7,67000,"2024-03-02","priyanka.kapoor@example.com"),
("Kunal","Singh",7,68000,"2024-03-03"," kunal.singh@example.com");


-- Situation 7
-- The Research department (DepartmentID: 12) has been created with a budget of 
-- ₹20,00,000, located in Hyderabad, and headed by Dr. Meera Joshi. Add this department. 

INSERT INTO Departments (DepartmentName, Location, HeadOfDepartment, AnnualBudget) 
VALUES("Research","Hyderabad","Dr.Meera Joshi",2000000);

select * from departments;

-- Situation -8 
-- Two employees have been hired for the Research department (DepartmentID: 12): Arjun 
-- Shah (email: arjun.shah@example.com, salary: ₹75,000, DOJ: 2024-04-01) and Riya Patel 
-- (email: riya.patel@example.com, salary: ₹72,000, DOJ: 2024-04-02). Add these records. 

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, 
Email) values("Arjun","Shah",12,75000,"2024-04-01","arjun.shah@example.com"),
("Riya","Patel",12,72000,"2024-04-02","riya.patel@example.com");

-- Situation -9 
-- The Logistics department (DepartmentID: 13) has been created with a budget of 
-- ₹9,00,000, located in Chennai, and headed by Ravi Verma. Add this department.

INSERT INTO Departments (DepartmentName, Location, HeadOfDepartment, AnnualBudget) 
VALUES("Logistics","Chennai","Ravi Varma",900000);

Select * from departments;

-- Two employees have been hired for the Logistics department (DepartmentID: 14): Kavita 
-- Desai (email: kavita.desai@example.com, salary: ₹50,000, DOJ: 2024-05-01) and Amit Jain 
-- (email: amit.jain@example.com, salary: ₹52,000, DOJ: 2024-05-02). Add these records. 

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, 
Email) values ("Kavita","Desai",14,50000,"2024-05-01","kavita.desai@example.com"),
("Amit","Jain",14,52000,"2024-05-02","amit.jain@example.com");
