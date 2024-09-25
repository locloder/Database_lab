SELECT CONCAT(name, '----', ROUND((population / 40000000) * 100, 2)) AS format_population
FROM cities
WHERE population >= (40000000 * 0.001)
ORDER BY ROUND((population / 40000000) * 100, 2) DESC;