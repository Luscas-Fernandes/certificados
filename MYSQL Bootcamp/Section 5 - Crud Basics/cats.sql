CREATE DATABASE cats;

USE cats;

CREATE TABLE cats(
    cat_id INT AUTO_INCREMENT,
    name varchar(100),
    breed varchar(100),
    age INT,
    PRIMARY KEY (cat_id)
);

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

SELECT * FROM cats;

SELECT name FROM cats;
SELECT age FROM cats;
SELECT breed, age FROM cats;

SELECT * FROM cats WHERE age > 4;
SELECT name, breed FROM cats WHERE age = 4;
SELECT cat_id FROM cats;
SELECT name, breed FROM cats;
SELECT name, age FROM cats where breed='tabby';
SELECT cat_id, age FROM cats where age = cat_id;
SELECT * FROM cats WHERE age=cat_id;

SELECT cat_id AS id, name FROM cats;
SELECT name AS kittykitty FROM cats;

-- Update

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';

SELECT * FROM cats WHERE name='jackson';
UPDATE cats SET name='Jack' WHERE name='jackson';
SELECT * FROM cats WHERE name='jack';
SELECT * FROM cats;

SELECT * FROM cats WHERE name='ringo';
UPDATE cats SET breed='British Shorthair' WHERE name='ringo';
SELECT * FROM cats;

UPDATE cats set age=12 WHERE breed='maine coon';
SELECT * FROM cats;

-- Delete

DELETE FROM cats WHERE name='egg';
SELECT * FROM cats;

DELETE FROM cats WHERE age=4;
DELETE FROM cats WHERE age=cat_id;
SELECT * FROM cats;
DELETE FROM cats;
SELECT * FROM cats;