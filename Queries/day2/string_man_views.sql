--how can we rename the column that we displayed
select first_name as "given_name", last_name as "surname"
from employees;

--text functions,string mani.
--java first_name+" "+last_name
-- in sql concat is ||

select first_name||' '||last_name as "full_name"   -- ' ' araya bosluk birakiyor
from employees;
select first_name || last_name as "full_name"       -- || birlikte yazilmasini sagliyor
from employees;

--Task;
--add @gmail.com and name new column to full_email
select email from employees;
select email || '@gmail.com' as "full_email"
from employees;

--making all lowercase
select lower(email||'@gmail.com') as "full_email"
from employees;

--upper case
select upper(email||'@gmail.com') as "full_email"
from employees;

--length(value)
select first_name,length(first_name) as "length_name"
from employees
order by "length_name" desc;

--substr(colName,begIndex,NumberOfChar)
select substr(first_name,0,1)||'.'||substr(last_name,0,1) as "initials"
from employees;

select substr(first_name,0,1)||'.'||substr(last_name,0,1) as "initials",
       first_name||' '||last_name as "full_name",lower(email||'@gmail.com') as "full_email"
from employees;

--VIEW   --sag taraftaki HR altinda>>views altinda created
CREATE VIEW Emaillist_fatih as select substr(first_name,0,1)||'.'|| substr(last_name,0,1) as "initials",
                                      first_name||' '||last_name as "full_name",lower(email||'@gmail.com') as "full_email"
                               from employees;

select "full_name"
from Emaillist;

--to remove view
drop view Emaillist_fatih;
drop view Emaillist;  --tekrar view den kaldirdik drop view
drop view Emaillist_HR;
drop view Emaillist_JAMAL;