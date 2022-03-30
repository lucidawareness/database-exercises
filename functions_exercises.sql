SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT first_name, gender
FROM employees
WHERE gender = 'm'
  AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya');

# TODO: Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name) as full_name
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name like '%e';

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name like '%e';

SELECT last_name
FROM employees
WHERE last_name like '%q%'
  AND last_name not like '%qu%';

# TODO: Find all employees born on Christmas — 842 rows.
SELECT first_name, last_name, birth_date
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;

# TODO: Find all employees hired in the 90s and born on Christmas — 362 rows
SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 1999;

# TODO: Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini
SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY year(hire_date) DESC;

# TODO: For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate())
SELECT DATEDIFF(curdate(), hire_date), hire_date, first_name
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 1999;