-- Queries go here

--retrieve the first name, last name, and email address of all customers that have a gmail email address.
select first_name, last_name, email from users where email LIKE '%gmail.com';

--retrieve the address of the customer and the order IDs for all orders that were placed in 2020
select orders.id, bill_address from orders JOIN users ON (orders.user_id = users.id) JOIN payments ON (users.payment_id = payments.id) where purchase_date::text LIKE '2020%';

--retrieve all products details for products that are under the kitchen category
select * from products JOIN categories ON (products.category_id = categories.id) where name='kitchen';

--retrieve the product names and prices of all products ordered by the customer with first name Bugs and last name Bunny
select * from products JOIN orders ON (products.id = orders.product_id) JOIN users ON (orders.user_id = users.id) where first_name='bugs' and last_name='bunny';


