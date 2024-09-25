select name AS city_name, length(name) AS name_length
from cities
where length(name) NOT IN (8, 9, 10)
order by name;
