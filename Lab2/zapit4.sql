SELECT *
FROM cities
WHERE region IN ('E', 'W', 'N')
AND population > 150000
AND population <= 350000
ORDER BY name
LIMIT 20;