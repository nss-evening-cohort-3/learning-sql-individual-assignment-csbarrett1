SELECT
  Employee.FirstName || " " || Employee.LastName AS "Sales Agent",
  SUM(Invoice.Total) AS "Total Sales"
FROM Employee
INNER JOIN Customer
  ON Employee.EmployeeId = Customer.SupportRepId
INNER JOIN Invoice
  ON Customer.CustomerId = Invoice.CustomerId
GROUP BY "Sales Agent"