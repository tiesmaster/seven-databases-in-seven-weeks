SELECT cities.*, country_name
FROM cities INNER JOIN countries
  ON cities.country_code = countries.country_code;

SELECT v.venue_id, v.name, c.name
FROM venues v INNER JOIN cities c
  ON v.postal_code=c.postal_code AND v.country_code=c.country_code;

SELECT e.title, v.name
FROM events e JOIN venues v
  ON e.venue_id = v.venue_id;

SELECT e.title, v.name
FROM events e LEFT JOIN venues v
  ON e.venue_id = v.venue_id;

# 
SELECT e.title, co.country_name
FROM events e
INNER JOIN venues v
  ON e.venue_id = v.venue_id
INNER JOIN cities ci
  ON v.postal_code=ci.postal_code AND v.country_code=ci.country_code
INNER JOIN countries co
  ON ci.country_code = co.country_code
WHERE e.title = 'Larp Club';