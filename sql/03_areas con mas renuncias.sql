select
department,
count(*) as empleados
from employees
where Attrition = 'Yes'
group by department
order by count(*) desc;