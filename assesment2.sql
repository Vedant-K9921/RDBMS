create database as2;
use as2;
-- 1-------------------------------------------------------------------------------------------------
create table employee(Emp_no int primary key, E_name varchar(10), E_address varchar(10), E_ph_no int,
 Dept_no int , Dept_name varchar(10),Job_id int, Designation varchar(10),datee date, Salary int);
insert into employee values(1,'ankusk','bibewadi',987654321,101,'sales',201,'manager','1981-5-1',100000);
insert into employee values(2,'swarali','pune city',987654321,102,'sales',202,'manager','1981-12-3',200000);
insert into employee values(3,'parth','hadapsar',987654321,103,'management',203,'clerk','1981-12-17',300000);
insert into employee values(4,'sumit','bibewadi',987654321,101,'management',204,'clerk','1980-1-19',400000);
insert into employee values(5,'vedant','pune city',987654321,102,'sales',205,'head','1981-5-1',500000);

select * from employee;
drop table employee;
-- -----1-----------------------------------------------------------
select Emp_no,E_name,Salary from employee where Designation='manager';

-- -----------2-------------------------------------------------------
select * from employee where Salary>10000;

-- --------------3----------------------------------------------------
select * from employee where datee>'1981-1-1' order by designation;

-- ---------------4--------------------------------------------------
alter table employee add experience int;
update employee set experience=20 where Emp_no=2;

select E_name,experience,Salary/30 as daily_salary from employee;

-- -----------------5------------------------------------------------
select * from employee where designation='clerk' or designation='analyst';

-- ------------------6-----------------------------------------------
-- 1-MAY-1981, 3-DEC-1981, 17-DEC-1981, 19-JAN-1980.
select * from employee where datee='1981-5-1' or datee='1981-12-3' or datee='1981-12-17' or datee='1980-1-19';

-- --------------------7--------------------------------------------
insert into employee values(6,'raju','pune city',987654321,10,'sales',20,'analyst','1981-5-1',500000);
insert into employee values(7,'mohit','pune city',987654321,20,'sales',10,'analyst','1981-5-1',500000);

-- ---------------------8-------------------------------------------
select E_name from employee where E_name like 's%';

-- -----------------------9-----------------------------------------
select max(Salary) from employee;

-- ---------------------------10-----------------------------------
 insert into employee values(8,'hadal','pune city',987654321,20,'sales',10,'analyst','1981-5-1',500000,10);

 select E_name,substr(E_name,1,5)as first_five from employee where E_name like "h%" 
 and designation not in('president','MGR')order by Salary asc;
 
 -- -----------11----------------------
 select min(Salary) as mini_sal,max(Salary) as maxi_sal,experience from employee group by experience;
 
 -- --------------------------------12---------------------------------
 select sum(Salary) from employee;
 
 -- ----------------------------------13-------------------------------
 select avg(Salary) from employee where Dept_name='Management';
 
 -- -------------------------------------14---------------------------
 select distinct Salary from employee;
 
 