--I want to see  first_name, last_name, phone_number of David(s)
select first_name, last_name, phone_number from employees
where first_name = 'David' and last_name = 'Lee';


--get me all information(*) who is making more than 7000 salary
select * from employees
where salary>7000;

--get me email,salary who is making less than 4000 salary
select email,salary from employees
where salary<4000;

--get me all information(*) who is working as IT_PROG or SA_REP
select * from employees
where JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';

--get me first_name, last_name salary who is making more than 5000 and less than 10000 salary
select first_name, last_name, salary from employees
where salary>=5000 and salary<=10000 ; --between 5000 and 10000

select first_name, last_name, salary from employees
where salary between 5000 and 10000;

select * from employees where employee_id between 130 and 170;

--get me all info where employee_id 135 176 154 129
select *
from employees
where employee_id = 135 or employee_id = 176 or employee_id = 154 or employee_id = 129;

select *
from employees
where employee_id in(135,176,154,129);

--get me city of where country_id ITALY US UK
select city, country_id
from locations
where country_id in('IT', 'UK', 'US');