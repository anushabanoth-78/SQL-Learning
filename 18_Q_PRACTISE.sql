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

-- Q18










 
