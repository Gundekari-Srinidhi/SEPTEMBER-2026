# Write your MySQL query statement below

#SELECT customer_id,count(customer_id) as count_no_trans FROM Visits v LEFT JOIN Transactions t on t.visit_id = v.visit_id WHERE t.visit_id IS NULL GROUP BY v.customer_id;




select customer_id,count(customer_id) as count_no_trans 
from visits v left join transactions t on v.visit_id = t.visit_id 
where t.transaction_id is null group by customer_id;