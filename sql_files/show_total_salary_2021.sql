use huawei_test;

SELECT SUM(
    CASE
        WHEN release_date IS NULL THEN 12
        WHEN release_date BETWEEN '2021-01-01' AND '2021-12-31' THEN 
            MONTH(release_date) - MONTH(join_date) + 1
        ELSE 0
    END * salary
) as total_salary_2021
FROM employees;