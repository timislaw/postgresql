SELECT pfirstname, plastname
FROM people LIMIT 10;
-- WHERE pid <= 10;

SELECT pfirstname, plastname, lname
FROM people LEFT JOIN lists USING(pid) LIMIT 10;

SELECT pfirstname, plastname, lname, iname
FROM people LEFT JOIN lists USING(pid)
LEFT JOIN listitems USING(lid)
NATURAL LEFT JOIN items LIMIT 10;

-- USING(iid) ----part that was incorrect in my solution