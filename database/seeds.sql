-- Payment seeds
INSERT INTO payments (card_num, bill_address, zipcode) VALUES (123, '123 st', '12345');

INSERT INTO payments (card_num, bill_address, zipcode) VALUES (234, '234 st', '23456');

INSERT INTO payments (card_num, bill_address, zipcode) VALUES (345, '345 st', '34567');

INSERT INTO payments (card_num, bill_address, zipcode) VALUES (456, '456 st', '45678');

INSERT INTO payments (card_num, bill_address, zipcode) VALUES (567, '567 st', '56789');

--user seeds
INSERT INTO users (email, first_name, last_name, payment_id) VALUES ('aaron@gmail.com', 'aaron', 'jachter', 1);

INSERT INTO users (email, first_name, last_name, payment_id) VALUES ('bugs@gmail.com', 'bugs', 'bunny', 2);

INSERT INTO users (email, first_name, last_name, payment_id) VALUES ('dave@hotmail.com', 'dave', 'jachter', 3);

INSERT INTO users (email, first_name, last_name, payment_id) VALUES ('shaina@yahoo.com', 'shaina', 'jachter', 4);

INSERT INTO users (email, first_name, last_name, payment_id) VALUES ('karen@yahoo.com', 'karen', 'jachter', 5);

-- orders seeds
INSERT INTO orders (user_id, product_id, purchase_date) VALUES (1, 1, '2019-01-01');

INSERT INTO orders (user_id, product_id, purchase_date) VALUES (2, 2, '2019-03-15');

INSERT INTO orders (user_id, product_id, purchase_date) VALUES (3, 3, '2019-06-01');

INSERT INTO orders (user_id, product_id, purchase_date) VALUES (4, 4, '2020-02-10');

INSERT INTO orders (user_id, product_id, purchase_date) VALUES (5, 5, '2021-03-18');

-- category seeds
INSERT INTO categories (name) VALUES ('kitchen');

INSERT INTO categories (name) VALUES ('bathroom');

INSERT INTO categories (name) VALUES ('gaming');

INSERT INTO categories (name) VALUES ('appliance');

INSERT INTO categories (name) VALUES ('furniture');

-- product seeds
INSERT INTO products (name, description, cost_usd, category_id) VALUES ('pots4you','4 piece pots and pans set', 200, 1);

INSERT INTO products (name, description, cost_usd, category_id) VALUES ('PLUNG-O-MAX','black plunger', 20, 2);

INSERT INTO products (name, description, cost_usd, category_id) VALUES ('type master 5500','RGB keyboard', 120, 3);

INSERT INTO products (name, description, cost_usd, category_id) VALUES ('washinator','laundry machine', 1200, 4);

INSERT INTO products (name, description, cost_usd, category_id) VALUES ('snoozy time recline','black sofa chair', 400, 5);