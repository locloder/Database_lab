SELECT r.name AS region_name, SUM(c.population) AS total_population
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE c.population > 300000
GROUP BY r.name;
