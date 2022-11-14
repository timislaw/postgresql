SELECT employees.ename, employees.eid, department.eid, department.dept
    FROM employees LEFT JOIN department USING (eid);


-- SELECT
--     (SELECT department.dept FROM department WHERE department.eid = employees.eid),
--     employees.ename FROM employees;

SELECT
    employees.ename,
        (SELECT department.dept
        FROM department
        WHERE department.eid = employees.eid) AS "Dept Name"
    FROM employees;