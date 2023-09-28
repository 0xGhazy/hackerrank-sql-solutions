/* Enter your query here. */

SELECT DISTINCT city
FROM station
WHERE
SUBSTR(city,1, 1) NOT IN ('a','e','i','o','u')
OR
SUBSTR(city,-1, 1) NOT IN ('a','e','i','o','u');