-- SELECT is used to retrieve data from a database table
SELECT * FROM customers;

-- INSERT is used to insert new rows into a table
INSERT INTO customers (first_name, last_name, email)
VALUES ('John', 'Doe', 'john@example.com');

-- UPDATE is used to modify existing rows in a table
UPDATE customers
SET email = 'new@email.com'
WHERE id = 1;

-- DELETE is used to delete rows from a table
DELETE FROM customers WHERE last_name = 'Smith';

-- CREATE TABLE is used to create a new table in a database
CREATE TABLE customers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL
);

-- ALTER TABLE is used to modify an existing table
ALTER TABLE customers
ADD phone VARCHAR(20);

-- TRUNCATE TABLE is used to delete all rows from a table and reset the auto-increment value for any identity columns
TRUNCATE TABLE customers;

-- DROP TABLE is used to delete a table from the database
DROP TABLE customers;

-- CREATE INDEX is used to create an index on a table to improve the performance of SELECT, UPDATE, and DELETE queries
CREATE INDEX idx_customer_email ON customers (email);

-- GRANT is used to grant permissions to users to perform certain actions on the database, such as SELECT, INSERT, UPDATE, DELETE, and so on
GRANT SELECT, INSERT, UPDATE, DELETE ON customers TO 'user1';

-- REVOKE is used to revoke permissions that have been granted to users
REVOKE SELECT, INSERT, UPDATE, DELETE ON customers FROM 'user1';
