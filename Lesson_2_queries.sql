SELECT first_name, last_name, customer_id, rental_id FROM rental
JOIN sakila.customer USING (customer_id);

SELECT * FROM sakila.film
JOIN sakila.film_actor USING (film_id)
WHERE actor_id = 5;

SELECT * FROM sakila.film
RIGHT OUTER JOIN sakila.language USING (language_id);

SELECT title, first_name, last_name FROM sakila.actor
JOIN sakila.film_actor USING (actor_id)
JOIN sakila.film USING (film_id)
WHERE first_name LIKE "a%" OR first_name LIKE "e%" OR first_name LIKE "i%" OR first_name LIKE "o%" OR first_name LIKE "u%";


SELECT title, amount FROM sakila.film
JOIN sakila.inventory USING (film_id)
JOIN sakila.rental USING (inventory_id)
JOIN sakila.payment USING (rental_id)
WHERE amount > 4.99;