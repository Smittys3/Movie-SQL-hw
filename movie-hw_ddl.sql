CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE concessions (
    concessions_id SERIAL PRIMARY KEY,
    concessions_price NUMERIC(3,2),
    concessions_name VARCHAR(100)
);

CREATE TABLE movie (
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(100),
    movie_rating VARCHAR(100)
);

CREATE TABLE ticket (
    ticket_id SERIAL PRIMARY KEY,
    price NUMERIC(3,2),
    movie_d VARCHAR(100) NOT NULL
    -- FOREIGN KEY (movie_d) REFERENCES movie(movie_d)
);

CREATE TABLE sales (
    sales_id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    concessions_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
    FOREIGN KEY (concessions_id) REFERENCES concessions(concessions_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

ALTER TABLE movie
DROP COLUMN movie_title;

ALTER TABLE movie
ADD movie_d VARCHAR(100);

ALTER TABLE movie
DROP COLUMN movie_d;
