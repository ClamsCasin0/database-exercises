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
SELECT *
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
