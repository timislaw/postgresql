SELECT cname 
FROM customers;

SELECT cname 
FROM customers 
GROUP BY cname;

SELECT cname, COUNT(*) 
FROM customers 
GROUP BY cname;

SELECT cname, COUNT(rid) 
FROM customers
LEFT JOIN rentals USING(cid)
GROUP BY cname;