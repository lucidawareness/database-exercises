# TODO: Find all the employees with the same hire date as employee 101010 using a sub-query.
# 69 Rows
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE hire_date = (SELECT emp_no )