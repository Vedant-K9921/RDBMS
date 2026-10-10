use college;
select * from employee;
create table employee(empid int not null,firstname varchar(20),lastname varchar(20),empage int);
insert into employee values (1,'Ank','Kam',20);
create index demoindex on employee(firstname,lastname);
show indexes from employee;
create table person(personid int not null auto_increment,lastname varchar(10),age int,primary key(personid));
insert into person(lastname,age) values('kamank',19);
select * from person;