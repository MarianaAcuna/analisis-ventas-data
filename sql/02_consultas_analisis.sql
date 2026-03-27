-- Ventas por región
SELECT Region, ROUND(SUM(Sales_Amount),2) AS Total_Ventas
FROM ventas
GROUP BY Region
ORDER BY Total_Ventas DESC;

-- Ventas por categoria de producto
SELECT Product_Category, ROUND(SUM(Sales_Amount),2) AS Total_Ventas
FROM ventas
GROUP BY Product_Category
ORDER BY Total_Ventas DESC;

-- Tendencia mensual de ventas
SELECT DATE_FORMAT(Sale_Date, '%Y-%m') AS Mes, ROUND(SUM(Sales_Amount),2) AS Ventas_Mes
FROM ventas
GROUP BY DATE_FORMAT(Sale_Date, '%Y-%m')
ORDER BY Mes;

-- Ventas por representante de ventas top 10
SELECT Sales_Rep, ROUND(SUM(Sales_Amount),2) AS Total_Ventas
FROM ventas
GROUP BY Sales_Rep
ORDER BY Total_Ventas DESC
LIMIT 10;

-- Ticket promedio por tipo de cliente
SELECT Customer_Type, ROUND(AVG(Sales_Amount),2) AS Ticket_Promedio
FROM ventas
GROUP BY Customer_Type
ORDER BY Ticket_Promedio DESC;


-- margen de ganancia por categoria de producto
SELECT
    Product_Category,
    ROUND(SUM((Unit_Price - Unit_Cost) * Quantity_Sold),2) AS Ganancia_Estimada
FROM ventas
GROUP BY Product_Category
ORDER BY Ganancia_Estimada DESC;

-- Ventas por canal de ventas
SELECT Sales_Channel, ROUND(SUM(Sales_Amount),2) AS Total_Ventas
FROM ventas
GROUP BY Sales_Channel
ORDER BY Total_Ventas DESC; 

-- Descuento promedio por tipo de cliente
SELECT Customer_Type, ROUND(AVG(Discount),2) AS Descuento_Promedio
FROM ventas
GROUP BY Customer_Type
ORDER BY Descuento_Promedio DESC;