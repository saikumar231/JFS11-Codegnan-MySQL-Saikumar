use aits;

create table users(userid int primary key not null,
name varchar(50) not null,
age int default "0"
);

create table orders(orderid int primary key,
productname varchar(50),
price int default "0",
uid int not null,
foreign key (uid) references users(userid)
);

desc users;

desc orders;

insert into users values(1,"sai",20);
insert into orders values(101,"soap",20,1);
select * from users;
select * from orders;
insert into users values(2,"kumar",21);
insert into orders values(102,"brush",200,2);

insert into users (userid,name) values(3,"saila");

select * from users;
insert into orders values(103,"shampoo",2000,3);
 insert into orders values(105,"sham",5,3);
 