CREATE TABLE employee(
    emp_id NUMERIC PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary NUMERIC(10,2),
    joining_date DATE
);

INSERT INTO employee VALUES (201, 'Arjun', 'IT', 28000, '2019-06-15');
INSERT INTO employee VALUES (202, 'Sneha', 'HR', 18000, '2021-01-20');
INSERT INTO employee VALUES (203, 'Karan', 'Marketing', 42000, '2018-11-05');
INSERT INTO employee VALUES (204, 'Pooja', 'IT', 60000, '2017-08-12');
INSERT INTO employee VALUES (205, 'Manish', 'Finance', 35000, '2020-04-30');
INSERT INTO employee VALUES (206, 'Ananya', 'Marketing', 25000, '2022-02-10');
INSERT INTO employee VALUES (207, 'Ritika', 'HR', 15000, '2016-12-01');

SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 30000;

SELECT department, AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;
