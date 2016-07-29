-- Write a query that shows each department along with the name of the current manager for that department
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
JOIN dept_manager m ON d.dept_no = m.dept_no
JOIN employees e ON m.emp_no = e.emp_no
WHERE m.to_date = '9999-01-01';

--Find the name of all departments currently managed by women
SELECT CONCAT(e.first_name, '', e.last_name) AS 'Manager', d.dept_name AS 'Department Name'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE gender = 'F' AND dm.to_date > NOW() AND dm.from_date <= NOW();

--Find the current titles of employees currently working in the Customer Service Department
SELECT t.title AS 'Title', COUNT(e.emp_no) AS 'Count'
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN titles t ON e.emp_no = t.emp_no
WHERE de.to_date > NOW()
AND t.to_date > NOW ()
AND d.dept_name = 'Customer Service'
GROUP BY t.title;

-- Finds the current salary of all the current managers
SELECT d.dept_name AS 'Department Name' , CONCAT(e.first_name, '', e.last_name) AS 'Name', s.salary AS 'Salary'
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dm.dept_no
JOIN salaries s ON s.emp_no = e.emp_no
WHERE s.to_date > NOW() AND s.from_date <= NOW() AND dm.to_date > NOW() AND dm.from_date <=NOW() GROUP BY(e.first_name);

-- Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Name', d.dept_name AS 'Department', CONCAT(managers.first_name, ' ', managers.last_name) AS 'Manager'
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees AS managers ON dm.emp_no = managers.emp_no
WHERE de.to_date > NOW()
AND dm.to_date > NOW();