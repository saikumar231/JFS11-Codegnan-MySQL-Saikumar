-- assume a table with the name employees consisting of sno,email,and mobile.
-- select the name from email as shown below who mobile number is in xxx-xxx-xxxx format.
-- email: saivardhan@codegnan.com      name:saivardhan         
-- mobile:789-357-0611    condition:True         
-- mobile:9902156788      condition:False



use aits;

 CREATE TABLE Employee (
       sno INT,
       email VARCHAR(255),
       mobile VARCHAR(12)
   );
   
   INSERT INTO Employee (sno, email, mobile)
VALUES
    (1, 'saivardhan@codegnan.com', '789-357-0611'),
    (2, 'another@example.com', '9902156788');

SELECT *,
    CASE
        WHEN mobile LIKE '___-___-____' THEN 'true'
        ELSE "false"
    END AS name
FROM Employee;

SELECT 
    SUBSTRING_index(email, '@', 1) AS name
FROM 
    employee
WHERE 
    mobile REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$';
