# Write your MySQL query statement below


#SELECT p.firstName,p.lastName,a.city,a.state from Person p left join Address a on p.personId = a.personId;




select  firstname,lastname,city,state
from person p left join address a
on p.personid = a.personid;