SELECT pfirstname, plastname, pstate
FROM people
WHERE pstate = 'CA' AND pdob > '1999-12-31 0:00:00' AND (pfirstname LIKE '%e%' OR plastname LIKE '%e%');