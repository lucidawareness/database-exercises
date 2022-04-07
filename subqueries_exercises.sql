# TODO: Find all the employees with the same hire date as employee 101010 using a sub-query.
# 69 Rows
SELECT CONCAT(first_name, ' ', last_name) AS 'Employee'
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = '101010');

# TODO: Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT COUNT(title)
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

# TODO: Find all the current department managers that are female
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date > CURDATE())
  AND emp_no IN (SELECT emp_no FROM employees WHERE gender = 'f');

# TODO: Find all the department names that currently have female managers
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM dept_manager
        WHERE to_date >= CURDATE()
    )
      AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
    )
);