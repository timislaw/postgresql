SELECT customers.cname, rentals.rid, movies.mname
FROM customers 
LEFT JOIN rentals USING (cid)
LEFT JOIN movies USING (mid);

SELECT rentals.rid,
(SELECT customers.cname
FROM customers
WHERE customers.cid = rentals.cid),
(SELECT movies.mname
FROM movies
WHERE movies.mid = rentals.mid)
FROM rentals;
