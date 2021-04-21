
-- 1. Do we have actors in the actor table that share the full name 
-- and if yes display those shared names.
SELECT FIRST_NAME, LAST_NAME, Count(*) AS CNT
FROM ACTOR
GROUP BY FIRST_NAME, LAST_NAME
HAVING COUNT(*) > 1
-- This returns the first- and lastname 
-- and how often they appear for all which have duplicates.


-- 2. Return the customer IDs of customers 
--who have spent at least $110 
-- with the staff member who has an ID of 2.
SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id=2
GROUP BY customer_id
HAVING SUM(amount) >110;

-- 3. How many films begin with the letter J?
SELECT COUNT(*) FROM film WHERE title LIKE 'J%';


-- 4. What customer has the highest customer ID number 
--whose name starts with an 'E' 
-- and has an address ID lower than 500?

SELECT customer_id, first_name, last_name, address_id FROM customer
WHERE address_id <500 AND first_name LIKE 'E%'
ORDER BY customer_id DESC;


--5. How many films have the word Truman somewhere in the title?
SELECT title FROM film
WHERE title ILIKE '%Truman%';

--6. Display the total amount payed by all customers in the payment table.
SELECT SUM(amount) FROM payment;

--7. Display the total amount payed by each customer in the payment table.
SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY customer_id ;

-- 8. What is the highest total_payment done?
SELECT customer_id, SUM(amount) AS total_amount FROM payment GROUP BY customer_id 
ORDER BY SUM(amount) DESC LIMIT 1;

--8. What is the highest total_payment done
SELECT customer_id , SUM ( amount )from payment GROUP BY customer_id ORDER BY SUM(amount) DESC LIMIT 1;

--9 Which customers have not rented any movies so far
SELECT* from customer

--10. How many payment transactions were greater than $5.00?
SELECT count (*) from payment WHERE amount>5

