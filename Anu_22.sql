CREATE DATABASE rishi;
USE rishi;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Rahul', 'IT', 60000, 'Hyderabad'),
(2, 'Priya', 'HR', 45000, 'Bangalore'),
(3, 'Arjun', 'IT', 75000, 'Hyderabad'),
(4, 'Sneha', 'Finance', 55000, 'Mumbai'),
(5, 'Kiran', 'IT', 50000, 'Bangalore'),
(6, 'Meena', 'HR', 65000, 'Hyderabad'),
(7, 'Vikram', 'Finance', 80000, 'Mumbai'),
(8, 'Anjali', 'IT', 70000, 'Chennai');

SELECT * FROM employees;

SELECT name, salary, city
FROM employees
WHERE salary > 55000
  AND department = 'IT';
  

SELECT name, department, salary, city
FROM employees
WHERE salary >= 50000
  AND (city = 'Hyderabad' OR city = 'Bangalore')
ORDER BY salary DESC;


SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

SELECT department,AVG(salary)AS average_salary
FROM employees
GROUP BY department;

SELECT department,AVG(salary)AS average_salary
FROM employees
GROUP BY department;

SELECT department,AVG(salary)AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) >60000;

SELECT name, department, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    manager VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'IT', 'Ramesh'),
(2, 'HR', 'Suresh'),
(3, 'Finance', 'Mahesh');







