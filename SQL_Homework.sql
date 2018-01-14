-- Joseph Marinelli's GW Coding Bootcamp SQL Homework

USE sakila; -- Use sakila database


-- * 1a. Display the first and last names of all actors from the table `actor`. 
SELECT first_name, last_name 
FROM actor;


-- * 1b. Display the first and last name of each actor in a single column in upper case letters. Name the column `Actor Name`. 
CREATE VIEW actor_name AS 
SELECT UPPER(CONCAT(first_name, " ", last_name)) AS 'Actor Name'
FROM actor;

SELECT *
FROM actor_name;

DROP VIEW actor_name;


-- * 2a. You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe." What is one query would you use to obtain this information?
SELECT *
FROM actor
WHERE first_name = "Joe ";


-- * 2b. Find all actors whose last name contain the letters `GEN`:
SELECT *
FROM actor
WHERE last_name LIKE '%GEN%';


-- * 2c. Find all actors whose last names contain the letters `LI`. This time, order the rows by last name and first name, in that order:
SELECT *
FROM actor
WHERE last_name LIKE '%LI%'

ORDER BY last_name, first_name;


-- * 2d. Using `IN`, display the `country_id` and `country` columns of the following countries: Afghanistan, Bangladesh, and China:
SELECT country_id, country 
FROM country
WHERE country
IN ('Afghanistan', 'Bangladesh', 'China');


-- * 3a. Add a `middle_name` column to the table `actor`. Position it between `first_name` and `last_name`. Hint: you will need to specify the data type.
ALTER TABLE actor
ADD COLUMN middle_name VARCHAR(45) NULL AFTER first_name;

SELECT	* 
FROM actor;


-- * 3b. You realize that some of these actors have tremendously long last names. Change the data type of the `middle_name` column to `blobs`.
ALTER TABLE actor
CHANGE COLUMN middle_name middle_name BLOB NULL DEFAULT NULL ;

SELECT	* 
FROM actor;


-- * 3c. Now delete the `middle_name` column.
ALTER TABLE actor 
DROP COLUMN middle_name;

SELECT	* 
FROM actor;


-- 



