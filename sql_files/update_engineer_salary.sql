use huawei_test;

UPDATE employees
SET salary = 85
WHERE position = 'Engineer' and release_date IS NULL;

SELECT name, position, join_date, release_date, years_of_exp, salary FROM employees;