# Write your MySQL query statement below



select e2.employee_id, e2.name, count(e1.employee_id) as reports_count, round(avg(e1.age)) as average_age 
from Employees e1
JOIN Employees e2 
ON e1.reports_to  = e2.employee_id 
group by employee_id 
order by employee_id




# select mgr.employee_id, mgr.name, COUNT(emp.employee_id) as reports_count, ROUND(AVG(emp.age)) as average_age

# from employees emp 
# join employees mgr

# on emp.reports_to = mgr.employee_id
# group by employee_id
# order by employee_id

