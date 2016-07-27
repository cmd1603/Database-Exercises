-- All employees with first name Irena, Vidya, and Maya
SELECT emp_no, first_name
From employees
Where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY first_name ASC;

-- Now add a condition to find everybody with those names who is also male
SELECT emp_no, first_name
From employees 
Where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';


-- Employees whose last name start with E or end with E
SELECT emp_no, first_name, last_name
From employees
Where last_name LIKE 'E%'
	OR last_name LIKE '%E';
	
-- Employees whose last name start with E and ends with E
SELECT emp_no, first_name, last_name
From employees
Where last_name LIKE 'E%'
	AND last_name LIKE '%E';	

-- Employees who were hired in the 90s and have their birthday on xmas.
SELECT hire_date
FROM employees 
WHERE birth_date LIKE '%-12-25' AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- Last name with q but not qu
SELECT first_name, last_name
From employees 
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%';


