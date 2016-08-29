SELECT
  Employee.FirstName || " " || Employee.LastName AS "Sales Agent",
  SUM(Invoice.Total) AS "Total Sales"
FROM Employee
INNER JOIN Customer
  ON Employee.EmployeeId = Customer.SupportRepId
INNER JOIN Invoice
  ON Customer.CustomerId = Invoice.CustomerId
WHERE Invoice.InvoiceDate
  LIKE "2010%"
GROUP BY "Sales Agent"
ORDER BY Invoice.Total DESC
LIMIT 1