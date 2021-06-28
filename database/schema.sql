-- Schema creation goes here
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS payments CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS categories CASCADE;

CREATE TABLE payments (
    id serial primary key,
    card_num int   NOT NULL,
    bill_address varchar(50)   NOT NULL,
    zipcode varchar(10)   NOT NULL
);


CREATE TABLE users (
    id serial primary key,
    email varchar(50)   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    payment_id int   NOT NULL,
    CONSTRAINT fk_payment
        FOREIGN KEY(payment_id)
            REFERENCES payments(id)
);

CREATE TABLE orders (
    id serial primary key,
    user_id int   NOT NULL,
    product_id int   NOT NULL,
    purchase_date date   NOT NULL,
    CONSTRAINT fk_user
        FOREIGN KEY(user_id)
            REFERENCES users(id)
);


CREATE TABLE categories (
    id serial primary key,
    name varchar(50)   NOT NULL
);


CREATE TABLE products (
    id serial primary key,
    name varchar(50) NOT NULL,
    description varchar(100)   NOT NULL,
    cost_usd int   NOT NULL,
    category_id int   NOT NULL,
    CONSTRAINT fk_category
        FOREIGN KEY(category_id)
            REFERENCES categories(id)
);


