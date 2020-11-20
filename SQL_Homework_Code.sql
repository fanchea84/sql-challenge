-- Create EMPLOYEES table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(1),
	hire_date DATE
);
-- Create TITLES table
CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(20)
);
-- Create SALARIES table
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- Create DEPT_EMP table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- Create DEPT_MANAGER table
CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INT PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);
-- Create DEPARTMENTS table
CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(20)
);
-- Test Query
SELECT *  
FROM dept_manager
JOIN employees ON dept_manager.emp_no = employees.emp_no;