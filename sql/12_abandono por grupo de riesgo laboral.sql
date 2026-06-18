SELECT
    Riesgo_laboral,
    COUNT(*) AS Employees,
    ROUND(
        100 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS AttritionRate
FROM employees
GROUP BY Riesgo_laboral;