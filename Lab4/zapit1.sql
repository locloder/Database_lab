SELECT name, UPPER(name) AS upper_name
FROM cities
ORDER BY name
LIMIT 5 OFFSET 5
