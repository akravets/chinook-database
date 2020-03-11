/*
In SQLite there is no support for FULL OUTER JOIN
By using LEFT and RIGHT joins and UNION between them, we can
mimic FULL OUTER JOIN
*/
SELECT * FROM Artist
LEFT OUTER JOIN Album ON Artist.ArtistId=Album.ArtistId 
UNION
SELECT * FROM Album
LEFT OUTER JOIN Artist ON Artist.ArtistId=Album.ArtistId
ORDER BY Name, Title
