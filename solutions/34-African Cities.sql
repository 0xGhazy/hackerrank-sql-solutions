SELECT city.name
FROM city
INNER JOIN country 
ON CITY.CountryCode =  COUNTRY.Code
WHERE COUNTRY.continent = "Africa";