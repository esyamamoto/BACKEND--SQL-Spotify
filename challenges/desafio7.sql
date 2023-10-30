SELECT
    art.name_artist AS artista,
    al.name_album AS album,
    COUNT(f.id_users) AS pessoas_seguidoras
FROM artists AS art
    INNER JOIN albuns AS al ON art.id_artist = al.id_artist
    INNER JOIN follow_artists AS f ON art.id_artist = f.id_artist
GROUP BY
    al.name_album,
    art.name_artist
ORDER BY
    pessoas_seguidoras DESC,
    artista ASC,
    album ASC;
