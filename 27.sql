SELECT
  MediaType.Name,
  COUNT(InvoiceLine.Quantity) AS "# of Tracks Sold"
FROM
  MediaType
JOIN Track
  ON MediaType.MediaTypeId == Track.MediaTypeId
JOIN InvoiceLine
  ON Track.TrackId == InvoiceLine.TrackId
GROUP BY MediaType.Name
ORDER BY "# of Tracks Sold" DESC
LIMIT 1
