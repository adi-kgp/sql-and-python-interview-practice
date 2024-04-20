-- Find employee names whose salary is more than their department's average salary

-- select * from employee;

WITH CTE_department_avg AS 
(select e.department_id, AVG(e.salary) AS department_avg 
FROM employee e GROUP BY e.department_id)

select e.emp_id, e.emp_name, e.salary, e.department_id 
from employee e inner join CTE_department_avg da ON e.department_id = da.department_id
where e.salary > da.department_avg
