CREATE TABLE Customer(
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    phone varchar(50)
);


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

insert into customer(customer_id,name,city,phone) values
(1, 'Arjun', 'Chennai','2239745689'),
(2, 'Priya', 'Bangalore','2356176890'),
(3, 'Ravi', 'Hyderabad','908763457'),
(4, 'Meena', 'Chennai','902346789');
 
INSERT INTO Orders (order_id, customer_id, product, amount) VALUES
(101, 1, 'Laptop', 55000.00),
(102, 1, 'Mouse', 800.00),
(103, 2, 'Keyboard', 1200.00),
(104, 4, 'Monitor', 9500.00);
 
SELECT Customer.customer_id, Customer.name, Orders.product, Orders.amount
FROM Customer
INNER JOIN Orders ON Customer.customer_id = Orders.customer_id;

SELECT Customer.customer_id, Customer.name, Orders.product, Orders.amount
FROM Customer
LEFT JOIN Orders ON Customer.customer_id = Orders.customer_id;

select customer.customer_id,customer.name,orders.product,orders.amount
from customer
 right join orders on customer.customer_id = orders.customer_id;
 
SELECT customer.customer_id, customer.name, orders.product, orders.amount
FROM customer
LEFT JOIN orders ON customer.customer_id = orders.customer_id
UNION
SELECT customer.customer_id, customer.name, orders.product, orders.amount
FROM customer
RIGHT JOIN orders ON customer.customer_id = orders.customer_id;



