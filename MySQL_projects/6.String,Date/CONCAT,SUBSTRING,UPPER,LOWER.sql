USE cinema_booking_system;
 
-- 1. Concatenate the film names and lengths from the films table.
 
 SELECT concat(name, ": ", length_min) AS film_info FROM films;
 
 
-- 2. Extract the customer's email from the fifth character onwards.
--    We want the last 5 characters of their email address.
 
 SELECT substring(email, 5) AS email_short FROM customers;
 
 
-- 3. Select the customer's first name in lowercase, and
--    their last name in uppercase, for each customer with
--    the last name of Smith.
--
--    We want 2 columns in the result – a lowercase first name column,
--    and an uppercase last name column.
 
 SELECT lower(first_name) AS first_name, upper(last_name) AS last_name
 FROM customers
 WHERE last_name = "Smith";
 
 
-- 4. Select the last three letters of each film name from the films table.
 
 SELECT substring(name, -3) AS last_three FROM films;
 
 
-- 5. Concatenate the first three letters in the first name,
--    with the first 3 character from the last name. Put a
--    space between the 2 groups of 3 characters.
--    Concatenate them together and return a single column in the results.

SELECT concat(substring(first_name, 1, 3), " ", substring(last_name, 1, 3)) AS short_name
FROM customers;