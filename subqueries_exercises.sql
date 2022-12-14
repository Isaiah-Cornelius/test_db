USE employees;

# 1 Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT * FROM employees e
WHERE e.hire_date = (SELECT hire_date FROM employees e WHERE e.emp_no = 101010);

# 2 Find all the titles held by all employees with the first name Aamod.
SELECT title FROM titles t
         JOIN employees e on t.emp_no = e.emp_no
WHERE e.first_name = 'Aamod'
GROUP BY title;

# 3 Find all the current department managers that are female.
SELECT first_name, last_name FROM employees e
JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

# Bonus 1 Find all the department names that currently have female managers.
SELECT dept_name FROM departments d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY dept_name;

# Bonus 2 Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name FROM employees e
JOIN salaries s on e.emp_no = s.emp_no
ORDER BY salary DESC
LIMIT 1;