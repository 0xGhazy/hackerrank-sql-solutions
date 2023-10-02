SELECT COUNTRY.Continent, FLOOR(AVG(city.population))
FROM city
INNER JOIN country 
ON CITY.CountryCode =  COUNTRY.Code
GROUP BY COUNTRY.Continent;