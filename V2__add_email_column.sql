WITH SalesCTE AS (
    SELECT CustomerID, SUM(Sales) AS TotalSales
    FROM Orders
    GROUP BY CustomerID
)
SELECT CustomerID, TotalSales
FROM SalesCTE
WHERE TotalSales > 2000;
