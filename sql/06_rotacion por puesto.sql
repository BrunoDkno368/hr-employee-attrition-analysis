select 
jobRole as puesto,
count(*) as cantidad_empleados,
round(100 * sum(case when attrition = 'Yes' then 1 else 0 end) / count(*),2) as porcentaje
from employees
group by puesto
order by porcentaje desc;