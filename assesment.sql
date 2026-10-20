create database college1;
use college1;
create table employee(empid int primary key,empname varchar(15),city varchar(10),bdate date);
create table investor(invest_no int primary key,invest_name varchar(15),city varchar(10),inv_amt int,bdate date);

desc employee;
desc investor;
insert into employee values(1,"ankush","pune",'2004-04-08');
insert into employee values(2,"parth","mumbai",'2025-09-08');
insert into employee values(3,"swara","pune",'2005-11-11');
insert into employee values(4,"vedant","pune",'2005-11-11');
insert into employee values(5,"sanket","mumbai",'2012-11-12');

select * from employee;

insert into investor values(2,"lohar","mumbai",1020,'2001-04-09'),
(3,"Karande","pune",5000,'2005-11-11'),
(4,"kamble","pune",4000,'2005-04-12'),
(5,"kawthe","mumbai",3000,'2004-04-08');

select * from investor;

alter table employee add column age int,add check(age<=50);
alter table employee add column salary int,add check(salary>=10000);

update employee set age=30 where empid=1;
update employee set salary=50000 where empid=1;

alter table investor add column age int;
update investor set age=30 where invest_no=1;

alter table investor modify invest_name text;
desc investor;
select * from investor;

alter table employee rename column empid to e_id;

update employee set city="nagpur" where e_id=4;
select * from employee;

delete from investor where invest_no=5;

alter table investor drop column age;

alter table employee drop constraint age;

alter table employee add column invest_no int;
ALTER TABLE employee ADD FOREIGN KEY(invest_no) REFERENCES investor(invest_no);

select invest_no,invest_name,city,inv_amt from investor;

select * from employee;

alter table investor rename inv;

truncate employee;
truncate inv;

drop table employee;
drop table inv;