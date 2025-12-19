CREATE DATABASE company_db;
USE company_db;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);
DROP TABLE employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO departments VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Finance');
INSERT INTO employees VALUES
(1, 'Asha', 10, 30000),
(2, 'Ravi', 20, 45000),
(3, 'Kiran', 20, 50000),
(4, 'Sita', 30, 40000),
(5, 'Anil', NULL, 25000);
SELECT * FROM employees;

SELECT emp_name, salary
FROM employees
WHERE salary > 40000;

SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

SELECT dept_id, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id;

SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

SELECT MIN(salary) AS highest_salary
FROM employees;

SELECT emp_name
FROM employees
WHERE dept_id IS NULL;


