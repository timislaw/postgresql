-- SELECT CAST('{"favoriteFoods": ["Cake"]}' AS JSONB);
SELECT pfirstname, pfavorites -> 'Desserts'
 @> CAST('["cake"]' AS JSONB) "Desserts"
FROM people;
