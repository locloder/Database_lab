SELECT *
from cities
where NOT region in ("E","W")
order by population DESC
Limit 10 offset 10