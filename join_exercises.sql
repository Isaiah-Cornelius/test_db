use employees;

# 2 Write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY `Department Name`;

# 3 Find the name of all departments currently managed by women.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F' ORDER BY `Department Name`;

# 4 Find the current titles of employees currently working in the Customer Service department.
SELECT t.title as 'title', COUNT(t.emp_no) as 'Total'
FROM dept_emp de
JOIN titles t on de.emp_no = t.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service' GROUP BY title;

# 5 Find the current salary of all current managers.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary as 'Salary'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries s
              ON dm.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY `Department Name`;

# BONUS Find the names of all current employees, their department name, and their current manager's name.
SELECT
    CONCAT(e.first_name, ' ', e.last_name) as 'Employee',
    d.dept_name as 'Department',
    (SELECT CONCAT(e.first_name, ' ', e.last_name)
     FROM employees as e
              JOIN dept_manager as dm
                   ON dm.emp_no = e.emp_no
              JOIN departments as d
                   ON d.dept_no = dm.dept_no
     WHERE dm.to_date = '9999-01-01' AND dm.dept_no = (SELECT dept_no FROM departments WHERE dept_name = `Department`)) as 'Manager'
FROM employees e
         JOIN dept_emp de on de.emp_no = e.emp_no
         JOIN departments d on d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';