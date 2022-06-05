select name from sys.databases

select db_name()

use suraj_ltd

create table products 
(
num int identity(2001,1) primary key,
nameOfProduct varchar(35) not null UNIQUE,
MRP money not null,
expiry_date  date not null
)

insert into products values
('Sugar',152.0,'2023-12-11')

insert into products values
('Milk',26.0,'2022-06-04'),
('Mixture',10.0,'2004-03-15'),
('Chips',15.0,'2022-04-20'),
('Eggs',7.0,'2022-03-04')

select nameOfProduct from products where num=2003

alter table products add sold varchar(20)

update products set sold='yes' where nameOfProduct in ('Milk','Eggs')

update products set sold='no' where nameOfProduct in ('mixture','chips','sugar')

alter table products add Total_Profit money 

update products set Total_Profit=20000.0 where nameOfProduct in ('Milk','Eggs')

update products set Total_Profit=15020 where nameOfProduct in ('mixture')

update products set Total_Profit=68523 where nameOfProduct in ('chips')

update products set Total_Profit=123456 where nameOfProduct in ('Sugar')

select SUM(Total_Profit) from products

select avg(Total_Profit) from products 

select avg(Total_Profit) from products where nameOfProduct in ('milk','sugar')

alter table products add department varchar(10)

update products set department = 'Grocery' 

insert into products values
('protein',2500.0,'2023-06-26','no',12000.0,'grocery')

select * from products