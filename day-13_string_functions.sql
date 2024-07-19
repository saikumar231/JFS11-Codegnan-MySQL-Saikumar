use aits;


create table emp2(id int,stuname varchar(40), address varchar(10));

insert into emp2 values(1,"kumar","london"),(2,"kishore","londan"),(3,"krishna","londen"),(4,"karan","landon"),(5,"kanna","lenden");

select * from emp2;

select concat(stuname," from ",address ) as conname from emp2;

select concat_ws(" from ",stuname,address) as conacteddetails from emp2;

select id,stuname,upper(stuname) as uppername, address,upper(address) as uppercity from emp2;

select id,stuname,length(stuname) as namelength, address ,char_length(address) as citylength from emp2;

select id,stuname,substr(stuname,1,3) as substringname ,address,substring(address,1,3) as subaddress from emp2;

select id,stuname,reverse(stuname) as revname ,address,reverse(address) as revaddress from emp2;

select id,stuname,replace(stuname,"krishna","krish") as repname ,address from emp2;

select * from emp2 where address  like "%on" ;

select * from emp2 where address like "l_nd_n";

select * from emp2 where stuname like "k%";

select * from emp2 where address like "l%";

select * from emp2 where address like "%don";
