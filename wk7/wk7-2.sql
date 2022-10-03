SELECT pfirstname || ' ' || plastname || ' is ' || CAST(EXTRACT(day FROM CAST('now' AS DATE) - pdob) AS INT) / 365 || ' years old' AS "Age" FROM people ORDER BY pdob ASC;
