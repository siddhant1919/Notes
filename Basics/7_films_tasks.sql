-- USE lco_films;

-- TODO: Which category of movies released in 2018? Fetch the numbers of movies

-- SELECT category.name, category.category_id, film.release_year, film.film_id, COUNT(category.category_id) AS "Number of films"
-- FROM ((
--   category
--   LEFT JOIN film_category 
--   ON film_category.category_id = category.category_id
--   )
--   RIGHT JOIN film 
--   ON film.film_id = film_category.film_id
-- ) 
-- WHERE film.release_year = "2018" 
-- GROUP BY category.category_id;

-- TODO: Update the address of actor id of 36 to '677 Jass Street'

-- UPDATE address 
-- INNER JOIN actor 
-- ON actor.address_id = address.address_id
-- SET address.address = "677 Jass Street"
-- WHERE actor.actor_id = 36; 

-- TODO: add new actors(id: 105, 95) in film ARSENIC INDEPENDENCE(id:41)

-- INSERT INTO film_actor(actor_id, film_id, last_update)
-- VALUES (105,41,'2022-01-24 12:37:51'),
--        (95,41,'2022-01-24 12:37:51');

-- TODO: Get the names of the films of the actors who belongs to India

-- SELECT DISTINCT film.title
-- FROM (((((
--   film
--   INNER JOIN film_actor
--   ON film_actor.film_id = film.film_id ) 
--   INNER JOIN actor 
--   ON actor.actor_id = film_actor.actor_id)
--   INNER JOIN address
--   ON actor.address_id = address.address_id )
--   INNER JOIN city
--   ON city.city_id = address.city_id)
--   INNER JOIN country
--   ON country.country_id = city.country_id
-- ) WHERE country.country = 'India'
--   ORDER BY film.title;


-- TODO: How many actors are from United State

-- SELECT DISTINCT COUNT(actor.actor_id) AS "Number of actors from US"
-- FROM (((
--   actor
--   INNER JOIN address
--   ON address.address_id = actor.address_id)
--   INNER JOIN city
--   ON city.city_id = address.address_id)
--   INNER JOIN country 
--   ON country.country_id = city.country_id
-- ) WHERE country = 'United States';

-- TODO: Get all languages in which films are released in the year between 2001 and 2010

-- SELECT DISTINCT language.name AS "Movies of this languages released between 2001 and 2010", film.release_year AS "Release year"
-- FROM film
-- INNER JOIN language
-- ON language.language_id = film.language_id
-- WHERE film.release_year BETWEEN 2001 AND 2010
-- ORDER BY film.release_year;

-- TODO: The film ALONE TRIP(id: 17) was actually released in mandarin, update the info

-- UPDATE language
-- INNER JOIN film 
-- ON film.language_id = language.language_id
-- SET language.name = "mandarin"
-- WHERE film.film_id = 17;

-- TODO: Fetch cast details of film released during 2005 and 2015 with pg rating.

-- SELECT DISTINCT CONCAT(actor.first_name," ",actor.last_name) AS "Cast details", film.rating AS "PG rating", film.release_year AS "Year"
-- FROM ((
--   actor
--   INNER JOIN film_actor
--   ON film_actor.actor_id = actor.actor_id)
--   INNER JOIN film
--   ON film.film_id = film_actor.film_id
-- )WHERE film.release_year BETWEEN 2005 AND 2015 AND film.rating = "PG"
-- ORDER BY actor.first_name;

-- TODO: In which year most films were released

-- SELECT film.release_year, COUNT(film.release_year) AS "Films released"
-- FROM film 
-- GROUP BY release_year
-- ORDER BY COUNT(film.release_year) DESC LIMIT 1;

-- TODO: In which year least films were released

-- SELECT film.release_year, COUNT(film.release_year) AS "Films released"
-- FROM film 
-- GROUP BY release_year
-- ORDER BY COUNT(film.release_year) ASC LIMIT 1;

-- TODO: Get the details of the film with the maximum length released in 2014



-- TODO: Get all the Sci-Fi Movies with NC-17 rating and language they are screened in

-- SELECT DISTINCT film.title, category.name, film.rating
-- FROM ((
--   film
--   INNER JOIN film_category
--   ON film_category.film_id = film_category.film_id)
--   INNER JOIN category
--   ON category.category_id = film_category.category_id)
-- WHERE category.name = "Sci-Fi" AND film.rating = "NC-17";

-- TODO: The actor FRED COSTNER(id: 16) shifted to address : 055, piazzale Michelangelo, postel code - 50125, District Refredi at Florence, italy insert the new city and update the address of the actor

-- UPDATE address
-- LEFT JOIN actor
-- ON address.address_id = actor.address_id
-- SET address.address = "005, piazzale Michelangelo", address.district = "Refredi", address.postal_code = 50125, city_id = 170
-- WHERE actor.actor_id = 16;

-- TODO: A new film "NO Time to Die " is releasing in 2020 whose details are:

-- INSERT INTO film(title, release_year, description, length, rental_duration, rental_rate, rating, replacement_cost, special_features, language_id)
-- VALUES (
--   "No Time to Die",
--   2020,
--   "Recruited to rescue a kidnapped scientist, globe-trotting spy James Bond finds himself hot on the trail of a mysterious villian, who's armed with a dangerous new technology.",
--   100,
--   6,
--   3.99,
--   "PG-13",
--   20.99,
--   "Trailers,Deleted Scenes",
--   (SELECT language.language_id FROM language WHERE language.name = "English")
-- );

-- TODO: Assign the category Action, Classics, Drama to the movie "No Time to Time"

-- INSERT INTO film_category(category_id, film_id) 
-- VALUES (
--   (SELECT category_id FROM category WHERE category.name = "Action"),
--   (SELECT film_id FROM film WHERE film.title = "No Time to Die")
-- ),
-- (
--   (SELECT category_id FROM category WHERE category.name = "Classics"),
--   (SELECT film_id FROM film WHERE film.title = "No Time to Die")
-- ),
-- (
--   (SELECT category_id FROM category WHERE category.name = "Drama"),
--   (SELECT film_id FROM film WHERE film.title = "No Time to Die")
-- );

-- TODO: Assign the cast PENELOPE GUINESS, NICK WAHLBERG, JOE SWANK to the Movie "No Time to Die"

-- Insert INTO film_actor(actor_id, film_id)
-- VALUES
-- (
--   (SELECT actor_id FROM actor WHERE actor.first_name = "PENELOPE" AND actor.last_name = "GUINESS"),
--   (SELECT film_id FROM film WHERE film.title = "No Time to Die") 
-- ),
-- (
--   (SELECT actor_id FROM actor WHERE actor.first_name = "NICK" AND actor.last_name = "WAHLBERG"),
--   (SELECT film_id FROM film WHERE film.title = "No Time to Die") 
-- ),
-- (
--   (SELECT actor_id FROM actor WHERE actor.first_name = "JOE" AND actor.last_name = "SWANK"),
--   (SELECT film_id FROM film WHERE film.title = "No Time to Die") 
-- );

-- TODO: Assign a new category Thriller to th movie ANGELS LIFE

-- INSERT INTO category(name)
-- VALUES("Thriller");

-- INSERT INTO film_category(film_id, category_id)
-- VALUES 
-- (
--   (SELECT film_id FROM film WHERE film.title = "ANGELS LIFE"),
--   (SELECT category_id FROM category WHERE category.name = "Thriller")
-- );

-- TODO: Which actor acted in most movies

-- SELECT CONCAT(actor.first_name," ",actor.last_name) AS "Actor", COUNT(film_actor.actor_id) AS "No. Of Movies"
-- FROM  film_actor
-- INNER JOIN actor
-- ON film_actor.actor_id = actor.actor_id
-- GROUP BY film_actor.actor_id
-- ORDER BY COUNT(film_actor.actor_id) DESC
-- LIMIT 1;

-- TODO: The actor JOHNY LOLLOBRIGIDA was removed from the movie GRAIL FRANKENSTEIN. How would you update that ?

-- DELETE FROM film_actor
-- WHERE film_id = (SELECT film_id FROM film WHERE title = "GRAIL FRANKENSTEIN") 
-- AND actor_id = (SELECT actor_id FROM actor WHERE actor.first_name = "JOHNY" AND actor.last_name = "LOLLOBRIGIDA"); 
 

--  TODO: The HARPER DYING movie is an Animated movie with Drama and Comedy. Assign these categories to movie (it gave error "Duplicate entry '402-2' for key 'film_category.PRIMARY'" thats why added last line)

-- INSERT INTO film_category(film_id, category_id)
-- VALUES 
-- (
--   (SELECT film_id FROM film WHERE film.title = "HARPER DYING"),
--   (SELECT category_id FROM category WHERE category.name = "Animation")
-- ),
-- (
--   (SELECT film_id FROM film WHERE film.title = "HARPER DYING"),
--   (SELECT category_id FROM category WHERE category.name = "Drama")
-- ),
-- (
--   (SELECT film_id FROM film WHERE film.title = "HARPER DYING"),
--   (SELECT category_id FROM category WHERE category.name = "Comedy")
-- )
-- ON DUPLICATE KEY UPDATE film_id = VALUES(film_id), category_id = VALUES(category_id);

-- TODO: The entire cast of movie WEST LION has changed. The new actors are DAN TORN, MAE HOFFMAN, SCARLETT DAMON. How would you update the record in the safest way.

-- DELETE FROM film_actor
-- WHERE film_id = (SELECT film_id FROM film WHERE film.title = "WEST LION");

-- INSERT INTO film_actor(actor_id, film_id)
-- VALUES
-- (
--   (SELECT actor_id FROM actor WHERE actor.first_name = "DAN" AND actor.last_name = "TORN"),
--   (SELECT film_id FROM film WHERE film.title = "WEST LION")
-- ),
-- (
--   (SELECT actor_id FROM actor WHERE actor.first_name = "SCARLETT" AND actor.last_name = "DAMON"),
--   (SELECT film_id FROM film WHERE film.title = "WEST LION")
-- ),
-- (
--   (SELECT actor_id FROM actor WHERE actor.first_name = "MAE" AND actor.last_name = "HOFFMAN"),
--   (SELECT film_id FROM film WHERE film.title = "WEST LION")
-- );

-- TODO: The entire category of the movie WEST LION was wrongly inserted. The correct categories are Classics, Family, Children. How would you update the record ensuring no wrong data is left.

-- DELETE FROM film_category 
-- WHERE film_id = (SELECT film_id FROM film WHERE film.title = "WEST LION")

-- INSERT INTO film_category(film_id, category_id)
-- VALUES
-- (
--   (SELECT film_id FROM film WHERE film.title = "WEST LION"),
--   (SELECT category_id FROM category WHERE category.name = "Classics")
-- ),
-- (
--   (SELECT film_id FROM film WHERE film.title = "WEST LION"),
--   (SELECT category_id FROM category WHERE category.name = "Family")
-- ),
-- (
--   (SELECT film_id FROM film WHERE film.title = "WEST LION"),
--   (SELECT category_id FROM category WHERE category.name = "Children")
-- );

-- TODO: How many actors acted in films released in 2017 ?

-- SELECT DISTINCT COUNT(film_actor.actor_id), film.release_year
-- FROM film_actor
-- INNER JOIN film
-- ON film_actor.film_id = film.film_id
-- WHERE film.release_year = 2017;

-- TODO: How many sci-fi movies released between the year 2007 to 2017.

-- SELECT COUNT(film_category.film_id) AS "Number of films between 2007 to 2017"
-- FROM ((film_category
-- INNER JOIN category
-- ON  category.category_id = film_category.category_id)
-- INNER JOIN film
-- ON film.film_id = film_category.film_id)
-- WHERE film_category.category_id = (SELECT category_id FROM category WHERE category.name = "Sci-Fi")
-- AND film.release_year BETWEEN 2007 AND 2017;

-- TODO: Fetch the actors of the movie WESTWARD SEABISCUIT with the city they live in.

-- SELECT DISTINCT CONCAT(actor.first_name," ",actor.last_name), film.title
-- FROM ((actor
-- INNER JOIN film_actor
-- ON film_actor.actor_id = actor.actor_id)
-- INNER JOIN film
-- ON film.film_id = film_actor.film_id)
-- WHERE film.title = "WESTWARD SEABISCUIT";

-- TODO: What is the total length of all movies played in 2008.

-- SELECT SUM(length) FROM film WHERE release_year = 2008;

-- TODO: Which film has the shortest length? In which language and year was it released.

-- SELECT film.length, film.title AS "Film", film.release_year AS "Year", language.name AS "Language"
-- FROM (film
-- INNER JOIN language
-- ON language.language_id = film.language_id)
-- WHERE film.length = (SELECT MIN(film.length) FROM film);

-- TODO: How many movies were released in each year.

-- SELECT DISTINCT COUNT(film_id), release_year FROM film
-- GROUP BY release_year
-- ORDER BY release_year; 

-- TODO: How many languages of movies were released each year?

-- SELECT language.name, COUNT(film.language_id) AS "Number of films" 
-- FROM film
-- INNER JOIN language ON language.language_id = film.language_id
-- GROUP BY film.language_id;

-- TODO: Which actor did least movies

-- SELECT CONCAT(actor.first_name," ",actor.last_name) AS "Actor", COUNT(film_actor.actor_id) AS "No. Of Movies"
-- FROM  film_actor
-- INNER JOIN actor
-- ON film_actor.actor_id = actor.actor_id
-- GROUP BY film_actor.actor_id
-- ORDER BY COUNT(film_actor.actor_id) ASC
-- LIMIT 1;
