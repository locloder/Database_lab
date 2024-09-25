SELECT r.name AS region_name, COUNT(c.id) AS city_count, SUM(c.population) AS total_population
FROM cities c
JOIN regions r ON c.region = r.uuid
GROUP BY r.name
HAVING COUNT(c.id) >= 10;
