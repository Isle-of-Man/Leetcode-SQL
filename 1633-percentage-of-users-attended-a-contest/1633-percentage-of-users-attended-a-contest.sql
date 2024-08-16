# Write your MySQL query statement below


select contest_id , round((count(distinct(user_id)) / (SELECT COUNT(user_id) FROM Users))*100,2) AS percentage
from Register r 
group by contest_id 
order by percentage DESC , contest_id 


# select contest_id, 
# round(count(user_id) * 100.0 / (select count(user_id) from Users), 2) as percentage
# from Register
# group by contest_id
# order by percentage desc, contest_id;