select name, round((population/40000000)*100,2) AS population_format
from cities
order by population DESC
limit 10;