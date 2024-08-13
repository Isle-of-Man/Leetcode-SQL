# Write your MySQL query statement below





select unique_id , name 
from Employees e 
Left Join EmployeeUNI eu 
ON e.id = eu.id 