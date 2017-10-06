/* 
This file is intended to help developers get their SQL Databases loaded with mock data.
It is important since other developers will not have data already set up on their own. 
*/

/* 
Select the table you want to insert into and columns to fill. 
Values that'll make up your burgers table.
*/

INSERT INTO burgers (burger_name, devoured)
VALUES 
("Hamburger", TRUE),
("Cheeseburger", FALSE),
("Baconburger", TRUE);
