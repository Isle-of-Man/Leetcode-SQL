# Write your MySQL query statement below


select contest_id , round((count(distinct(r.user_id)) / (SELECT COUNT(*) FROM Users))*100,2) AS percentage
from Users u 
 JOIN Register r 
ON u.user_id = r.user_id 
group by contest_id 
order by percentage DESC , contest_id 


# select contest_id, 
# round(count(user_id) * 100.0 / (select count(user_id) from Users), 2) as percentage
# from Register
# group by contest_id
# order by percentage desc, contest_id;