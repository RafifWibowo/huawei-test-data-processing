SELECT name, position, join_date, release_date, years_of_exp, salary 
FROM employees
WHERE position = 'Engineer' and years_of_exp <= 3;