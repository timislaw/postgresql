-- DELETE FROM people
-- WHERE ((SELECT MIN(lid) FROM lists) <= 2)
-- deleted 1000 rows

SELECT pid, COUNT(lid)
FROM people NATURAL LEFT JOIN lists
GROUP BY pid
HAVING COUNT(lid) <= 2
ORDER BY count DESC;

DELETE FROM people
WHERE pid IN (SELECT pid
WHERE (SELECT COUNT(lid)
FROM people AS i NATURAL LEFT JOIN lists
WHERE people.pid = i.pid
GROUP BY pid
) <= 2);