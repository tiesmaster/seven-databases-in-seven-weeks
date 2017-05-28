CREATE EXTENSION cube;

CREATE TABLE countries (
    country_code char(2) PRIMARY KEY,
    country_name text UNIQUE
);

INSERT INTO countries (country_code, country_name)
VALUES ('us', 'United States'), ('mx', 'Mexico'), ('au', 'Australia'),
       ('gb', 'United Kingdom'), ('de', 'Germany'), ('ll', 'Loompaland');

DELETE FROM countries WHERE country_code = 'll';