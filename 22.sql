SELECT
  Employee.FirstName || " " || Employee.LastName AS "Sales Rep",
  COUNT (CustomerId) AS "# of Customers"
FROM Customer
JOIN Employee
  ON Customer.SupportRepID = Employee.EmployeeId
GROUP BY "Sales Rep"