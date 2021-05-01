
-- Q1 : // we are going to use INNER JOIN to 4 tables
SELECT first_name AS manager_firstname ,lASt_name AS manager_lASt_name ,  address , district , city ,country FROM public.store
INNER JOIN public.staff
ON public.store.manager_staff_id = public.staff.store_id
INNER JOIN public.address
ON public.staff.address_id = public.address.address_id
INNER JOIN public.city
ON public.city.city_id = public.address.city_id
INNER JOIN public.country
ON public.country.country_id = public.city.country_id ; 

-- Q2 : // 
SELECT store_id , inventory_id , title , rating , rental_rate , replacement_cost  FROM public.film
INNER JOIN public.inventory
ON public.inventory.film_id = public.film.film_id;

-- Q3 :// Avg inv
SELECT store_id ,rating, count(inventory_id) AS inventory_items FROM public.film
INNER JOIN public.inventory
ON public.inventory.film_id = public.film.film_id
GROUP BY  rating , store_id  
ORDER BY rating ASC ;
-- Q4 : //???

-- Q5 :
SELECT customer.first_name, customer.lASt_name, customer.store_id, customer.activebool, address.address, city.city, country.country FROM customer
INNER JOIN address ON customer.address_id=address.address_id
INNER JOIN city ON address.city_id=city.city_id
INNER JOIN country ON city.country_id=country.country_id;
-- Q6 :
SELECT customer.first_name, customer.lASt_name, count(payment.rental_id) AS "Total_Rentals",sum(payment.amount) AS "Total_Payment_Amount" FROM customer
INNER JOIN payment ON customer.customer_id=payment.customer_id
GROUP BY customer.customer_id
ORDER BY sum(payment.amount) DESC