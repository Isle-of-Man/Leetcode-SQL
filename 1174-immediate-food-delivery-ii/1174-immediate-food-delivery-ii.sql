# Write your MySQL query statement below

    
# select round(avg(order_date = customer_pref_delivery_date)*100,2) as    immediate_percentage 
# from Delivery
# where (customer_id , order_date) in 
# (      
#     select customer_id , min(order_date) 
#     from Delivery 
#     group by customer_id     
# ) 

with cte AS
(
    select customer_id , min(order_date) as earliest_order_date
    from Delivery 
    group by customer_id  
)

select round(avg(d.order_date = d.customer_pref_delivery_date)*100,2) as    immediate_percentage 
from Delivery d
JOIN cte c
ON d.customer_id = c.customer_id
AND d.order_date = c.earliest_order_date
