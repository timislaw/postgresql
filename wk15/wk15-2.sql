SELECT cname, COUNT(rid) AS amt
FROM customers
LEFT JOIN rentals USING(cid)
GROUP BY cname
ORDER BY amt DESC;

SELECT cname, COUNT(rid) AS amt
FROM customers
LEFT JOIN rentals USING (cid)
GROUP BY cname
HAVING cname LIKE '%e%'
ORDER BY amt DESC;

SELECT cname, COUNT(rid) AS amt
FROM customers
LEFT JOIN rentals USING(cid)
WHERE cname LIKE '%e%'
GROUP BY cname
ORDER BY amt DESC;
