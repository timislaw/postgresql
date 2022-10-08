-- SELECT customers.cname, employees.ename
-- FROM customers NATURAL JOIN employees;

SELECT cname
FROM customers
UNION SELECT ename
FROM employees;