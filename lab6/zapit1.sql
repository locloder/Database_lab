SELECT c.name AS city_name, r.name AS region_name
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE c.population > 350000;
