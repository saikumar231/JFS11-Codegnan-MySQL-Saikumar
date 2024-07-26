create database sai;

use sai;

-- date functions

create table emp10(id int,datee date);

insert into emp10 values (1,"2024-08-24"),(2,"2024-07-24");

select * from emp10;

insert into emp10 values (3,"01-01-2001");

select curdate();

select current_date();

select curtime();

select date_add("2024-01-01", interval 3 month) as monthchange;

select date_add("2024-01-01", interval 3 day) as daychange;

select date_add("2024-01-01", interval 3 year) as yearchange;

-- time fumctions

create table emp11(id int, timee time);

insert into emp11 values(1,"03:03:05"),(2,"25:03:03");

select * from emp11;

select curtime();

select addtime("10:10:10","01:01:01");

select subtime("10:10:10","01:01:01");

select timediff("10:10:10","01:01:01");

select time_to_sec("00:01:10");

-- time stamp

select current_timestamp();

select timestampadd(year,"2024-02-01 10:10:10","2024-01-01 10:10:10") as difference;

select timestampdiff(year,"2024-02-01 10:10:10","2024-01-01 10:10:10")as diff;

create table emp12(id int, ts timestamp);

insert into emp12 values(1,"2024-02-01 10:10:10");

select * from emp12;

insert into emp12(id) values(2);

create table emp13(id int,ts timestamp default current_timestamp);

insert into emp13 values(1,"2024-01-01 10:10:10");

select * from emp13;

insert into emp13(id) values(2);

set sql_safe_updates=0;

update emp13 set id=4;