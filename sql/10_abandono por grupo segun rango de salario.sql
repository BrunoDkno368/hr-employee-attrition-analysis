select 
grupo_salario,
count(*) as empleados,
round( 100* sum(case when Attrition ='Yes' then 1 else 0 end)/count(*),2) as porcentaje
from employees
group by Grupo_salario
order by porcentaje desc;

