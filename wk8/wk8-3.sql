-- SELECT (CAST('{"favoriteFoods": ["ice cream"]}' AS JSONB) ->
--  'favoriteFoods') ? 'ice cream' AS "Ice Cream";

SELECT pfirstname, (pfavorites -> 'Desserts')
 ? 'ice cream' FROM people
 WHERE (pfavorites -> 'Desserts') ? 'ice cream';