select * from employees;
select * from departments;
select first_name,last_name,department_name
from employees e left join departments d                         -- e and d  is shortcut
            on e.department_id = d.department_id;