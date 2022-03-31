# TODO: In your script, use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title
from titles;

# TODO: Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY
SELECT last_name
from employees
where last_name like 'e%'
  AND last_name like '%e'
group by last_name;

# TODO: Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows
SELECT last_name, first_name
from employees
where last_name like 'e%'
  AND last_name like '%e'
group by last_name , first_name;

# TODO: Find the unique last names with a 'q' but not 'qu'
SELECT last_name
from employees
where last_name like '%q%' AND last_name NOT LIKE '%qu%'
group by last_name;

# TODO: Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others
SELECT count(last_name) as total, last_name
from employees
where last_name like '%q%' AND last_name NOT LIKE '%qu%'
group by last_name;

# TODO: Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names
SELECT count(*) as total, gender
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;