show databases;
#--UC1--
create database payroll_service;
use payroll_service;

#--UC2--
create table employee_payroll(
ID int not null auto_increment,
NAME varchar(30) not null,
SALARY double not null,
START_DATE date not null,
primary key(ID)
);
show tables;
desc employee_payroll;


#--UC3--
insert into employee_payroll(NAME,SALARY,START_DATE)
values('Tejaswini','94000.3','2022-02-11');

#--UC4--
select * from employee_payroll;

#--UC5--
select * from  employee_payroll where NAME='Komal';
select * from  employee_payroll where START_DATE between '2022-04-09' and date(now());
 
 #--UC6--
 alter table employee_payroll add GENDER char(1);
 update employee_payroll set GENDER='F' where ID in(1,2) ;
  update employee_payroll set GENDER='M' where ID =3 ;


#--UC7--
select sum(SALARY) from employee_payroll;
select avg(SALARY) from employee_payroll;