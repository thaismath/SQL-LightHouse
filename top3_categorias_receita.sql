SELECT 
    Category.CategoryName AS CATEGORIA,
    ROUND(SUM(OrderDetail.UnitPrice * Quantity * (1 - Discount)), 2) AS RECEITA
FROM Category
JOIN Product
    ON Category.Id = Product.CategoryId
JOIN OrderDetail
    ON OrderDetail.ProductId = Product.Id
GROUP BY Category.CategoryName
ORDER BY RECEITA DESC
LIMIT 3;