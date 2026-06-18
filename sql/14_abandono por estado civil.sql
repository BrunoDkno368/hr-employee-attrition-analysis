select
MaritalStatus as estado_civil,
count(*) as cantidad,
round(100* sum( case when Attrition= 'Yes' then 1 else 0 end)/count(*), 2) as porcentaje
from employees
group by estado_civil
order by porcentaje desc; 