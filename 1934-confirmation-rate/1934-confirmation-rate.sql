# Write your MySQL query statement below


select s.user_id , ROUND(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) / count(*), 2) as confirmation_rate
from Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
group by s.user_id 