select
count(*) as total_empleados,
sum(case when attrition = 'Yes' then 1 else 0 end) as cantidad_abandono,
round( 100* sum( case when attrition = 'Yes' then 1 else 0 end)/ count(*) , 2) as  porcentaje_abandono
from employees; 