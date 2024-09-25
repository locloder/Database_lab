SELECT c.name AS city_name, c.population
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE r.area_quantity <= 5
AND (c.population < 150000 OR c.population > 500000);
