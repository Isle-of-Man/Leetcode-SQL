# Write your MySQL query statement below



select MAX(num) as num
from 
(
    select num
    FROM Mynumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) unique_numbers

# SELECT MAX(num) AS num
# FROM (
#     SELECT num
#     FROM MyNumbers
#     GROUP BY num
#     HAVING COUNT(num) = 1
# ) AS unique_numbers;