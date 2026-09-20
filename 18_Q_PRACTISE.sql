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









 
