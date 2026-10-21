create database orgi;
use orgi;

create table emp(eid int primary key,fname varchar(15),lname varchar(15),gender char,role varchar(10),
dept varchar(10),managerid varchar(10));
insert into emp values(1,"ank","gpt",'m',"leader","retail","m11");
insert into emp values(2,"swa","kar",'f',"leader","depart","m12");
insert into emp values(3,"par","loh",'m',"manager","retail","m13");
insert into emp values(4,"san","kat",'f',"manager","depart","m14");
insert into emp values(5,"ved","kam",'m',"president","head","m15");

select distinct dept from emp order by dept;
select distinct role from emp order by role;

select * from emp where role="president" and dept="head";

select * from emp where role="manager" or dept="depart";

select * from emp where role in("president","manager");

select * from emp where role not in("president","manager");

alter table emp add column exp int;

update emp set exp=4 where eid=1;
update emp set exp=10 where eid=2;
update emp set exp=6 where eid=3;

select * from emp;

select * from emp where lname like 'l%';

select * from emp order by exp limit 3;

select * from emp where exp is null;
select * from emp where exp is not null;

select count(eid) from emp where dept='depart';
select min(exp) from emp;
select max(exp) from emp;
select sum(exp) from emp;
select avg(exp) from emp;

select dept,count(*) as emp_count from emp group by dept;
select role,count(*) as emp_count from emp group by role;
select gender,count(*) as emp_count from emp group by gender;

select role,sum(exp) as total_exp from emp group by role having total_exp>=5 and total_exp<=20;
select dept,sum(exp) as total_exp from emp group by dept having total_exp>=5 and total_exp<=20;

select dept,count(eid) from emp group by dept
having count(eid)>=2
order by dept;




