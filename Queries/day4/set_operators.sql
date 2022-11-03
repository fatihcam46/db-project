--firstly create two set look create_dev_test.sql
--union   -removing duplicates
select * from testers
union
select * from developers;

--union all
select * from testers
union all
select * from developers;

--union >> names   --removing same names
select names from testers
union
select names from developers;

--union all >> names    --taking all names
select names from testers
union all
select names from developers;

--minus >> names   -- testers names minus developers
select names from testers
minus
select names from developers;

--intersect
select names from developers
intersect
select names from testers;

--how to find duplicate names in employees table
select  first_name,count(*)
from employees
group by first_name
having count(*) >1;











