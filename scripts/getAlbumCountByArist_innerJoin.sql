/*
 Selects artist name from artist table and joins album table. Groups artist name by their album count. This query will not show those artists that don't have any albums
*/
SELECT name AS artist_name,
       count(album.AlbumId) AS album_count,
       title
  FROM artist
       INNER JOIN
       album ON artist.ArtistId = album.ArtistId
 GROUP BY artist_name
 ORDER BY album_count ASC;
