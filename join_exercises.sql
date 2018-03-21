USE employees;


# Helper queries
DESCRIBE dept_manager;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM salaries;
# Base example
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name,
  d.dept_name
FROM employees as e
  JOIN dept_emp as de ON de.emp_no = e.emp_no
  JOIN departments as d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


# 2
SELECT d.dept_name AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
  JOIN dept_manager AS de ON de.emp_no = e.emp_no
  JOIN departments AS d ON d.dept_no = de.dept_no
WHERE de.to_date >= CURDATE()
ORDER BY d.dept_name;


# 3
SELECT d.dept_name AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees AS e
  JOIN dept_manager AS de ON de.emp_no = e.emp_no
  JOIN departments AS d ON d.dept_no = de.dept_no
WHERE de.to_date >= CURDATE()
  AND e.gender = 'F'
ORDER BY d.dept_name;


# 4 d009 customer service
SELECT t.title AS 'Title', COUNT(e.emp_no) AS 'Count'
FROM titles AS t
  JOIN employees AS e ON e.emp_no = t.emp_no
  JOIN dept_emp AS de ON de.emp_no = e.emp_no
  JOIN departments AS d ON d.dept_no = de.dept_no
WHERE t.to_date >= CURDATE()
  AND d.dept_name = 'Customer Service'
  AND de.to_date >= CURDATE()
GROUP BY t.title;


# 5
SELECT d.dept_name AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Name',
  s.salary AS 'Salary'
FROM employees AS e
  JOIN dept_manager AS dm ON  dm.emp_no = e.emp_no
  JOIN departments AS d ON  d.dept_no = dm.dept_no
  JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE dm.to_date >= CURDATE()
  AND s.to_date >= CURDATE()
ORDER BY d.dept_name;


# Bonus
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name',
  d.dept_name AS 'Department Name',
  CONCAT(emp.first_name, ' ', emp.last_name) AS 'Manager Name'
FROM employees AS e
  JOIN dept_emp AS de ON e.emp_no = de.emp_no
  JOIN departments AS d ON de.dept_no = d.dept_no
  JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
  JOIN employees AS emp ON dm.emp_no = emp.emp_no
WHERE de.to_date = '9999-01-01'
  AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;


# Justin's slack bonuses
# J-1)
# Write a query to get the average salary current managers
# make by gender
# M 79350.60
# F 75690.00

SELECT gender, AVG(salary) AS 'Average Salary'
FROM employees AS e
  JOIN dept_manager AS dm ON  dm.emp_no = e.emp_no
  JOIN departments AS d ON  d.dept_no = dm.dept_no
  JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE dm.to_date >= CURDATE()
   AND s.to_date >= CURDATE()
GROUP BY gender;

# J-2)
# Write a query to get the avg salary managers historically
#  make by gender
# M 72810.94
# F 62037.21
SELECT gender, AVG(salary) AS 'Average Salary'
FROM employees AS e
  JOIN dept_manager AS dm ON  dm.emp_no = e.emp_no
  JOIN departments AS d ON  d.dept_no = dm.dept_no
  JOIN salaries AS s ON s.emp_no = e.emp_no
# WHERE
# #   dm.to_date BETWEEN '1985-01-01' AND NOW() AND
#   s.to_date BETWEEN '1985-01-01' AND NOW()
GROUP BY gender;

# ALMOST GOT IT, SO CLOSE
# M 72012.7818
# F 62037.

# J-3)
# get avg salary for all current employees by gender
# M 72044.66
# F 71963.57
SELECT gender, AVG(salary) AS 'Average Salary'
FROM employees AS e
  JOIN dept_emp AS de ON e.emp_no = de.emp_no
#   JOIN departments AS d ON de.dept_no = d.dept_no
#   JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
#   JOIN employees AS emp ON dm.emp_no = emp.emp_no
  JOIN salaries s ON e.emp_no = s.emp_no
WHERE de.to_date >= CURDATE()
      AND s.to_date >= CURDATE()
GROUP BY gender;


# J-4)
# get avg historic salary for all employees by gender
# M 63842.25
# F 63750.17


SELECT gender, AVG(salary) AS 'Average Salary'
FROM employees AS e
  JOIN dept_emp AS de ON e.emp_no = de.emp_no
  #   JOIN departments AS d ON de.dept_no = d.dept_no
  #   JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
  #   JOIN employees AS emp ON dm.emp_no = emp.emp_no
  JOIN salaries s ON e.emp_no = s.emp_no
# WHERE de.to_date >= CURDATE()
#       AND s.to_date >= CURDATE()
GROUP BY gender;