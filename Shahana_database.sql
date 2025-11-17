                                                                          Shahana Task 3 – SQL Solutions

A. SELECT, WHERE, ORDER BY, GROUP BY
1. SELECT * FROM products;
2. SELECT * FROM customers WHERE customer_id = 1;
3. SELECT * FROM products ORDER BY price DESC;
4. SELECT product_id, SUM(price) FROM products GROUP BY product_id;

B. JOINS (INNER, LEFT, RIGHT)
1. INNER JOIN: SELECT c.name, p.product_name FROM customers c INNER JOIN orders o ON
c.customer_id=o.customer_id INNER JOIN products p ON o.product_id=p.product_id;
2. LEFT JOIN: SELECT c.name, o.order_id FROM customers c LEFT JOIN orders o ON
c.customer_id=o.customer_id;
3. RIGHT JOIN: SELECT o.order_id, p.product_name FROM orders o RIGHT JOIN products p ON
o.product_id=p.product_id;

C. Subqueries
SELECT product_name FROM products WHERE price > (SELECT AVG(price) FROM products);

D. Aggregate Functions (SUM, AVG)
1. SELECT SUM(price) FROM products;
2. SELECT AVG(price) FROM products;

E. Create Views
CREATE VIEW order_summary AS SELECT o.order_id, c.name, p.product_name FROM orders o
INNER JOIN customers c ON o.customer_id=c.customer_id INNER JOIN products p ON
o.product_id=p.product_id;

F. Optimize Queries With Indexes
CREATE INDEX idx_customer_id ON orders(customer_id);
CREATE INDEX idx_product_id ON products(product_id);