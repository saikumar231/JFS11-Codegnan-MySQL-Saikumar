create database caution;

 use caution;
 
 create table emp(id int primary key auto_increment,
 name varchar(50) not null,
 age int not null,
 salary int not null,
 check((age>=19) and (salary>=1000))
 );
 
 -- using of primary key auto_increment is incrementing the values one by one and not allow the same entry like 1 will allowed one time only.
 -- using of check means rules we have to follow.
insert into emp(name,age,salary)values("tarun",20,2000);
insert into emp(name,age,salary)values("sai",2,20);
insert into emp(name,age,salary)values("saitarun",20,200);
insert into emp(name,age,salary)values("tun",20,20000);

select * from emp;