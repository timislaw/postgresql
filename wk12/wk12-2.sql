SELECT movies.mname, rentals.rid, customers.cname
FROM customers RIGHT JOIN rentals USING(cid)
RIGHT JOIN movies USING (mid);

SELECT movies.mname, rentals.rid, customers.cname
FROM movies LEFT JOIN rentals USING (mid)
LEFT JOIN customers USING(cid);