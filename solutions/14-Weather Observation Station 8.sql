/* Enter your query here. */
SELECT DISTINCT city
FROM station
WHERE
-- Get all strings that starts with vowels 
SUBSTR(city,1, 1) IN ('a','e','i','o','u')
AND
-- Get all strings that ends with vowels 
SUBSTR(city,-1, 1) IN ('a','e','i','o','u');
