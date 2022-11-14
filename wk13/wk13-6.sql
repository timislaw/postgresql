SELECT customers.cname AS "Names"
FROM customers
UNION SELECT ename FROM employees;
