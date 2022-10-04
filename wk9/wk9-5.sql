SELECT pfirstname, plastname, pdob
FROM people
WHERE pdob BETWEEN '2004-01-01' AND '2006-01-01';
SELECT pfirstname, plastname, pdob, pstate
FROM people
WHERE pdob BETWEEN '2000-01-01' AND '2010-01-01' AND pstate = 'CA';
