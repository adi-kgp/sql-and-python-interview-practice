-- Write a solution to find managers with at least five direct reports.
-- select * from employee2;

select e2.name 
from employee2 e1
inner join employee2 e2 
on e1.managerId = e2.id
group by e2.name, e1.managerId
having count(*) > 4


