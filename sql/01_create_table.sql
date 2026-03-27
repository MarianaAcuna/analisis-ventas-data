CREATE TABLE ventas (
    Product_ID INT,
    Sale_Date DATE,
    Sales_Rep VARCHAR(100),
    Region VARCHAR(100),
    Sales_Amount DECIMAL(10,2),
    Quantity_Sold INT,
    Product_Category VARCHAR(100),
    Unit_Cost DECIMAL(10,2),
    Unit_Price DECIMAL(10,2),
    Customer_Type VARCHAR(50),
    Discount DECIMAL(5,2),
    Payment_Method VARCHAR(50),
    Sales_Channel VARCHAR(50),
    Region_and_Sales_Rep VARCHAR(150)
);