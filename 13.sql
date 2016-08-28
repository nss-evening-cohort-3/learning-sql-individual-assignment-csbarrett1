SELECT
  Artist.Name,
  Track.Name,
  InvoiceLine.* 
FROM Artist 
INNER JOIN Album
  ON Artist.ArtistID = Album.ArtistId
INNER JOIN Track
  ON Album.AlbumId = Track.AlbumId
INNER JOIN InvoiceLine
  on InvoiceLine.TrackId = Track.TrackId