/* 
This file is intended to help developers get their SQL Databases setup correctly.
It is important since other developers will be unlikely to have the same database or tables setup already. 
*/

/* Create and use the burgers_db */
CREATE DATABASE burgers_db;
USE burgers_db;

/* Create a table for all the types of burgers */
CREATE TABLE `burgers` (
	`id` Int(11) AUTO_INCREMENT NOT NULL,
	`burger_name` VARCHAR(255) NOT NULL,
	`devoured` DEFAULT FALSE,
	`date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`) 
); /* Set ID as primary key */