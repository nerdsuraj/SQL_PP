create database payroll_service 

select db_name()

select name from sys.databases

use payroll_service

create table employee_service
(
--idnamecolumon dataype contraints
id int identity(1,1) primary key ,
name varchar(62) not null,
salary money not null,
start_date date not null
)

insert into employee_service values
('Mukesh',10000.0,'2018-01-13')

select * from employee_service

insert into employee_service values
('billi',12000.0,'2016-08-26'),
('Terisa',26000.0,'2022-05-30'),
('charlie',25500.0,'2019-07-17')

select salary from employee_service where name='billi'

select GETDATE()

select * from employee_service where start_date between 
'2018-01-01' and GETDATE()

select * from employee_service

alter table employee_service add gender char(1)

update employee_service set gender='M' where name in('Mukesh','charlie')

update employee_service set gender='F' where name in('billi','terisa')

select avg(salary) from employee_service where gender ='M'

select sum(salary) from employee_service 

select avg(salary) from employee_service where gender ='F'

--select avg(salary) from employee_service where gender  is null

select min(salary) from employee_service where gender ='F'

select max(salary) from employee_service where gender ='M'

select sum(salary) from employee_service group by gender

select sum(salary),gender from employee_service group by gender 

select sum(salary),gender,name from employee_service group by gender,name

alter table employee_service add phone varchar(14)

select * from employee_service

alter table employee_service add 
address varchar(100),departemnt varchar(20) default 'cs'

update employee_service set departemnt ='Sales' where name = 'terisa'

update employee_service set departemnt ='Marketing' where name = 'terisa'

insert into employee_service values
('Terisa',26000.0,'2022-05-30','F',null,null,'Sales')

alter table employee_service add Basic_Pay money

alter table employee_service add Deductions money,Taxable_Pay money,Income_Tax money ,Net_Pay money

update employee_service set Basic_Pay =10000 where name = 'Mukesh'

update employee_service set Basic_Pay =12000 where name = 'billi'

update employee_service set Basic_Pay =26000 where name = 'terisa'

update employee_service set Basic_Pay =25500 where name = 'charlie'

update employee_service set Deductions =0 where name in('Mukesh','billi','terisa','charlie')

update employee_service set Taxable_Pay =0 where name in('Mukesh','billi','terisa','charlie')

update employee_service set Income_Tax =0 where name in('Mukesh','billi','terisa','charlie')

update employee_service set Net_Pay =0 where name in('Mukesh','billi','terisa','charlie')

update employee_service set departemnt ='CS' where name in('Mukesh','billi','charlie')

select name from employee_service

select * from employee_service