use aits;
create table customers(
id int primary key auto_increment,
name varchar(50),
age int,
status varchar(50)
);

insert into customers(name,age,status)values("sai",28,"major"),("kumar",18,"major"),("venkat",17,"minor");

select * from customers;


insert into customers(name,age)values("sai1",18),("sai2",16),("sai3",18),("sai4",8);

select * from customers;

select name,(id+age) as newdata from customers;

select * from customers;

select name,id,age,(age-id) as newdata from customers;

select name,id,age,(id*10) as newdata from customers;

select name,id,age,(age/2) as newdata from customers;

select name,id,age,(age%2) as newdata from customers;
