SELECT 
  FirstName AS "First Name", 
  LastName AS "Last Name", 
  InvoiceId AS "ID", 
  InvoiceDate AS "Date", 
  BillingCountry AS "Country" 
FROM Customer 
JOIN Invoice 
  ON Invoice.CustomerId == Customer.CustomerId 
WHERE Country = "Brazil"