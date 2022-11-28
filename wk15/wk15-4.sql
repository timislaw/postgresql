SELECT pfirstname, plastname, COUNT(liid)
FROM people
NATURAL LEFT JOIN lists
NATURAL LEFT JOIN listitems
GROUP BY pfirstname, plastname
ORDER BY count DESC;
