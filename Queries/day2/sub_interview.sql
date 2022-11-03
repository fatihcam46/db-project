--find the highest 14th salary
select min(salary)
from (select * from employees order by salary desc)
where rownum <15;

--list salary high to low without duplicate values
select distinct salary
from employees
order by salary desc;

--find the highest 14th salary(removing duplicate values)
select min(salary)
from (select distinct salary from employees order by salary desc)
where rownum <15;

--find employee info who is making 14th highest salary (without duplicates)
select *
from employees
where salary = 10500;  --but it is not dinamik  --subquery we use>>>>

--find employee info who is making 14th highest salary (without duplicates)
select *
from employees
where salary = (select min(salary)
                from (select distinct salary from employees order by salary desc)
                where rownum <15 );

select *
from employees
where salary = 9000; --but it s static we need dynamic