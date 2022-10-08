-- SELECT pfirstname, plastname, pdob
-- FROM people
-- WHERE pdob < '10-07-2012';
-- above my answer

SELECT pfirstname, plastname, pdob
FROM people
WHERE pdob < CAST('now' AS TIMESTAMP) - CAST('10 years' AS INTERVAL);