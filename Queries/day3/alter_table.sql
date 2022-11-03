select * from SCRUMTEAM;

--adding new column
alter table SCRUMTEAM add salary integer;--add column to right play-after play select * from SCRUMTEAM
-- ;
--update existing employees salary
UPDATE scrumteam SET salary = 100000 WHERE emp_id = 1; --updated salaries::
UPDATE scrumteam SET salary = 90000 WHERE emp_id = 2;
UPDATE scrumteam SET salary = 120000 WHERE emp_id = 4;

--rename the column
ALTER TABLE scrumteam RENAME COLUMN salary TO annual_salary;---rename salary to annual salary

--delete, drop column
alter table SCRUMTEAM drop column annual_salary; --delete annual salary after play>>select * from SCRUMTEAM

--how to change table name ?
ALTER TABLE scrumteam RENAME TO agileteam;
select * from agileteam;
commit;

--truncate, if we want to delete all data from the table, but still keep the table
--structure, we use truncate
TRUNCATE TABLE agileteam;
select * from agileteam;

--If we want to delete the table and data together
DROP TABLE agileteam; --after this command -- table existed, deleted,

