SELECT * FROM hotel_booking;

SELECT * FROM hotel_booking
LIMIT 10;

/**count all hotel bookings**/
SELECT COUNT(*) AS total_bookings
FROM hotel_booking;


/**calculate total hotel revenue**/
SELECT ROUND(SUM(adr), 2) AS total_revenue
FROM hotel_booking;

/**Change column datatype permanently:**/
ALTER TABLE hotel_booking
ALTER COLUMN adr TYPE NUMERIC
USING adr::NUMERIC;

/**view column name**/
SELECT column_name
FROM information_schema.columns
WHERE table_name = 'hotel_booking';

/**Find average booking price**/
SELECT ROUND(AVG(adr), 2) AS average_room_price
FROM hotel_booking;

/**most booked room type**/
SELECT reserved_room_type,
       COUNT(*) AS total_bookings
FROM hotel_booking
GROUP BY reserved_room_type
ORDER BY total_bookings DESC;

/**analyse monthly booking trend**/
SELECT arrival_date_month,
       COUNT(*) AS bookings
FROM hotel_booking
GROUP BY arrival_date_month
ORDER BY bookings DESC;

/**Find top guest countries**/
SELECT country,
       COUNT(*) AS guests
FROM hotel_booking
GROUP BY country
ORDER BY guests DESC
LIMIT 10;

/**Compare Resort Hotel vs City Hotel**/
SELECT hotel,
       COUNT(*) AS bookings
FROM hotel_booking
GROUP BY hotel;

/**Calculate average customer stay**/
SELECT ROUND(AVG(stays_in_week_nights + stays_in_weekend_nights), 2)
AS average_stay
FROM hotel_booking;

/**analyse booking source**/
SELECT market_segment,
       COUNT(*) AS total_customers
FROM hotel_booking
GROUP BY market_segment
ORDER BY total_customers DESC;

SELECT arrival_date_month,
       COUNT(*) AS total_booking
FROM hotel_booking
GROUP BY arrival_date_month
ORDER BY total_booking DESC;

SELECT ROUND(SUM(adr), 2) AS total_revenue
FROM hotel_booking;

SELECT ROUND(AVG(adr), 2) AS avg_adr
FROM hotel_booking;

SELECT SUM(adults + children + babies) AS total_guests
FROM hotel_booking;

