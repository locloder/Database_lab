SELECT c.name, c.population
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE r.area_quantity >= 5
ORDER BY c.population DESC
LIMIT 5 OFFSET 10;
