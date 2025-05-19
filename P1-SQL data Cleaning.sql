SELECT * FROM retail_db.superstore;

SELECT COUNT(*) FROM retail_db.superstore;

SELECT * FROM retail_db.superstore
WHERE Category IS NULL OR Profit IS NULL OR Sales IS NULL;

SELECT * FROM retail_db.superstore
WHERE Category IS NOT NULL AND Profit IS NOT NULL AND Sales IS NOT NULL;


SHOW COLUMNS FROM retail_db.superstore;

SELECT Category, `Sub-Category`,
       SUM(Profit) AS Total_Profit,
       SUM(Sales) AS Total_Sales,
       ROUND(SUM(Profit)/SUM(Sales), 2) AS Profit_Margin
FROM retail_db.superstore
GROUP BY Category, `Sub-Category`;





