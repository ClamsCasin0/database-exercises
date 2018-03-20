USE employees;

# *UPDATE*
# 1)Update your queries for employees whose names start and
#  end with 'E'. Use concat() to combine their first and
#  last name together as a single column in your results.

# 2)For your query of employees born on Christmas and
# hired in the 90s, use datediff() to find how many days
#  they have been working at the company
# (Hint: You will also need to use now() or curdate())


SELECT * FROM employees;

# A
# 1
SELECT *
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya')
ORDER BY last_name, first_name;
# 2 *UPDATE*
SELECT CONCAT_WS(' ',first_name,last_name) AS 'Employees first and last name'
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

# 3
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
# 4
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';
# 5
SELECT *
FROM employees
WHERE last_name LIKE '%q%';


# B
# 1
SELECT *
FROM employees
WHERE (first_name = 'Irene'
OR first_name = 'Vidya'
OR first_name = 'Maya')
ORDER BY last_name, first_name;
# 2
SELECT *
FROM employees
WHERE (first_name = 'Irene'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender = 'M';
# 3 *UPDATE*
SELECT CONCAT_WS(' ',first_name,last_name) AS 'Employees first and last name'
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no DESC;
# 4
SELECT CONCAT_WS(' ',first_name,last_name) AS 'Employees first and last name'
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';
# 5 *UPDATE* //Find all employees hired in the 90s and born on Christmas.
SELECT DATEDIFF(curdate(),hire_date) AS 'Total days at company', first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;
# 6 //Find all employees with a 'q' in their last name but not 'qu'.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';