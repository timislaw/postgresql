SELECT * FROM employees;
SELECT * FROM department;

SELECT employees.ename, department.dept FROM
    employees JOIN department ON (employees.eid=department.eid)
    WHERE department.dept = 'Sales';

SELECT
    (SELECT employees.ename FROM employees
        WHERE employees.eid = department.eid) AS "Employee Name",
    department.dept FROM department
    WHERE department.dept = 'Sales';