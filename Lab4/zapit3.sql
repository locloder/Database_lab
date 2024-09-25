select region, SUM(population) AS total_popul
from cities
where region IN ('C', 'S')
group by region;