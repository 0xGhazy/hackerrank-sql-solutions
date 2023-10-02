SELECT SUM(city.population)
FROM city
INNER JOIN country 
ON CITY.CountryCode =  COUNTRY.Code
WHERE COUNTRY.continent = "Asia";