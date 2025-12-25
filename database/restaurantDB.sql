CREATE DATABASE IF NOT EXISTS restaurantDB;
USE restaurantDB;


CREATE TABLE IF NOT EXISTS restaurants (

    id INT AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(255) NOT NULL,

    specialty VARCHAR(255) NOT NULL,

    rating FLOAT DEFAULT 0

);



INSERT INTO restaurants (name, specialty, rating) VALUES

('Italiano Delight', 'Pasta, Pizza', 4.2),

('Sushi World', 'Sushi, Japanese', 4.7),

('Burger Hub', 'Burgers, Fries', 4.0),

('Curry Palace', 'Indian Curry', 4.5),

('Healthy Bites', 'Salads, Vegan', 4.3),

('Pizza Palace', 'Pizza, Pasta', 4.5),

('Cheesy Crust', 'Pizza, Burgers', 4.1),

('Noodle House', 'Pasta, Asian', 4.6),

('Green Garden', 'Salads, Vegan', 4.4),

('Spice Corner', 'Indian Curry, Naan', 4.2),

('Burger Town', 'Burgers, Fries', 4.3),

('Sushi Express', 'Sushi, Japanese', 4.6),

('Vegan Delight', 'Salads, Vegan', 4.5);


COMMIT;