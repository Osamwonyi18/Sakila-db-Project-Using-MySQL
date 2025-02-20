USE Sakila;

/* 1) Display the first and last names of all actors from the table actor*/

Select
first_name,
last_name
From Sakila.actor;

/* 2) You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, “Joe.” 
What is one query would you use to obtain this information? */

Select
actor_id,
first_name,
last_name
From sakila.actor
where first_name = "Joe";


/* 3) Select specific columns from the films table that last 3 hours or longer. */    

Select
*
From sakila.film
where length > 180;
    
/* 4) Select all columns from the customer table for rows that have a last name beginning with "S" and a first name ending with "N". */

Select
*
From sakila.customer
where last_name like 'S%' AND first_name Like '%N';
    
/* 5) Select specific columns from the payments table for payments made on or after 05/27/2005. */

Select
*
From sakila.payment
where payment_date >= "2005-05-27";

    
/* 6) Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China: */

Select
country_id,
country
From sakila.country
where country IN('Afghanistan', 'Bangladesh', 'China');


/* 7) Find all actors whose last name contain the letters GEN */

Select
*
From sakila.actor
 where last_name like '%GEN%';
    
/* 8) Find all actors whose last names contain the letters LI. This time, 
order the rows by last name and first name, in that order: */

Select
*
From sakila.actor
where last_name like '%LI%'
order by last_name, first_name;
    
/* 9) Which actors have the first name ‘Scarlett’ */

Select
*
From sakila.actor
where first_name = 'Scarlett';

/* 10) Which actors have the last name ‘Johansson’ */

Select
*
From sakila.actor
where last_name = 'Johansson';


/* 11) Select the following columns from the film table for rows where the description ends with the word "Boat"
and rental duration greater than 6. Title, Description, Rental Duration */

Select
title,
description,
rental_duration
From sakila.film
where description like '%Boat'  AND rental_duration > 6;


/* 12) How many distinct actors last names are there? */

Select distinct
count(actor_id)
From sakila.actor;


/* 13) When is ‘Academy Dinosaur’ due? */

Select
*
From sakila.film
where title = 'Academy dinosaur';


/* 14) What is that average running time of all the films in the sakila DB? */

Select
avg(length)
From sakila.film;



/* 15- Use `INNER JOIN` to display the first and last names, as well as the address, of each staff member. 
Use the tables `staff` and `address` */

 Select
 s.first_name,
 s.last_name,
 a.address
 from sakila.staff as s
 Join sakila.address as a
 ON s.address_id = a.address_id;
  
  
/* 16- Use `INNER JOIN` to display first name, last name and the amount for each staff member. 
Use tables `staff` and `payment*/

Select
s.first_name,
s.last_name,
p.amount
from sakila.staff as s
join sakila.payment as p
on p.staff_id = s.staff_id;



/* 17- Use `INNER JOIN` to display first name, last name,  payment date and 
the amount for each staff member in  August of 2005. Use tables `staff` and `payment*/

Select
s.first_name,
s.last_name,
p.payment_date,
p.amount
from sakila.staff as s
join sakila.payment as p
on s.staff_id = p.staff_id
where date_format(p.payment_date, '%M %Y') = 'August 2005';


/* 18- Use `INNER JOIN` to display the total amount rung up by each staff member in August of 2005. 
Use tables `staff` and `payment`. */


Select
	s.first_name,
    s.last_name,
sum(p.amount)
from staff as s
join payment as p
on s.staff_id = p.staff_id
where date_format(p.payment_date, '%M %Y') = 'August 2005'
group by s.first_name, s.last_name;





/* 19) List each film and the number of actors who are listed for that film. Use tables `film_actor` and `film`. 
Use inner join, group by. */


Select
	f.title,
	count(a.actor_id) as No_of_Actors
from film as f 
join film_actor as a
on f.film_id = a.film_id
group by f.title
order by No_of_Actors desc;


/* 20) How many copies of the film `Hunchback Impossible` exist in the inventory system? 
Use tables `film` and `inventory`*/


Select
	Count(*)
from film as f
join inventory as i
on f.film_id = i.film_id
where f.title = 'Hunchback Impossible';

/* 21) Using the tables `payment` and `customer` and the `INNER JOIN` command, list payments by each customer. 
List the customers alphabetically by last name */


Select
	c.first_name,
	c.last_name,
	p.payment_date,
	p.amount
from customer as c
join payment as p
on c.customer_id = p.customer_id
order by c.last_name;




/* 22) Using the tables `payment` and `customer` and the `INNER JOIN` command, list the total paid by each customer. 
List the customers alphabetically by last name. */

Select
	c.first_name,
	c.last_name,
	Sum(p.amount) as TotalPayment
from customer as c
join payment as p
on c.customer_id = p.customer_id
group by c.last_name, c.first_name
order by c.last_name;



/* 23) Which actor has appeared in the most films? */

Select
    a.last_name,
	count(film_id) as films
from film_actor as f
join actor as a
on f.actor_id = a.actor_id
group by a.last_name
order by films desc 
limit 1;


/* 24) Find the most common actor surname from the Sakila database */

Select
	last_name,
	count(*) as Freq
from actor
group by last_name
order by freq desc
limit 1;


/* 25) List the last names of actors, as well as how many actors have that last name.*/


Select
last_name,
count(actor_id)
from actor
group by last_name;



/* 26) Which last names are not repeated? (Please search for having clause for this exercises) */

Select
last_name,
count(actor_id)
from actor
group by last_name
having count(actor_id) < 2;


SELECT 
    last_name
FROM actor
GROUP BY last_name
HAVING COUNT(actor_id) = 1;




/* 27) Which last names appear more than once? (Please search for having clause for this exercises) */


SELECT 
last_name,
COUNT(actor_id)
from actor
group by last_name
Having COUNT(actor_id) > 1;

/* 28) Use CASE Staments to Categorize Films Based on Rental Duration: 
(Short-Term Rentals) – Films rented for 3 days or less.
(Medium-Term Rentals) – Films rented for 4 to 6 days.
(Long-Term Rentals) – Films rented for more than 6 days.

Select 
    title,
    rental_duration,
CASE 
        WHEN rental_duration <= 3 THEN 'Short-Term'
        WHEN rental_duration BETWEEN 4 AND 6 THEN 'Medium-Term'
        ELSE 'Long-Term'
END as rental_category
From film;



