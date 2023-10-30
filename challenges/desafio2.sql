SELECT
    COUNT(DISTINCT m.id_music) AS cancoes,
    COUNT(DISTINCT art.id_artist) AS artistas,
    COUNT(DISTINCT al.id_album) AS albuns
FROM music AS m
    INNER JOIN albuns AS al ON m.id_album = al.id_album
    INNER JOIN artists AS art ON art.id_artist = al.id_artist;
