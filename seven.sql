create database basicjoin;
use basicjoin;

create table emp(eid int primary key,ename varchar(15));
desc emp;

-- Reset the table data first
TRUNCATE TABLE emp; -- Or use: DELETE FROM emp;

INSERT INTO emp (eid, ename) VALUES 
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eva');

create table project(pid int primary key,pname varchar(10),eid int,foreign key(eid) references emp(eid));

-- Reset the table data first
TRUNCATE TABLE project; -- Or use: DELETE FROM project;

INSERT INTO project (pid, pname, eid) VALUES 
-- Employee 1 has 3 projects
(101, 'Alpha', 1),
(102, 'Beta', 1),
(103, 'Omega', 1),

-- Employee 2 has 2 projects
(104, 'Gamma', 2),
(105, 'Delta', 2);


-- Inner Join 
select * from emp join project
on emp.eid=project.eid;

select e.ename,p.pname from emp e inner join
project p on e.eid=p.eid;

-- Right Join
select * from emp right join project
on emp.eid=project.eid;
select e.ename,p.pname from emp e right join
project p on e.eid=p.eid;

-- left join
select e.ename,p.pname from emp e left join
project p on e.eid=p.eid;

-- outer join
select * from emp left join project on
emp.eid=project.eid union select * from emp right join project on
emp.eid=project.eid;

select emp.ename, project.pname from emp left join project
on emp.eid=project.eid where project.eid is not null;

select emp.ename, project.pname from emp left join project
on emp.eid=project.eid where project.eid is null;

