SELECT
    m.name_music AS cancao,
    COUNT(m.id_music) AS reproducoes
FROM historic as hist
    INNER JOIN music AS m ON hist.id_music = m.id_music
GROUP BY m.name_music
ORDER BY
    COUNT(m.id_music) DESC,
    m.name_music
LIMIT 2;
