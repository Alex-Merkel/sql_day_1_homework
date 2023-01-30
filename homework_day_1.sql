-- Question 1:
select count(last_name)
from actor
where last_name like 'Wahlberg';

-- Question 2:
select count(amount)
from payment
where amount between 3.99 and 5.99;

-- Question 3:  **
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc;

-- Question 4:
select count(last_name)
from customer
where last_name like 'William';

-- Question 5:
select staff_id, sum(amount)
from payment
group by staff_id
order by staff_id desc;

-- Question 6:
select count(distinct district)
from address;

-- Question 7:
-- Use film_actor table and get film_id
select film_id, count(actor_id)
from film_actor
group by film_id
order by count(film_id) desc;

-- Question 8:
-- store_id 1, how many customers with last name ending with es (customer table)
select count(last_name)
from customer
where last_name like '%es'

-- Question 9:
-- payment amounts (4.99, 5.99, etc.), number of rentals above 250 for cusomters with ids between 380 and 430 (use group by and having >250)
select distinct amount
from payment
where customer_id >= 380 and customer_id <= 430
group by amount
having count(rental_id) >= 250;

-- Question 10:
-- film table, 
-- a.) How many rating categories are there? 
select distinct rating
from film;

-- b.) What rating has the most movies total?
select rating, count(rating)
from film
group by rating
order by count(rating) desc;
