CREATE DATABASE IF NOT EXISTS huawei_test;

use huawei_test;

CREATE TABLE IF NOT EXISTS employees (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    position ENUM('Manager', 'Assistan Manager', 'Team Leader', 'Solution Architect', 'Engineer') NOT NULL,
    join_date DATE NOT NULL,
    release_date DATE,
    years_of_exp FLOAT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO employees (name, position, join_date, release_date, years_of_exp, salary) VALUES
    ('Jacky', 'Solution Architect', '2018-07-25', '2022-07-25', 8, 150),
    ('John', 'Assistan Manager', '2016-02-02', '2021-02-02', 12, 155),
    ('Alano', 'Manager', '2010-11-09', NULL, 14, 175),
    ('Aaron', 'Engineer', '2021-08-16', '2022-08-16', 1, 80),
    ('Allen', 'Engineer', '2024-06-06', NULL, 4, 75),
    ('Peter', 'Team Leader', '2020-01-09', NULL, 3, 85);