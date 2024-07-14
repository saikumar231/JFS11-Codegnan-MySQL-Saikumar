use codegnan1;
create table emp1(
id int primary key,
name varchar(100) not null,
mobile bigint unique,
address varchar(100) default 'ydk'
);
desc emp1;
insert into emp1(id,name,mobile,address)values(1,"sai",9876543,"tdp");
select * from emp1;
insert into emp1(id,name,mobile)values(2,"kumar",1234667);
select * from emp1;

create table emp2( id int primary key auto_increment,
name varchar(100) not null default 'name',
mobile bigint unique,
address varchar(100) default "hyd");

select * from emp2;

desc emp2;

insert into emp2(name,mobile,address)values("sri",123456,"rajampet");
insert into emp2(name,mobile,address)values("siri",1277456,"kajapet");
insert into emp2(mobile)values(2343456);


select * from emp2;


create table emp3(id int primary key auto_increment,
name varchar(100) not null,
age int not null,
salary int not null,
mobile bigint,
check((age>=18) and (salary>=10000))
);

desc emp3;


insert into emp3(name,age,salary,mobile)values("sai",21,50000,1234567);
insert into emp3(name,age,salary,mobile)values("sir",17,5000,18543);
insert into emp3(name,age,salary,mobile)values("sir",21,5000,124677);
insert into emp3(name,age,salary,mobile)values("sri",2,50000,124577);
insert into emp3(name,age,salary,mobile)values("saikumar",21,60000,1234567876);
select * from emp3;

create table emp4(id int primary key auto_increment,
name varchar(50) default 'saikumar',
age int not null,
salary int not null default 60000,
mobile bigint unique,
check((age>=20) and (salary>=60000))
);

desc emp4;

insert into emp4(age,mobile)values(21,1234567876);
insert into emp4(name,age,salary,mobile)values("saikumar1",21,60000,12345676);
insert into emp4(name,age,salary,mobile)values("saikumar2",18,60000,12345678);

select * from emp4;
