USE employees;

# 2 Find all employees whose last name starts or ends with 'E' ORDER BY EMPLOYEE NUMBER
SELECT CONCAT(first_name, ' ', last_name) AS 'First/Last' FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no;

# 3 Find all employees born on Christmas
SELECT CONCAT(first_name, ' ', last_name) AS 'Employees Born On Xmas', birth_date FROM employees WHERE birth_date LIKE ('%-12-25');

# 4 Find all employees hired in the 90s and born on Christmas
SELECT CONCAT(first_name, ' ', last_name) AS 'Employees Born On Xmas and Hired in the 90s', birth_date, hire_date FROM employees WHERE birth_date LIKE ('%-12-25') AND YEAR(hire_date) BETWEEN 1990 AND 1999;

# 5 Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT CONCAT(first_name, ' ', last_name) AS 'Employees Born On Xmas and Hired in the 90s', birth_date, hire_date FROM employees WHERE birth_date LIKE ('%-12-25') AND YEAR(hire_date) BETWEEN 1990 AND 1999 ORDER BY birth_date, hire_date DESC;

# 6 For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT CONCAT(first_name, ' ', last_name) AS 'Employees Born On Xmas and Hired in the 90s', birth_date, hire_date, DATEDIFF(now(), hire_date) AS 'Number of Days Working at the Company' FROM employees WHERE birth_date LIKE ('%-12-25') AND YEAR(hire_date) BETWEEN 1990 AND 1999;
