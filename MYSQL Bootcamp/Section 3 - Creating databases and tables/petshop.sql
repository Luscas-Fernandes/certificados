USE petshop;

CREATE TABLE cats(
	name VARCHAR(50),
    age INT
);

CREATE TABLE dogs(
	name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);

INSERT INTO cats (name, age) 
VALUES ("Robert downey jr.", 5), 
	   ("Juan Carlos", 3), 
       ("Tiringa", 12);

DESC cats;
SELECT * FROM cats;