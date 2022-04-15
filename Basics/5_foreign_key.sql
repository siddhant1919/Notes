-- CREATE DATABASE new_lco;
-- USE new_lco;

-- CREATE TABLE users(
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   name VARCHAR(30),
--   email VARCHAR(60)
-- );

-- CREATE TABLE purchases(
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   order_date DATE,
--   amount INT,
--   user_id INT,
--   FOREIGN KEY (user_id) REFERENCES users(id)
-- );

-- INSERT INTO users (name, email) 
-- VALUES ('thor','thor@gmail.com'),
-- ('peter','peter@gmail.com'),
-- ('tony','tony@gmail.com'),
-- ('kevin','kevin@gmail.com');

-- INSERT INTO purchases(order_date,amount, user_id)
-- VALUES ('2019-04-23',199,2);

-- TODO: error in query(because 8 id is not present in the users table)

-- INSERT INTO purchases(order_date,amount, user_id)
-- VALUES ('2020-01-22',299,8);




