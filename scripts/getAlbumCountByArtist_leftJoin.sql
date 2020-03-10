/*
 Selects artist name from artist table and joins album table. Groups artist name by their album count as well as displays those artists that 
 don't have any albums. This is different then INNER JOIN because latter will return only those artists that have albums.
*/
SELECT name AS artist_name, count(album.AlbumId) AS album_count, title FROM artist
LEFT JOIN album 
ON artist.ArtistId=album.ArtistId
GROUP BY artist_name
/*
We can mimic INNER JOIN from LEFT JOIN by adding HAVING clause which acts as WHERE in GROUP BY 
HAVING AlbumId IS NOT NULL
*/
ORDER BY album_count ASC;