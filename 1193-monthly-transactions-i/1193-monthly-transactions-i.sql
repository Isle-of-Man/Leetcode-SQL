# Write your MySQL query statement below

# each month  country, the number of transactions and their total amount, the number of approved transactions and their total amount.


select SUBSTR(trans_date,1,7) as month, country, count(id) as trans_count ,  sum(case when state = 'approved' then 1 else 0 end ) as approved_count , sum(amount) as trans_total_amount , sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from Transactions 
group by month  , country 



# SELECT  SUBSTR(trans_date,1,7) as month, country, count(id) as trans_count, SUM(CASE WHEN state = 'approved' then 1 else 0 END) as approved_count, SUM(amount) as trans_total_amount, SUM(CASE WHEN state = 'approved' then amount else 0 END) as approved_total_amount
# FROM Transactions
# GROUP BY month, country