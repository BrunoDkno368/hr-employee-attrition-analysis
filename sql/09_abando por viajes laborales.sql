select
	businessTravel as viajes_de_negocio,
    count(*) as empleados,
    round(100* 
			sum(case when Attrition ='Yes' then 1 else 0 end )/ count(*), 2) as porcentaje_abandono
	from employees
    group by viajes_de_negocio
    order by porcentaje_abandono desc;