/*CREATE DATABASE BNPL_Analytics;
GO

USE BNPL_Analytics;
GO*/
/*CREATE TABLE BNPL_Transactions
(
    Transaction_ID INT PRIMARY KEY,
    Customer_ID INT,
    Customer_Name NVARCHAR(100),
    Email NVARCHAR(100),
    Phone NVARCHAR(50),
    Country NVARCHAR(50),
    Merchant NVARCHAR(100),
    Category NVARCHAR(50),
    Order_Value DECIMAL(10,2),
    Installments INT,
    Payment_Status NVARCHAR(20),
    Days_Late INT,
    Credit_Score INT,
    Monthly_Income DECIMAL(10,2),
    Age INT,
    Order_Date DATE,
    Order_Month NVARCHAR(20),
    Order_Year INT,
    Quarter INT,
    Risk_Level NVARCHAR(20),
    Age_Group NVARCHAR(20),
    Income_Band NVARCHAR(20),
    Customer_Segment NVARCHAR(20)
);
Select top 10 *
from [dbo].[clean_bnpl_data] 

SELECT COUNT(*) AS Total_Transactions
FROM clean_bnpl_data;

SELECT
ROUND(SUM(Order_Value),2) AS Total_GMV
FROM clean_bnpl_data; 

SELECT
ROUND(AVG(Order_Value),2) AS Avg_Order_Value
FROM clean_bnpl_data; 

SELECT
MAX(Order_Value) AS Highest_Order
FROM clean_bnpl_data;

SELECT
MIN(Order_Value) AS Lowest_Order
FROM clean_bnpl_data;

SELECT

Merchant,

COUNT(*) AS Orders,

SUM(Order_Value) AS Revenue,

AVG(Order_Value) AS Avg_Order

FROM clean_bnpl_data

GROUP BY Merchant

ORDER BY Revenue DESC;

SELECT

Country,

COUNT(*) Orders,

SUM(Order_Value) Revenue

FROM clean_bnpl_data

GROUP BY Country

ORDER BY Revenue DESC;

SELECT

Category,

COUNT(*) Orders,

SUM(Order_Value) Revenue

FROM clean_bnpl_data

GROUP BY Category

ORDER BY Revenue DESC;

SELECT

Payment_Status,

COUNT(*) Total

FROM clean_bnpl_data

GROUP BY Payment_Status;

SELECT

Payment_Status,

COUNT(*) AS Total,

ROUND(
100.0*COUNT(*)/
SUM(COUNT(*)) OVER(),
2
) AS Percentage

FROM clean_bnpl_data

GROUP BY Payment_Status;

SELECT

Risk_Level,

COUNT(*) Customers,

AVG(Order_Value) Avg_Order,

SUM(Order_Value) Revenue

FROM clean_bnpl_data

GROUP BY Risk_Level;

SELECT

Customer_Segment,

COUNT(*) Customers,

SUM(Order_Value) Revenue

FROM clean_bnpl_data

GROUP BY Customer_Segment

ORDER BY Revenue DESC; 


SELECT

Income_Band,

COUNT(*) Customers,

AVG(Order_Value) Avg_Order

FROM clean_bnpl_data

GROUP BY Income_Band;

SELECT

Age_Group,

COUNT(*) Customers,

AVG(Order_Value) Avg_Order

FROM clean_bnpl_data

GROUP BY Age_Group;

SELECT

Order_Year,

Order_Month,

SUM(Order_Value) Revenue

FROM clean_bnpl_data

GROUP BY

Order_Year,

Order_Month

ORDER BY

Order_Year,

MIN(Order_Date);

SELECT TOP 10

Customer_Name,

SUM(Order_Value) Revenue

FROM clean_bnpl_data

GROUP BY Customer_Name

ORDER BY Revenue DESC; */

SELECT TOP 10

Merchant,

SUM(Order_Value) Revenue

FROM clean_bnpl_data

GROUP BY Merchant

ORDER BY Revenue DESC;
