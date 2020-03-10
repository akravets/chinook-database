/*
Groups genres by their count in tracks, limits genres to only Blues and Jazz
*/
SELECT genre.Name,
       count(genre.GenreId) 
  FROM track
       INNER JOIN
       genre ON track.GenreId = genre.GenreId
 GROUP BY genre.name
HAVING genre.Name IN ('Blues', 'Jazz');
