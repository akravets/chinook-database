select name as artist_name, count(album.AlbumId) as album_count from artist
inner join album 
on artist.ArtistId=album.ArtistId
group by artist_name
order by album_count DESC;