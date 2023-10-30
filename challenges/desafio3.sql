SELECT
    u.name_users AS pessoa_usuaria,
    COUNT(hist.id_users) AS musicas_ouvidas,
    SUM(ROUND(m.duration_music / 60, 2)) AS total_minutos
FROM users AS u
    INNER JOIN historic AS hist ON u.id_users = hist.id_users
    INNER JOIN music AS m ON hist.id_music = m.id_music
GROUP BY u.name_users
ORDER BY u.name_users ASC;
