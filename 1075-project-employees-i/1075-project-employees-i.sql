# Write your MySQL query statement below

#SELECT project_id,ROUND(AVG(experience_years),2) as average_years FROM Project as p left JOIN Employee as e ON p.employee_id=e.employee_id GROUP BY p.project_id;


select project_id,round(avg(experience_years),2) as average_years FROM Project as p left JOIN Employee as e ON p.employee_id=e.employee_id group by project_id;