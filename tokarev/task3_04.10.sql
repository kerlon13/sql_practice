SELECT
    Suppliers.SupplierName,
    COUNT (*) AS total_products
FROM Products
JOIN Suppliers USING(SupplierID)
GROUP BY Products.SupplierID
ORDER BY total_products DESC
LIMIT 3