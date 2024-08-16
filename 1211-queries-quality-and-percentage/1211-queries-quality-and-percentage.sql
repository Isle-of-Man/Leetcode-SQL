# Write your MySQL query statement below

# select query_name, 

# round(AVG(rating/position),2) as quality, 

# round(sum(CASE WHEN rating < 3 THEN 1 else 0 END) *100 /  COUNT(*) * 100, 2) AS poor_query_percentage 

# from Queries 
# WHERE query_name is not null
# group by query_name 


SELECT query_name,
    ROUND(AVG(rating/position), 2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS poor_query_percentage
FROM queries
WHERE query_name is not null
GROUP BY query_name;