CREATE DATABASE CompanyDB;
USE CompanyDB;
show databases;
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary int,
    JoinDate DATE);
select * from employees;

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100));
select * from departments;

ALTER TABLE Employees 
ADD Email VARCHAR(100);

ALTER TABLE Departments 
ADD dept_location VARCHAR(100);

ALTER TABLE Employees 
ADD phone int not null;

ALTER TABLE Employees 
modify EmpName VARCHAR(100);

desc departments;
describe employees;

ALTER TABLE Departments drop primary key;
alter table departments add primary key(DeptID);
ALTER TABLE Employees 
ADD DeptID INT;
ALTER TABLE Employees ADD FOREIGN KEY(DeptID) REFERENCES Departments(DeptID);

ALTER TABLE Employees
RENAME COLUMN EmpName TO EmployeeName;

ALTER TABLE Employees 
ADD age int;

ALTER TABLE Employees
ADD CHECK (Age >= 18 AND Salary > 0);

ALTER TABLE Employees DROP COLUMN Phone;
desc employees;

ALTER TABLE Employees RENAME TO EmployeeDetails;
desc table employeedetails;

ALTER TABLE EmployeeDetails DROP CHECK ;

