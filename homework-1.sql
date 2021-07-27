-- Question 1: How many actors are there with the last name "Wahlberg"? 
SELECT last_name, COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name
ORDER BY last_name ASC;
-- Answer for Q1: 2 actors with the last name 'Wahlberg'


-- Question 2: How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;
-- Answer for Q2: 5607 


-- Question 3: What film does the store have the most of? (search in inventory)
SELECT film_id, MAX(inventory_id)
FROM inventory
GROUP BY film_id
ORDER BY MAX(inventory_id) DESC;
-- Answer for Q3: film_id: 1000 has the most inventory with a total of: 4581 copies 


-- Question 4: How many customers have the last name 'William'?
Select last_name
FROM customer
WHERE last_name = 'William';
-- Answer for Q4: none of the customers have the last name "William"


-- Question 5: What store employee (get the id) sold the most rentals? 
SELECT staff_id, rental_id
FROM rental
ORDER BY rental_id DESC
-- Answer for Q5: Staff_id 2 sold the most rentals


-- Question 6: How many different districts are there?
SELECT COUNT(DISTINCT district) AS Number_of_Different_Districts
FROM address;
-- Answer for Q6: There are 378 districts with different names


-- Question 7: What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(film_actor), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_actor) DESC;
-- Answer for Q7: Film_id 508 has the most actors in it with 15


-- Question 8: From store_id 1, how many customers have a last name ending with 'es' (use customer table)
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '__%es';
-- Answer for Q8: 21 customers have a last name ending with 'es'


-- Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between
-- 380 and 430? (use group by and having > 250)
SELECT COUNT(amount)
FROM payment
WHERE customer_id > 380 AND customer_id < 430
GROUP BY rental_id > 250;
-- Answer for Q9: 1202 payment accounts


-- Question 10: Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, SUM(rental_duration)
FROM film
GROUP BY rating
ORDER BY SUM(rental_duration) DESC
-- Answer for Q10: There are 5 rating categories with PG-13 having the most movies total at 1127
