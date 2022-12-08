USE employees;

# 1.2 Find all employees with first names 'Irena', 'Vidya', or 'Maya' ORDER BY FIRST NAME
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

# 1.3 Find all employees with first names 'Irena', 'Vidya', or 'Maya' ORDER BY FIRST NAME, THEN LAST NAME
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

# 1.4 Find all employees with first names 'Irena', 'Vidya', or 'Maya' ORDER BY LAST NAME, THEN FIRST NAME
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

# 1.5a Find all employees whose last name starts or ends with 'E' ORDER BY EMPLOYEE NUMBER
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no;

# 1.5b Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' ORDER BY EMPLOYEE NUMBER
SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY emp_no;

# 1.6a Find all employees whose last name starts or ends with 'E' ORDER BY EMPLOYEE NUMBER DESC
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no DESC;

# 1.6b Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' ORDER BY EMPLOYEE NUMBER DESC
SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY emp_no DESC;