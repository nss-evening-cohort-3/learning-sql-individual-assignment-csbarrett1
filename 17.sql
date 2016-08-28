SELECT
  COUNT (InvoiceLineId) AS "# of Items",
  Invoice.*
FROM Invoice
JOIN InvoiceLine
  ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceId