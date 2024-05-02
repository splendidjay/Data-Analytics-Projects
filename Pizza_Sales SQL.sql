SELECT * FROM pizza_sales$ 

Total Revenue
SELECT sum(total_price) AS Total_Revenue from pizza_sales$

Average_Order_Value
SELECT sum(total_price)/ count(distinct order_id) as Avg_Order_Value from pizza_sales$

Total_Pizzas_Sold
Select sum(quantity) AS Total_Pizza_Sold from pizza_sales$

Total_Orders_Placed
Select count(Distinct order_id) as Total_Orders from pizza_sales$

Average_Pizzas_Per_Order
select cast(cast(sum(quantity)as Decimal(10,2))/ cast(Count(Distinct order_id) as Decimal(10,2)) as Decimal(10,2))as Avg_pizzas_per_order from pizza_sales$

Daily_Trend_for_Total_orders
Select DATENAME(DW,order_date) as order_day,count(DISTINCT order_id) as Total_Per_Day from pizza_sales$
Group By DATENAME(DW,order_date)

 Hourly_Trend_for_Total_Orders
 Select Datepart(Hour,order_time) as order_hours, COUNT(distinct order_id) as Total_orders from pizza_sales$
 Group By Datepart(Hour,order_time)
 Order By Datepart(Hour,order_time)

 Percentage_of_Sales_by_Pizza_Category

SELECT SUM(total_price) AS TotalRevenue
FROM pizza_sales$

SELECT pizza_category, SUM(total_price) AS CategoryRevenue
FROM pizza_sales$
GROUP BY pizza_category

SELECT pizza_category,SUM(total_price) AS CategoryRevenue, SUM(total_price) / (SELECT SUM(total_price) FROM pizza_sales$) * 100 AS PercentageOfTotalSales
FROM pizza_sales$
GROUP BY pizza_category

Percentage_sale_by_pizza_size

SELECT SUM(total_price) AS TotalRevenue
FROM pizza_sales$

SELECT pizza_size, SUM(total_price) AS pizza_size_revenue
FROM pizza_sales$
GROUP BY pizza_size

SELECT pizza_size,CAST(SUM(total_price) AS DECIMAL(10,2)) AS pizza_size_revenue, CAST(SUM(total_price) / (SELECT SUM(total_price) FROM pizza_sales$) AS DECIMAL (10,2)) * 100 AS PercentageOfTotalSales
FROM pizza_sales$
GROUP BY pizza_size
Order By pizza_size 

Total_pizzas_sold_by_pizza_category

select pizza_category, sum(quantity) as Total_pizzas_sold
from pizza_sales$
Group By pizza_category

Top_5_bestsellers_by_Total+pizzas_sold
select Top 5 pizza_name, sum(quantity) as Top_5_Pizzas
from pizza_sales$
Group By pizza_name
Order by sum(quantity) DESC

Top_5_bottom_sellers_by_Total_pizzas_sold

select Top 5 pizza_name, sum(quantity) as Top_5_Pizzas
from pizza_sales$
Group By pizza_name
Order by sum(quantity) ASC






