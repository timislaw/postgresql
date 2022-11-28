-- UPDATE people
-- SET plastname = plastname + '+HERO'
-- WHERE ppoints >= (SELECT AVG(ppoints)
-- FROM people)
-- RETURNING pid, plastname, ppoints;

UPDATE people
SET plastname = plastname || '+HERO'
WHERE ppoints >= (SELECT AVG(ppoints)
FROM people)
RETURNING pid, plastname, ppoints;