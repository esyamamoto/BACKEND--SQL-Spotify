SELECT
    FORMAT(MIN(plan.value_plan), 2) AS faturamento_minimo,
    FORMAT(MAX(plan.value_plan), 2) AS faturamento_maximo,
    FORMAT(
        ROUND(AVG(plan.value_plan), 2),
        2
    ) AS faturamento_medio,
    FORMAT(
        ROUND(SUM(plan.value_plan), 2),
        2
    ) AS faturamento_total
FROM users AS u
    INNER JOIN plans_signature AS plan ON u.id_plans = plan.id_plans;
