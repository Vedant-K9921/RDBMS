create database user;
show databases;
use user;
create table customer(custid int,custname varchar(15),city varchar(10),product varchar(15),price int);
drop table customer;
insert into customer values(1,"ank","pune","charger",2000);
insert into customer values(2,"swa","pune","headphone",2000);
insert into customer values(3,"par","mumbai","charger",1500);
insert into customer values(4,"san","mumbai","laptop",1700);
insert into customer values(5,"saa","kyoto","adaptor",8000,"suu");


alter table customer add primary key(custid);
select * from customer;
select * from customer where custid=1 or custid=2;
create table clonetable as select * from customer;
select * from clonetable;
/*Sorting                       -----------------------------------------*/

select * from customer order by price;
select * from customer order by price desc;
select * from customer order by city,price desc;
select * from customer order by city desc,price asc;

/*Case conversion*/
select upper(custname),lower(product) from customer where custid<3;
alter table customer add column(lastname varchar(10));
update customer set lastname="kam" where custid=2;

select concat(custname,' ',lastname) as fullname from customer;

/*use of SUBSTR AND INSTR*/
select * from customer;
select substr(custname,1,3) from customer;
select instr(custname,'a') as position from customer;
select substr(custname,1,2),instr(custname,'a')as instring from customer;
select substr(custname,1,2),instr(custname,'a')as instring from customer where custid=1;