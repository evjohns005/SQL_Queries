
CREATE VIEW initialCustomers AS
SELECT first_name, last_name, email
FROM customer
WHERE customer_id < 100;

SELECT * FROM initialCustomers;

CREATE TABLE ProductList(
product_id INTEGER PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(50) NOT NULL,
price NUMERIC NOT NULL,
date_added DATETIME DEFAULT CURRENT_TIMESTAMP,
employee_support_id INTEGER NOT NULL);

INSERT INTO ProductList(product_name, price, employee_support_id)
VALUES ("Lotion", 5, 210);

SELECT * FROM ProductList;


