SELECT cities.*, country_name
FROM cities INNER JOIN countries
ON cities.country_code = countries.country_code;