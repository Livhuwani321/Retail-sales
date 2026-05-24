-- Databricks notebook source

SELECT SUM(`Total Amount`) AS total_revenue
FROM retail.sales.dataset;

SELECT `Product Category`,
SUM (`Total Amount`) AS total_sales
FROM retail.sales.dataset
GROUP BY`Product Category`
ORDER BY total_sales DESC
LIMIT 1;

SELECT `Product Category`,
SUM (`Quantity`) AS total_quantity_sold
FROM retail.sales.dataset
GROUP BY`Product Category`
ORDER BY total_quantity_sold DESC
