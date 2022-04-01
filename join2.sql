USE irvin;

SELECT DISTINCT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) as 'Department Manager'
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
JOIN dept_manager as dm
ON de.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;