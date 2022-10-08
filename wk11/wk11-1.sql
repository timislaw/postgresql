-- SELECT ename, dept 
-- FROM employees, department
-- JOIN employees.eid = department.eid;
-- stuck
SELECT employees.ename, department.dept
FROM employees JOIN department ON (employees.eid = department.eid)
WHERE department.dept = 'Sales';
