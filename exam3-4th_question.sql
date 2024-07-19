-- . Assume a table with the name student which consists of Sno, Name and email. 
-- Retrive all the data whose name ends with Reddy and Naidu Replacing those names 
-- which should be in below format. While generating 
-- output all the names should be in uppercase and all emails should be in lower case 
 --  name = "Venkatesh Reddy"  
 -- renamed ="venkatesh"


use aits;
CREATE TABLE Students (
    Sno INT,
    Name VARCHAR(255),
    Email VARCHAR(255)
);
INSERT INTO Students (Sno, Name, Email)
VALUES
    (1, 'Venkatesh Reddy', 'venkatesh@example.com'),
    (2, 'krishna Naidu', 'naidu@example.com');
    
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				
SELECT 
    Sno,
    UPPER(SUBSTRING_index(Name, ' ', 1)) AS Name,
    LOWER(email) AS email
FROM 
    students;
