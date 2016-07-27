SELECT DISTINCT 
FROM titles
ORDER BY title ASC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND (last_name LIKE '%E')
GROUP BY first_name ASC, last_name ASC;

SELECT last_name
FROM employees 
WHERE last_name LIKE '%q%' AND (last_name NOT LIKE '%qu%')
GROUP BY last_name ASC;