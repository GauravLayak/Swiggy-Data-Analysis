DROP TABLE IF EXISTS swiggy_db;
CREATE TABLE swiggy_db (
	Name VARCHAR(100),
	Cuisine	VARCHAR(200),
	Location VARCHAR(200),
	rating FLOAT,
	num_of_rating INT,	
	price INT
);

SELECT * FROM swiggy_db;

SELECT COUNT(*) FROM swiggy_db;

-- KPI REQUIREMENTS --

-- Total Orders
SELECT DISTINCT(COUNT(*)) AS total_orders
FROM swiggy_db;

-- Average Rating 
SELECT ROUND(AVG(rating)::numeric,2 ) AS avg_rating
FROM swiggy_db;

-- Average price
SELECT ROUND(AVG(price)::numeric, 2) AS avg_price
FROM swiggy_db;

-- Highest Rated Restaurants
SELECT 
	Name, 
	location,
	Rating
FROM swiggy_db
WHERE Rating IS NOT NULL
ORDER BY rating DESC
LIMIT 10;

-- Most Popular Cuisines (Top 10)
SELECT 
	cuisine, 
	COUNT(*) AS total_restaurants
FROM swiggy_db
GROUP BY cuisine
ORDER BY total_restaurants DESC
LIMIT 10;

-- Affordable Restraunts (price < 500 Rs.)
SELECT 
	name, 
	location, 
	price
FROM swiggy_db
WHERE price < 500
ORDER BY price ASC;

-- Average Price Per Cuisine
SELECT 
	cuisine, 
	ROUND(AVG(price)::numeric, 2) AS avg_price
FROM swiggy_db
GROUP BY cuisine
ORDER BY avg_price;

-- Location with Most Restraunts
SELECT 
	location,
	COUNT(*) AS total_restaurants
FROM swiggy_db
GROUP BY location
ORDER BY total_restaurants DESC;

-- Whether high price restraunts rated higher?
SELECT 
    CASE 
        WHEN price < 500 THEN 'Low Budget'
        WHEN price BETWEEN 500 AND 1500 THEN 'Mid-Range'
        ELSE 'Luxury'
    END AS price_category,
    ROUND(AVG(rating)::numeric, 2) AS avg_rating
FROM swiggy_db
WHERE rating IS NOT NULL
GROUP BY price_category
ORDER BY avg_rating DESC;

-- Cuisines with high average ratings
SELECT 
	cuisine, 
	ROUND(AVG(rating)::numeric, 2) AS avg_rating
FROM swiggy_db
WHERE rating IS NOT NULL
GROUP BY cuisine
ORDER BY avg_rating DESC
LIMIT 10;

-- END OF PROJECT --














