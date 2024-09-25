select concat (name + '('+region')') as format_name
from cities
where population > 100000
order by format_name;