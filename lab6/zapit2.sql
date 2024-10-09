SELECT c.name AS city_name
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE r.name = 'Nord';
