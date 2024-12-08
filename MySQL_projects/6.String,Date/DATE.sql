USE cinema_booking_system;
 
-- 1. Select the film ID and start time from the screenings table for the date of 18th June 2022.
 
 SELECT film_id, start_time FROM screenings
 WHERE date(start_time) = '2022-06-18';
 
 
-- 2. Select all the data from the screenings table where the start time is
--    between the 6th and 13th of March 2023.
 
 SELECT * FROM screenings
 WHERE date(start_time) BETWEEN '2023-03-06' AND '2023-03-13';
 
 
-- 3. Select all the data from the screenings table for October 2022.

SELECT * FROM screenings
WHERE month(start_time) = 10
AND year(start_time) = 2022;