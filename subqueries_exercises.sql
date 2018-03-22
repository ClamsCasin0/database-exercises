USE employees;


# base example
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
)
LIMIT 10;

# 1
SELECT *
FROM employees AS e
WHERE e.hire_date IN (
  SELECT emp.hire_date
  FROM employees AS emp
  WHERE emp.emp_no = 101010);

# 2
SELECT t.title, COUNT(*)
FROM titles AS t
WHERE t.emp_no IN (
  SELECT e.emp_no
  FROM employees AS e
  WHERE e.first_name = 'Aamod')
GROUP BY t.title;



# 3
SELECT first_name, last_name
FROM employees AS e
WHERE e.emp_no IN (
  SELECT dm.emp_no
  FROM dept_manager AS dm
  WHERE dm.to_date = '9999-01-01')
AND e.gender = 'F';

# BONUS
# a)
SELECT d.dept_name
FROM departments AS d
WHERE d.dept_no IN (
  SELECT dm.dept_no
  FROM dept_manager AS dm
  WHERE dm.to_date = '9999-01-01'
    AND dm.emp_no IN (
      SELECT e.emp_no
      FROM employees AS e
      WHERE e.gender = 'F'
    )
  )
ORDER BY d.dept_name;


# b)
SELECT * FROM employees;
SELECT * FROM dept_manager;
SELECT * FROM salaries;


SELECT e.first_name, e.last_name
FROM employees AS e
WHERE e.emp_no IN (
  SELECT s.emp_no
  FROM salaries AS s
  WHERE s.salary = '158220'
#     AND s.emp_no IN (
#       SELECT dm.dept_no
#       FROM dept_manager AS dm
#       WHERE dm.to_date = '9999-01-01'
#   )
)


# Justin's relationship bonuses
# J-1)
# What is the most common birthday in the company? least common?
# Most common)
SELECT birth_date , COUNT(birth_date)
FROM employees
GROUP BY birth_date ASC
ORDER BY COUNT(birth_date) DESC
LIMIT 15;
# Least common)
SELECT birth_date , COUNT(birth_date)
FROM employees
GROUP BY birth_date
ORDER BY COUNT(birth_date)
LIMIT 15;

# J-2)
# what is the average salary of managers by department?
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Name',
       s.salary AS 'Salary',
       AVG(salary) AS 'Average Salary'
FROM employees AS e
  JOIN dept_manager AS dm ON  dm.emp_no = e.emp_no
  JOIN departments AS d ON  d.dept_no = dm.dept_no
  JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE dm.to_date >= CURDATE()
      AND s.to_date >= CURDATE()
GROUP BY d.dept_name;

# not quite there..

# J-3
# how many employees currently work in each department
SELECT d.dept_name AS 'Department Name',
  COUNT(e.emp_no) AS '# of Employees'
FROM employees AS e
  JOIN dept_emp AS de ON de.emp_no = e.emp_no
  JOIN departments AS d ON d.dept_no = de.dept_no
WHERE de.to_date >= CURDATE()
GROUP BY d.dept_name;

# J-4
# what is the average salary for each department?


