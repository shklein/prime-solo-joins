--1. Get all customers and their addresses.
SELECT * FROM customers
	JOIN addresses ON addresses.customer_id = customers.id;
--2. Get all orders and their line items.
SELECT * FROM orders
	JOIN line_items ON line_items.order_id = orders.id;
--3. Which warehouses have Cheetos?
SELECT * FROM warehouse
	JOIN warehouse_product ON warehouse_product.warehouse_id = warehouse.id
	JOIN products ON products.id = warehouse_product.product_id
	WHERE products.id = 5;
--4. Which warehouses have Diet Pepsi?
SELECT * FROM warehouse
	JOIN warehouse_product ON warehouse_product.warehouse_id = warehouse.id
	JOIN products ON products.id = warehouse_product.product_id
	WHERE products.id = 6;
--5. Get the number of orders for each customer.
SELECT * FROM customers
	JOIN addresses ON addresses.customer_id = customers.id
	JOIN orders ON orders.address_id = addresses.id;
--6. How many customers do we have?
SELECT customers.id FROM customers;
--7.How many products do we carry?
SELECT products.id FROM products;
--8.What is the total available on-hand quantity of Diet Pepsi?
SELECT * FROM products
	JOIN warehouse_product ON warehouse_product.product_id = products.id
	WHERE products.id = 6;
