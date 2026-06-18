select JobSatisfaction as satisfaccion,
count(*) as cantidad_abandono,
round( 100* sum( case when Attrition = 'Yes' then 1 else 0 end) /count(*),2) as porcentaje
from employees
group by satisfaccion
order by porcentaje desc;