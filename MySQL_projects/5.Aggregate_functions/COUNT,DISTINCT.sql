USE cinema_booking_system;
 
-- 1. How many bookings did the customer with ID 10 make, in total.
 
 SELECT count(*) FROM bookings
 WHERE customer_id = 10;
 
-- 2. Count the number of screenings for Blade Runner 2049 in October 2022.
 
 SELECT count(*) FROM screenings
 JOIN films ON screenings.film_id = films.id
 WHERE films.name = 'Blade Runner 2049'
 AND screenings.start_time BETWEEN '2022-10-01'
 AND '2022-10-31 23:59:59.999999';
 
 SELECT count(*) FROM screenings
 JOIN films ON screenings.film_id = films.id
 WHERE films.name = 'Blade Runner 2049'
 AND month(screenings.start_time) = 10
 AND year(screenings.start_time) = 2022;
 
-- 3. Count the number of unique customers who made a booking for April 2023.

SELECT count(distinct(customer_id)) FROM bookings
JOIN screenings on bookings.screening_id = screenings.id
WHERE screenings.start_time BETWEEN '2023-04-01'
AND '2023-04-30 23:59:59.999999';