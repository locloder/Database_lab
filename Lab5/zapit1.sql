SELECT r.name AS region_name, SUM(c.population) AS total_population
FROM cities c
JOIN regions r ON c.region = r.uuid
GROUP BY r.name;
