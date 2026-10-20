create database dbms;
use dbms;
select now();
select now() as current_datetime;

create table customer(cid int,cname varchar(15),city varchar(10));
alter table customer add column cdate date;

select * from customer;
