USE employees;

SELECT * FROM employees;
# A
# 1
SELECT *
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya');
# 2
SELECT *
FROM employees
WHERE last_name LIKE 'E%';
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
OR first_name = 'Maya');
# 2
SELECT *
FROM employees
WHERE (first_name = 'Irene'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender = 'M';
# 3
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';
# 4
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';
# 5 //Find all employees hired in the 90s and born on Christmas.
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      #                    * or LIKE '199%' *
AND birth_date LIKE '%-12-25';
# 6 //Find all employees with a 'q' in their last name but not 'qu'.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';