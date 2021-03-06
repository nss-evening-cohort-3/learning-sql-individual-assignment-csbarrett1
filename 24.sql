SELECT
  Track.*,
  COUNT(InvoiceLine.Quantity) AS "Quantity",
  Invoice.InvoiceDate
FROM Track
JOIN InvoiceLine
  ON InvoiceLine.TrackId == Track.TrackId
JOIN Invoice
  ON Invoice.InvoiceId == InvoiceLine.InvoiceId
WHERE InvoiceDate
GROUP BY Track.Name
ORDER BY "Quantity" DESC
LIMIT 5