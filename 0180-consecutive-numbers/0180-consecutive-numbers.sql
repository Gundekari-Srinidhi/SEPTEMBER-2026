# Write your MySQL query statement below


select distinct(l.num) ConsecutiveNums
from logs l
join
logs l1 
on l.id+1=l1.id
join
logs l2
on l.id+2=l2.id
where l.num = l1.num
and l1.num = l2.num