use aits;


create table library(id int primary key auto_increment,
bookname varchar(100),
bookcount int);

insert into library(bookname,bookcount) values("emtl",2),("sql",3),("java",18),("vlsi",20);

select * from library;

insert into library(bookname) values("verilog");

select id,bookname,bookcount,(bookcount+10)as newdata from library;

select id,bookname,bookcount,(id*10)as newdata from library;
select id,bookname,bookcount,(id*bookcount)as newdata from library;

select id,bookname,bookcount,(bookcount%10)as newdata from library;

select id,bookname,bookcount,(bookcount/10)as newdata from library;
