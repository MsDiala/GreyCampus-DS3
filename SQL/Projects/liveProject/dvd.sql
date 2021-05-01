
-- Q1 : // we are going to use inner join to 4 tables
select first_name as manager_firstname ,last_name as manager_last_name ,  address , district , city ,country from public.store
inner join public.staff
on public.store.manager_staff_id = public.staff.store_id
inner join public.address
on public.staff.address_id = public.address.address_id
inner join public.city
on public.city.city_id = public.address.city_id
inner join public.country
on public.country.country_id = public.city.country_id ; 

-- Q2 : 
select store_id , inventory_id , title , rating , rental_rate , replacement_cost  from public.film
inner join public.inventory
on public.inventory.film_id = public.film.film_id;

-- Q3 :// Avg inv
select store_id ,rating, count(inventory_id) as inventory_items from public.film
inner join public.inventory
on public.inventory.film_id = public.film.film_id
group by  rating , store_id  
order by rating asc ;
-- Q4 : //???

-- Q5 :
select customer.first_name, customer.last_name, customer.store_id, customer.activebool, address.address,
city.city, country.country
from customer
inner join address on customer.address_id=address.address_id
inner join city on address.city_id=city.city_id
inner join country on city.country_id=country.country_id;
-- Q6 :
select customer.first_name, customer.last_name, count(payment.rental_id) as "total_rentals", 
sum(payment.amount) as "total_payment_amount"
from customer
inner join payment on customer.customer_id=payment.customer_id
group by customer.customer_id
order by sum(payment.amount) DESC