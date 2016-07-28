-- Counting genders with first name Irena, Vidya, and Maya
SELECT COUNT(*), gender 
FROM employees
Where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') 
GROUP BY gender;

	
-- Employees whose last name start with E and ends with E, concatenate with first name
SELECT CONCAT(first_name, '', last_name) AS full_name
From employees
Where last_name LIKE '%E' AND last_name LIKE 'E%';


-- Employees who were hired in the 90s and have their birthday on xmas.
SELECT emp_no, CONCAT(first_name, '', last_name), datediff(curdate(), hire_date)
FROM employees 
WHERE birth_date LIKE '%-12-25' AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination of first and last names.
SELECT first_name, last_name, COUNT(*) AS DISTINCT_name 
FROM employees 
WHERE last_name LIKE '%q%' AND (last_name NOT LIKE '%qu%')
GROUP BY first_name, last_name;




