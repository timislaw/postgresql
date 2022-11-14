SELECT department.dept, employees.ename
FROM department
LEFT JOIN employees USING (eid);

SELECT
    department.dept,
    (SELECT employees.ename
        FROM employees
        WHERE employees.eid = department.eid)
        AS "Employee Name"
    FROM department;
