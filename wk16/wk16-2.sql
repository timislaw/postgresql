UPDATE people
    SET ppoints = 9995
    WHERE pid = 134;

UPDATE people
SET pfirstname = 'James', plastname = 'Bond'
WHERE ppoints IN (
    SELECT MAX(ppoints) FROM people
)
RETURNING *;