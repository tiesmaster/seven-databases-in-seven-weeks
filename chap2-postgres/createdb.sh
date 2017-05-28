#!/bin/bash

createdb book
psql book -c "CREATE EXTENSION cube;"

psql book -c "CREATE TABLE countries (
    country_code char(2) PRIMARY KEY,
    country_name text UNIQUE
);"

psql book -c "INSERT INTO countries (country_code, country_name)
    VALUES ('us', 'United States'), ('mx', 'Mexico'), ('au', 'Australia'),
    ('gb', 'United Kingdom'), ('de', 'Germany'), ('ll', 'Loompaland');"

psql book -c "DELETE FROM countries WHERE country_code = 'll';"