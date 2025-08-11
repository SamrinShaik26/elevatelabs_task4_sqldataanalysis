SELECT name FROM sqlite_master WHERE type='table';
SELECT * FROM orders LIMIT 5;
SELECT * FROM customers LIMIT 5;
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 10;
SELECT product_id, SUM(price) AS total_sales
FROM order_items
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 10;
SELECT c.customer_id, o.order_id, SUM(oi.price) AS order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, o.order_id
ORDER BY order_value DESC
LIMIT 10;
SELECT oi.product_id, AVG(orv.review_score) AS avg_score
FROM order_items oi
JOIN order_reviews orv ON oi.order_id = orv.order_id
GROUP BY oi.product_id
ORDER BY avg_score DESC
LIMIT 10;
SELECT p.product_category_name, SUM(oi.price) AS total_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_category_name
ORDER BY total_sales DESC
LIMIT 10;