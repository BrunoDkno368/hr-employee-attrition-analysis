select
WorkLifeBalance as balance_trabajo_vida,
count(*) empleados,
round(100*
		sum(case when Attrition= 'Yes' then 1 else 0 end)/count(*),2 ) as porcentaje_abandono
from employees
group by balance_trabajo_vida;