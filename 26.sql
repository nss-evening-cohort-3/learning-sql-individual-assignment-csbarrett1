SELECT
  Artist.Name,
  COUNT(InvoiceLine.Quantity) AS "# of Tracks Sold"
FROM
  Artist
JOIN Album
  ON Artist.ArtistId == Album.ArtistId
JOIN Track
  ON Album.AlbumId == Track.AlbumId
JOIN InvoiceLine
  ON Track.TrackId == InvoiceLine.TrackId
GROUP BY Artist.Name
ORDER BY "# of Tracks Sold" DESC
LIMIT 3