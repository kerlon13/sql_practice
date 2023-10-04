SELECT p.SupplierID, COUNT(p.SupplierID), S.SupplierName
FROM Products p
         INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY p.SupplierID, s.SupplierName
ORDER BY COUNT(p.SupplierID) DESC
LIMIT 3
;