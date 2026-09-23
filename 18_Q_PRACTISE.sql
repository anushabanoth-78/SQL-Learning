CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30),
    salary INT,
    age INT
);

INSERT INTO Employee VALUES
(1, 'A', 'IT', 50000, 25),
(2, 'B', 'HR', 40000, 28),
(3, 'C', 'IT', 70000, 30),
(4, 'D', 'Sales', 45000, 26),
(5, 'E', 'HR', 55000, 32),
(6, 'F', 'IT', 60000, 27),
(7, 'G', 'Sales', 65000, 35),
(8, 'H', 'HR', 48000, 24);
-- SELECT * FROM  Employee; 
-- SELECT name, salary From Employee;
DESC Employee;

-- Q4
SELECT *
FROM Employee
WHERE age < 30;
DROP TABLE Employee;
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30),
    salary INT,
    age INT
);
DESC Employee;
INSERT INTO Employee VALUES
(1, 'A', 'IT', 50000, 25),
(2, 'B', 'HR', 40000, 28),
(3, 'C', 'IT', 70000, 30),
(4, 'D', 'Sales', 45000, 26),
(5, 'E', 'HR', 55000, 32),
(6, 'F', 'IT', 60000, 27),
(7, 'G', 'Sales', 65000, 35),
(8, 'H', 'HR', 48000, 24);
-- q1
SELECT * FROM Employee;
-- q2 
SELECT name, salary FROM Employee;
-- q3
SELECT *
FROM Employee
WHERE salary >50000;
-- q4
SELECT *
FROM Employee
WHERE age >30;

-- q5
SELECT name,dept
FROM Employee
WHERE dept ='IT';
-- q6
SELECT * 
FROM Employee
WHERE salary BETWEEN 40000 AND 60000;
-- Q7
SELECT * 
FROM Employee
WHERE name IN ('A', 'C', 'E');

-- Q8

SELECT *
FROM Employee
WHERE salary <> 50000;

-- q9
SELECT *
FROM Employee
ORDER BY salary ASC;

-- Q10
SELECT *
FROM Employee
ORDER BY salary DESC;

-- Q11
SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 1;

-- Q12
SELECT *
FROM Employee
ORDER BY salary ASC
LIMIT 1;

-- q13
SELECT COUNT(*) FROM Employee;

-- q14
SELECT SUM(salary) FROM Employee;

-- q15
 SELECT AVG(salary) FROM Employee;

-- q16

SELECT * FROM Employee
ORDER BY salary DESC
LIMIT 1;

-- Q17
SELECT * FROM Employee
ORDER BY salary ASC
LIMIT 1;
-- Q12
SELECT *
FROM Employee
ORDER BY salary ASC
LIMIT 1;

-- q13
SELECT COUNT(*) FROM Employee;

-- q14
SELECT SUM(salary) FROM Employee;

-- q15
 SELECT AVG(salary) FROM Employee;

-- q16

SELECT * FROM Employee
ORDER BY salary DESC
LIMIT 1;

-- Q17
SELECT * FROM Employee
ORDER BY salary ASC
LIMIT 1;

-- Q18
SELECT dept,COUNT(dept) AS eachnumber 
FROM Employee
GROUP BY dept;

-- q19
SELECT dept, AVG(salary) AS eachnumber 
FROM Employee
GROUP BY dept;

-- q20

SELECT dept, COUNT(*) AS total_employees
FROM Employee
GROUP BY dept
HAVING COUNT(*) > 2;

-- q21
SELECT dept, AVG(salary) AS total_employees
FROM Employee
GROUP BY dept
HAVING AVG(salary) > 50000;

-- q22
SELECT dept, SUM(salary)
FROM Employee
GROUP BY dept;

-- q23

SELECT name, salary
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);
-- Q24
SELECT * FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- Q36
SELECT * FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- Q37
SELECT * FROM Employee
ORDER BY BETWEEN slary AND AVG(salary)

CREATE DATABASE SRIRAM;
USE SRIRAM;
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary INT
);

INSERT INTO Employee VALUES
(1, 'A', 101, 50000),
(2, 'B', 102, 40000),
(3, 'C', 101, 70000),
(4, 'D', 103, 45000),
(5, 'E', 102, 55000),
(6, 'F', 101, 60000);
SELECT * FROM Employee;
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Department VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Sales'),
(104, 'Finance');

SELECT * FROM Department;


SELECT e.name, d.dept_name
FROM Employee e
INNER JOIN Department d
ON e.dept_id = d.dept_id;

-- J2
SELECT e.name, e.dept_id, d.dept_name
FROM Employee e
LEFT JOIN Department d
ON e.dept_id = d.dept_id;
SELECT * FROM Employee;
SELECT * FROM Department;

-- 
SELECT d.dept_name
FROM Employee e
RIGHT JOIN Department d
ON e.dept_id =d.dept_id;

--

SELECT e.name,e.dept_id,d.dept_id,d.dept_name
FROM Employee e
INNER JOIN Department d
ON e.dept_id = d.dept_id;

SELECT e.name,e.salary,d.dept_name
FROM Employee e
LEFT JOIN Department d
ON e.dept_id = d.dept_id
WHERE salary > 50000;

-- 
SELECT e.name,d.dept_name
FROM Employee e
LEFT JOIN Department d
ON e.dept_id = d.dept_id
WHERE dept_name = 'IT';


-- Create the Employee table
CREATE DATABASE anusha;
USE anusha;
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dept VARCHAR(50) NOT NULL,
    salary INT NOT NULL
);

-- Insert the data
INSERT INTO Employee (id, name, dept, salary) VALUES
(1, 'Anu', 'IT', 50000),
(2, 'Ravi', 'HR', 40000),
(3, 'Priya', 'IT', 60000),
(4, 'Kiran', 'Sales', 45000),
(5, 'Rahul', 'HR', 55000);

SELECT * FROM Employee;
SELECT name, salary
FROM Employee;

SELECT * FROM Employee
WHERE salary > 50000;

SELECT name, dept FROM Employee
WHERE dept ='IT';

SELECT * FROM  Employee
WHERE dept = 'HR'
HAVING salary >45000;

INSERT INTO Employee(id,name,dept,salary)
VALUES (9,'Neha','IT',52000);


SELECT * FROM Employee;

UPDATE employee 
SET salary = 55000
WHERE id = 1;

SELECT * FROM Employee;

SET SQL_SAFE_UPDATES = 0;

UPDATE Employee
SET salary = salary + 500
WHERE dept = 'HR';
CREATE DATABASE SRI;
USE SRI;
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    dept VARCHAR(30)
);
-- q1 Insert these 5 employees into the Employee table.
INSERT INTO Employee
VALUES
(1, 'Anu', 30000, 'IT'),
(2, 'Ravi', 40000, 'HR'),
(3, 'Priya', 50000, 'IT'),
(4,' Rahul', 35000,' Sales'),
(5, 'Sneha', 45000, 'HR');
-- q2 Display all employees.
SELECT * FROM Employee;
-- q3 Display only the name and salary of all employees.
SELECT name, salary
FROM Employee
WHERE salary >45000;

-- q4
UPDATE Employee
SET 
salary = salary +5000
WHERE id =2;

SELECT * FROM Employee;

-- q6
DELETE FROM Employee
WHERE id =5;

SELECT * FROM Employee;

-- q7

-- 		Q9
TRUNCATE employee;

select * from Employee;

-- 10
DROP TABLE  Employee;


-- Create the employee table
CREATE DATABASE pra;
USE pra;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    city VARCHAR(50)
);

-- Insert the data
INSERT INTO employees (employee_id, name, department, salary, city) VALUES
(1, 'Anu', 'IT', 50000.00, 'Hyderabad'),
(2, 'Ravi', 'HR', 60000.00, 'Bangalore'),
(3, 'Priya', 'IT', 75000.00, 'Hyderabad'),
(4, 'Rahul', 'Finance', 80000.00, 'Mumbai'),
(5, 'Neha', 'IT', 65000.00, 'Hyderabad'),
(6, 'Kiran', 'HR', 55000.00, 'Chennai');
SELECT *FROM employees;

SELECT name, salary
FROM employees
WHERE salary >60000.00;

SELECT name,salary,city
FROM employees
WHERE salary>60000.00
AND department ='IT';

SELECT *FROM employees
WHERE city = 'Hyderabad';

SELECT name,salary
FROM employees
WHERE salary BETWEEN 55000 AND 75000;

SELECT name AS eitherithr
FROM employees
WHERE department ='IT' OR 'HR';


SELECT name, salary
FROM employees
ORDER BY salary DESC;


SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

SELECT COUNT(*)
FROM employees;

SELECT AVG(salary)
FROM employees;

SELECT *FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT *FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 5;

SELECT *FROM employees
ORDER BY salary ASC
LIMIT 1 ;

SELECT MIN(salary)
FROM employees;

SELECT *FROM employees;

SELECT department,AVG(salary) AS averagesalary
FROM employees
GROUP BY department;

SELECT department,AVG(salary) AS averagesalary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

SELECT *FROM employees;

SELECT city, count(*) AS totalcites
FROM employees
GROUP BY city;

SELECT department, AVG(salary) AS highestsalary 
FROM employees
GROUP BY department
ORDER BY avg(salary) DESC
LIMIT 1;

SELECT *FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

SELECT name
FROM employees
WHERE name 
LIKE'A%';

SELECT name
FROM employees
WHERE name 
LIKE'%a';

SELECT name, department,salary
FROM employees
WHERE salary <>60000;

SELECT *FROM employees AS highestsalary 
ORDER BY salary DESC
LIMIT 1;

SELECT *FROM employees AS highestsalary 
ORDER BY salary DESC
LIMIT 1 OFFSET 5;

SELECT AVG(salary) AS highestsalary
FROM employees





















 
