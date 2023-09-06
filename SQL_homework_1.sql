-- 1. How many actors are there with last name 'Wahlberg'?
select last_name
from actor 
where last_name like 'Wahlberg';
-- Answer: 2

-- 2. How many payments were made between 3.99 and 5.99?
select count(amount)
from payment
where amount >= 3.99 and amount <= 5.99;
-- Answer: 3

-- 3. What film does the store have the most of?
select film_id, count(*) as  film_count
from inventory
group by film_id
order by film_count desc 
limit 1;
--Answer: film_id 350 with 8 films

-- 4. How many customers have the last name William?
select count(first_name)
from customer
where first_name like 'William'
-- Answer: 1

-- 5. What store employee (get the id) sold the most rentals
select salesperson_id, count(*) as rental_count
from sale_invoice
group by salesperson_id
order by rental_count desc 
limit 1;
--Answer: could not find route with data already in tables. This one functions.


-- 6. How many different district names are there?
select count(distinct district) as distinct_districts
from address ;
--Answer: 378 distinct districts

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(*) as actor_count
from film_actor
group by film_id 
order by actor_count desc 
limit 1;
-- Answer: film_id 508

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(*) as customer_count
from customer 
where store_id = 1 and last_name like '%es';
-- Answer: 13

-- 9.How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select amount, count(*) as payment_count
from payment
where customer_id between 380 and 430
group by amount 
having count(*) > 250;
--Answer: 3 payments

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
select count(distinct rating) as rating_count
from film;
-- 5 rating categories
select rating, count(*) as movie_count
from film
group by rating 
order by movie_count desc
limit 1;
-- PG-13 has highest amount of ratings



