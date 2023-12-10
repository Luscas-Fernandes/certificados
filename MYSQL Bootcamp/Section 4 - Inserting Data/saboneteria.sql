USE saboneteria;

CREATE TABLE clients(
	id INT NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age INT,
    PRIMARY KEY (id)
);

INSERT INTO clients (first_name, last_name, age) VALUES('Tina', 'Belcher', 13);
INSERT INTO clients (first_name, last_name, age) VALUES('Bob', 'Belcher', 42);

INSERT INTO clients (first_name, last_name, age) 
VALUES ('Linda', 'Belcher', 42),
	   ('Phillip', 'Frond', 38),
       ('Calvin', 'Fischoeder', 70);
       

SELECT * FROM clients;

CREATE TABLE clients2(
    first_name VARCHAR(20) DEFAULT 'Bob',
    last_name VARCHAR(20) DEFAULT 'Ross',
    age INT DEFAULT 53
);

INSERT INTO clients2 (first_name)
VALUES ('Ronaldo');

CREATE TABLE clients3(
    cpf VARCHAR(11) PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) DEFAULT 'Ross',
    age INT NOT NULL
);

INSERT INTO clients3 (cpf, first_name, age)
VALUES ('11122233344', 'Ronaldo', 27);

SELECT * FROM clients3;
DESC clients3;

CREATE TABLE clients4(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) DEFAULT 'Ross',
    age INT NOT NULL
);

INSERT INTO clients4 (first_name, age)
VALUES ('Ronaldinho', 27),
       ('Jessica', 30),
       ('Carlinhos', 21);

SELECT * FROM clients4;
DESC clients4;

CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    middle_name VARCHAR(60),
    age INT NOT NULL,
    current_status VARCHAR(25) NOT NULL DEFAULT 'employed'
);

DESC employees;

INSERT INTO employees(first_name, last_name, age)
VALUES ('Lucas', 'Fernandes', 21)
       ('Phillip', 'Frota', 22);

SELECT * FROM employees;