SELECT region, COUNT(name) AS count
FROM cities
WHERE region IN('E')
