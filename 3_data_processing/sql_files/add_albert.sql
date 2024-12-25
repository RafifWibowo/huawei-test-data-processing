use huawei_test;

INSERT INTO employees (name, position, join_date, release_date, years_of_exp, salary)
VALUES ('Albert', 'Engineer', '2024-01-24', NULL, 2.5, 50);

SELECT name, position, join_date, release_date, years_of_exp, salary FROM employees;