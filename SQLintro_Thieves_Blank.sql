-- Verify connection to DB using the Actor Table
SELECT *
FROM actor;

-- Query for first_name and last_name from the actor table
SELECT first_name, last_name
FROM actor;

-- Query first_name which equals 'Nick'
-- Using the WHERE Clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';


-- Query first_name which equals 'Nick'
-- Using LIKE clause
-- NOTE: ( = ) is looking for a literal string
-- while the LIKE Clause allows use for wildcards
SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'Nick';

-- Using LIKE Clause and WILD CARD ( % )
-- Get all J names
SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'J%';

-- Single Character Wild Card ( _ )
SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'J___';

-- Query for all first_names that start with 'K__%' has two letters, anything goes after
SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'K___%';

----- Comparasion Operators:
-- = Equals to
-- > Greater Than
-- < Less Than
-- >= Greater Than or Equal to
-- <= Less Than or Equal to
-- <> Not equals

-- Using Comparasion Operators with the Payment Table


-- Query WHERE amount GREATER THAN $10.
SELECT customer_id, amount
FROM payment 
WHERE amount > 10;

-- Query amounts BETWEEN $10-$15
-- NOTE: When using BETWEEN both values are inclusive
SELECT customer_id, amount
FROM payment 
WHERE amount BETWEEN 10 AND 15;


-- Order the payments by amount
-- Using the ORDER BY
-- ASC for ascending order (Default)
-- DESC for decending order


-- Query all payments NOT EQUAL to 2.99
SELECT customer_id, amount
FROM payment 
WHERE amount <> 2.99 
ORDER BY amount ASC


----- Aggregate Functions
-- MIN()
-- MAX()
-- SUM()
-- AVG()
-- COUNT()

-- Query the SUM of amounts GREATER THAN OR EQUAL TO 5.99
SELECT SUM(amount)
FROM Payment
WHERE amount >= 5.99;

-- Query the AVG of amounts GREATER THAN OR EQUAL TO 5.99
SELECT AVG(amount)
FROM Payment
WHERE amount >= 5.99;

-- Query the COUNT of amounts GREATER THAN OR EQUAL TO 5.99
SELECT COUNT(amount)
FROM Payment
WHERE amount >= 5.99;

-- Query to display the count of DISTINCT amounts paid
SELECT COUNT(DISTINCT amount)
FROM payment;

-- Query to display the MIN paid using alias
SELECT MIN(amount) as min_amount_paid
FROM payment;

-- Query to display the MAX paid using alias
SELECT MAX(amount) as Max_Amount
FROM payment;

-- GROUP BY (Used with aggregate functions)


-- Query the customer that paid the most
SELECT customer_id, SUM (amount)
FROM payment
WHERE payment_date >
GROUP BY customer_id
ORDER BY SUM(amount)DESC
LIMIT 10
SELECT *
FROM actor;