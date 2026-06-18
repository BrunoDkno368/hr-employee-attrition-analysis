select
jobRole as puesto,
avg(MonthlyIncome) as promedio
from employees
group by JobRole
order by promedio desc ;