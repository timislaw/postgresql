SELECT pfirstname, plastname,
(SELECT COUNT(*) FROM lists WHERE lists.pid = people.pid) AS amount
FROM people
ORDER BY amount DESC;

