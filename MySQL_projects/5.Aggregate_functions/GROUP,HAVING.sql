USE cinema_booking_system;
 
-- 1. Select the customer ID and count the number of reserved seats, grouped by customer.
--    Sort the results by customer ID.
 
 SELECT b.customer_id, count(*) FROM bookings b
 JOIN reserved_seat rs ON b.id = rs.booking_id
 GROUP BY b.customer_id
 ORDER BY customer_id;
 
 
 
-- 2. Select the film name, and count the number of screening, for each film that is
--    over two hours long.
 
 SELECT f.name, f.length_min, count(*) FROM films f
 JOIN screenings s ON f.id = s.film_id
 GROUP BY f.name, f.length_min
 HAVING f.length_min > 120;
 
 
 
-- 3. Modify the query from question 2, so that it only counts screenings for January 2023.
 
 SELECT f.name, f.length_min, count(*) FROM films f
 JOIN screenings s ON f.id = s.film_id
 WHERE month(s.start_time) = 1 AND year(s.start_time) = 2023
 GROUP BY f.name, f.length_min
 HAVING f.length_min > 120;
 
SELECT f.name, f.length_min, count(s.id) FROM films f
JOIN screenings s ON f.id = s.film_id
WHERE month(s.start_time) = 1 AND year(s.start_time) = 2023 AND f.length_min > 120
GROUP BY f.name, f.length_min;
 
-- 4. Find out how many seats each customer booked, for each screening.
--    Include the customer ID, the screening ID, and the number of seats for each
--    customer for that screening.

SELECT customer_id, screening_id, count(*) AS no_seats FROM bookings b
join reserved_seat rs ON rs.booking_id = b.id
GROUP BY customer_id, screening_id
ORDER BY customer_id;