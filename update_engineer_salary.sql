use huawei_test;

UPDATE employees
SET salary = 85
WHERE position = 'Engineer' and release_date IS NULL;