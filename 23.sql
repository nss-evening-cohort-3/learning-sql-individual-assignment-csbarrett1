SELECT
  BillingCountry AS "Country",
  SUM(Total) AS "Total Sales"
FROM
  Invoice
GROUP BY BillingCountry
ORDER BY "Total Sales" DESC
LIMIT 1