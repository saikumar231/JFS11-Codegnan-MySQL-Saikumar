create database amazon1;
use amazon1;

create table userorders(userid int primary key not null,
pro_name varchar(50) not null,
price int default "0"
);

create table primeorders(primeid int primary key not null,
primename varchar(100) not null,
pro_price int default 200,
orderid int not null,
foreign key (orderid) references userorders(userid)
);

insert into userorders values(1,"soap",50);
insert into primeorders values(301,"choclate",300,1);
insert into primeorders values(101,"choclate",300,1);
select * from userorders;
select * from primeorders;