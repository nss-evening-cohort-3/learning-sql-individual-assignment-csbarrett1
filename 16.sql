SELECT
  Album.Title AS "Album",
  MediaType.Name AS "Media Type",
  Genre.Name AS "Genre"
FROM Track
INNER JOIN Album
  ON Track.AlbumId = Album.AlbumId
INNER JOIN Genre
  ON Track.GenreId = Genre.GenreId
INNER JOIN MediaType
  ON Track.MediaTypeId = MediaType.MediaTypeId