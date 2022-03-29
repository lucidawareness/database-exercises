SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%';

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
WHERE gender = 'm' AND (first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name like '%e';

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name like '%e';

SELECT last_name
FROM employees
WHERE last_name like '%q%' AND last_name not like '%qu%';