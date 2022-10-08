-- SELECT customers.cname, rentals.rid, movies.mname
-- FROM customers NATURAL JOIN rentals NATURAL JOIN movies;

SELECT customers.cname, rentals.rid, movies.mname
FROM customers NATURAL LEFT JOIN rentals
NATURAL LEFT JOIN movies;