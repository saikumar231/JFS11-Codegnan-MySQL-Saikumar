-- 3. Create a table with the name Orders which should be consists of
--  Id (Primary key and Auto increment), Product name should be unique and 
-- product price should be not null e as default value. While inserting the data,
-- Table should only accept the records the entered product price should be greater than Rs 1000.
use caution;

CREATE TABLE Orders1 (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Product_name VARCHAR(255) UNIQUE,
    Product_price int NOT NULL DEFAULT 0
    check (Product_price >1000)
);

insert into orders1 (product_name,product_price)values ("eggs",20000),("hens",10000),("biscuits",5000);

select * from orders1;
