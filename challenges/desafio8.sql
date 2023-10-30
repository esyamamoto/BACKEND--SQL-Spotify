SELECT
    art.name_artist AS artista,
    al.name_album AS album
FROM artists AS art
    INNER JOIN albuns AS al ON art.id_artist = al.id_artist
WHERE
    art.name_artist = 'Elis Regina'
ORDER BY album;
