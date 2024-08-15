# Write your MySQL query statement below


select p.product_id , IFNULL(ROUND(SUM(p.price*u.units)/SUM(u.units), 2), 0) as average_price
FROM Prices p
LEFT JOIN UnitsSold u 
ON p.product_id = u.product_id
AND u.purchase_date >= p.start_date 
AND u.purchase_date <= p.end_date
group by product_id


# SELECT p.product_id, IFNULL(round(SUM(p.price*u.units)/sum(u.units),2),0) as average_price
# FROM Prices p 
# LEFT JOIN UnitsSold u
# ON p.product_id = u.product_id AND 
# u.purchase_date BETWEEN p.Start_date and p.end_date
# GROUP BY p.product_id