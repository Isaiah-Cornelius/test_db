USE employees;

# Part 1
# 1.2 Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

#  1.3 Find all employees whose last name starts with 'E'
SELECT * FROM employees WHERE last_name LIKE 'e%';

# 1.4 Find all employees with a 'q' in their last name
SELECT * FROM employees WHERE last_name LIKE '%q%';

# Part 2
# 2.1 Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# 2.2 Add a condition to the previous query to find everybody with those names who is also male
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

# 2.3 Find all employees whose last name starts or ends with 'E'
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

# 2.4 Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

# 2.5 Find all employees with a 'q' in their last name but not 'qu'
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';