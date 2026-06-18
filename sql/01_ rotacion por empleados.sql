select department,
count(*) as empleados,
sum(
case when attrition= 'Yes'
then 1 else 0 end
) as rotacion_empleados
from employees
group by department