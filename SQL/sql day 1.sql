-- creating database cloths
create database cloths;
--  delete database
drop database cloths;

-- creating database hm
create database hm;
use hm;
create table cloths (
product_code int primary key,
name char(50) not null,
size char(50) not null,
qty int not null,
price_p int,
color char(15)
);

-- inserting data
insert into cloths values(1,"T-shirt","M",25,390,"Red");

-- open table
select * from cloths;



