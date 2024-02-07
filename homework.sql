

-- 1. How many actors are there with the last name 'Wahlberg'? 2
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99? 5602

SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;

--3.  What film does the store have the most of? (search in inventory)?4581


SELECT COUNT(DISTINCT inventory_id) AS
distinct_inventory_count
FROM inventory;



--4. How many customers have the last name ‘William’? none

 
SELECT first_name, last_name
FROM actor
WHERE last_name = 'William';
 
--5. What store employee (get the id) sold the most rentals? 1
 
 SELECT staff_id, COUNT(*) AS rental_count
 FROM rental
 GROUP BY staff_id
 ORDER BY rental_count DESC
 
 
--6. How many different district names are there? 378
 
 SELECT COUNT(DISTINCT district) AS district_count
 FROM address;
 
--7. What film has the most actors in it? (use film_actor table and get film_id): FILM_ID 508
 
 SELECT film_id, COUNT(actor_id) AS actor_count
 FROM film_actor
 GROUP BY film_id
 ORDER BY actor_count DESC

 
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table): 13 
 
 SELECT COUNT(*) as customer_count
 FROM customer
 WHERE store_id = 1
 and LAST_NAME LIKE '%es';
 
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  
--with ids between 380 and 430? (use group by and having > 250) 3 

SELECT amount, COUNT(*) as payment_count
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
INNER JOIN rental ON payment.rental_id = rental.rental_id
WHERE customer.customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(rental.rental_id)> 250;

 
 
 
--10. Within the film table, how many rating categories are there? And what rating has the most 
--movies total? THERE ARE 5 RATING CATEGORIES AND G RATING HAS THE MOST MOVIES TOTAL.

SELECT COUNT(DISTINCT rating) as num_categories, rating
FROM film
GROUP BY rating
ORDER BY num_categories DESC
LIMIT 1;


