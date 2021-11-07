/*-- kill other connections
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'spectacle_theater' AND pid <> pg_backend_pid();
-- (re)create the database
DROP DATABASE IF EXISTS spectacle_theater;
CREATE DATABASE spectacle_theater;
-- connect via psql
\c spectacle_theater

-- database configuration
SET statement_timeout
= 0;
SET lock_timeout
= 0;
SET client_encoding
= 'UTF8';
SET standard_conforming_strings
= on;
SET check_function_bodies
= false;
SET client_min_messages
= warning;
SET default_tablespace
= '';
SET default_with_oids
= false;*/


---
--- CREATE tables
---

CREATE TABLE events(
	event_id SERIAL,
	show_time TIMESTAMP,
	PRIMARY KEY(event_id),
	auditorium_id INT,
    film_id INT NOT NULL
);

CREATE TABLE auditoria(
	auditorium_id SERIAL,
	capacity INTEGER NOT NULL,
	PRIMARY KEY(auditorium_id)
);

CREATE TABLE films(
	film_id SERIAL,
	title TEXT NOT NULL,
	runtime INTEGER,
	PRIMARY KEY(film_id)
); 

CREATE TABLE accounts(
	account_id SERIAL,
	username TEXT NOT NULL UNIQUE,
	password TEXT NOT NULL,
	customer_id INT NOT NULL UNIQUE,
	PRIMARY KEY(account_id)
);

CREATE TABLE customers (
    customer_id SERIAL,
    name TEXT NOT NULL,
    PRIMARY KEY(customer_id)
);

CREATE TABLE event_purchases(
	customer_id INTEGER NOT NULL,
	event_id INTEGER NOT NULL,
	PRIMARY KEY(customer_id, event_id),
	price NUMERIC NOT NULL
);

ALTER TABLE events
ADD CONSTRAINT fk_events_auditoria
FOREIGN KEY (auditorium_id)
REFERENCES auditoria;

ALTER TABLE events
ADD CONSTRAINT fk_events_films
FOREIGN KEY (film_id)
REFERENCES films;

ALTER TABLE accounts
ADD CONSTRAINT fk_accounts_customers
FOREIGN KEY (customer_id)
REFERENCES customers;

ALTER TABLE event_purchases
ADD CONSTRAINT fk_event_purchases_events
FOREIGN KEY (event_id)
REFERENCES events;

ALTER TABLE event_purchases
ADD CONSTRAINT fk_event_purchases_customers
FOREIGN KEY (customer_id)
REFERENCES customers;
