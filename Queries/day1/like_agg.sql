-- get me all info who is working as IT _PROG or SA_REP
select * from employees
where job_id in('IT_PROG','SA_REP');

--how many employee are working as IT_PROG or SA_REP
select count(*) from employees
where job_id in('IT_PROG','SA_REP');

--how many employees making more than 8000
select count(*) from employees
where salary >8000;

--how many unique first names we have?
select count (*) from employees;--it is counting all employees =107
select count(distinct first_name) from employees; --91

-- get me all employees information based on who is making more salary to low salary
select * from employees
order  by salary asc;--ascending order
--desc 9-0 Z-A  descending
--asc 0-9 a-Z

--get me all employee info order by alphabetical based on firstname
select *
from employees
order by first_name ; --asc it means , without , it is same as>>> order by first_name asc;

--NOTE: default order type is asc if you dont specify after column name

-- get me all employees whose first name starts with C
select *
from employees
where first_name like 'C%';
--Percent ( %) for matching any sequence of characters.
--Underscore ( _ ) for matching any single character.

--get me 5 letter first names where the middle char is z;
select *
from employees
where first_name like '__z__'; --'_____' it means 5 character of first name

--get me first name where second char is u;
select *
from employees
where first_name like '_u%'; --  _u second character u others are not important

--find me minimum salary
select * from employees;  -- all employee
select min(salary) from employees;  --min salary

--find me max salary
select max(salary) from employees;

--find me average salary
select avg(salary) from employees;

--round
select round(avg(salary),2) from employees; --2 means: decimal place
select sum(salary) from employees;--total