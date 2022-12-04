-- DELETE FROM people
-- WHERE ppoints <= 1000
-- misinterpreted exercise above

DELETE FROM people
WHERE ppoints <= ((SELECT MIN(ppoints) FROM people) + 1000);