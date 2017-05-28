CREATE EXTENSION cube;

CREATE TABLE countries (
    country_code char(2) PRIMARY KEY,
    country_name text UNIQUE
);

INSERT INTO countries (country_code, country_name)
VALUES ('us', 'United States'), ('mx', 'Mexico'), ('au', 'Australia'),
       ('gb', 'United Kingdom'), ('de', 'Germany'), ('ll', 'Loompaland');

DELETE FROM countries WHERE country_code = 'll';

CREATE TABLE cities (
    name text NOT NULL,
    postal_code varchar(9) CHECK (postal_code <> ''),
    country_code char(2) REFERENCES countries,
    PRIMARY KEY (country_code, postal_code)
);

INSERT INTO cities
VALUES ('Portland', '87200', 'us');

UPDATE cities
SET postal_code = '97205';

