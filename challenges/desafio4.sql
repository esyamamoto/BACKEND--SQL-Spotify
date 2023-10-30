SELECT
    u.name_users AS pessoa_usuaria,
    IF(
        YEAR(MAX(hist.reproduction_date)) >= 2021,
        'Ativa',
        'Inativa'
    ) AS status_pessoa_usuaria

FROM users as u
    INNER JOIN historic AS hist ON u.id_users = hist.id_users
GROUP BY name_users
ORDER BY u.name_users;
