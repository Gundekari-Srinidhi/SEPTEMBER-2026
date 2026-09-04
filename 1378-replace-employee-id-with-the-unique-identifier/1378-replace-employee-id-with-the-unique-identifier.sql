# Write your MySQL query statement below

#SELECT unique_id,name FROM Employees e LEFT JOIN EmployeeUNI eu on e.id = eu.id;


select unique_id,name from employees e left join employeeuni ep on e.id = ep.id;