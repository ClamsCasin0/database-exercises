USE employees;

# 1
SELECT DISTINCT title
FROM titles;

# 2
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY last_name;

# 3
SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY first_name, last_name;

# 4
SELECT DISTINCT COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
ORDER BY COUNT(*);

# 5
