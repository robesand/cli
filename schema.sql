--

DROP SCHEMA IF EXISTS employeeManagement CASCADE;
CREATE SCHEMA employeeManagement;
SET search_path TO employeeManagement;


DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Employees;

CREATE TABLE Departments (
   Code INTEGER PRIMARY KEY NOT NULL,
   Name TEXT NOT NULL ,
   Budget REAL NOT NULL 
);
 
CREATE TABLE Employees (
   SSN INTEGER PRIMARY KEY NOT NULL,
   Name TEXT NOT NULL ,
   LastName TEXT NOT NULL ,
   Department INTEGER NOT NULL , 
   CONSTRAINT fk_Departments_Code FOREIGN KEY(Department) 
   REFERENCES Departments(Code)
);

