CREATE DATABASE library;

USE library;

CREATE TABLE books (
	book_id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(100),
	author_fname VARCHAR(100),
	author_lname VARCHAR(100),
	released_year INT,
	stock_quantity INT,
	pages INT,
	PRIMARY KEY(book_id)
);

INSERT INTO
	books (
		title,
		author_fname,
		author_lname,
		released_year,
		stock_quantity,
		pages
	)
VALUES
	(
		'The Namesake',
		'Jhumpa',
		'Lahiri',
		2003,
		32,
		291
	),
	(
		'Norse Mythology',
		'Neil',
		'Gaiman',
		2016,
		43,
		304
	),
	('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
	(
		'Interpreter of Maladies',
		'Jhumpa',
		'Lahiri',
		1996,
		97,
		198
	),
	(
		'A Hologram for the King: A Novel',
		'Dave',
		'Eggers',
		2012,
		154,
		352
	),
	('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
	(
		'The Amazing Adventures of Kavalier & Clay',
		'Michael',
		'Chabon',
		2000,
		68,
		634
	),
	('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
	(
		'A Heartbreaking Work of Staggering Genius',
		'Dave',
		'Eggers',
		2001,
		104,
		437
	),
	('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
	(
		'What We Talk About When We Talk About Love: Stories',
		'Raymond',
		'Carver',
		1981,
		23,
		176
	),
	(
		"Where I'm Calling From: Selected Stories",
		'Raymond',
		'Carver',
		1989,
		12,
		526
	),
	('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
	(
		'Cannery Row',
		'John',
		'Steinbeck',
		1945,
		95,
		181
	),
	(
		'Oblivion: Stories',
		'David',
		'Foster Wallace',
		2004,
		172,
		329
	),
	(
		'Consider the Lobster',
		'David',
		'Foster Wallace',
		2005,
		92,
		343
	);

-- CONCATS and SUBSTRINGS
SELECT
	CONCAT('Author name: ', author_fname, ' ', author_lname) AS Full_name
FROM
	books;

SELECT
	CONCAT_WS(' ', 'Author name:', author_fname, author_lname) AS Full_name
FROM
	books;
-- With separator ^, use the first argument as a parameter that separates everything

SELECT
	SUBSTRING(title, 1, 15)
FROM
	books;

SELECT
	CONCAT(
		'Book unique id generated: ',
		SUBSTRING(title, 1, 2),
		SUBSTRING(author_fname, 1, 2),
		released_year,
		pages
	)
FROM
	books;

SELECT
	CONCAT(
		SUBSTRING(title, 1, 2),
		SUBSTRING(author_fname, 1, 2),
		released_year,
		pages
	) AS 'unique_code'
FROM
	books;

SELECT
	CONCAT(SUBSTR(title, 1, 10), '...') AS 'short_title'
FROM
	books;

SELECT
	CONCAT_WS(
		'.',
		SUBSTR(author_fname, 1, 1),
		SUBSTR(author_lname, 1, 1)
	) AS 'author_initials'
FROM
	books;


-- Replace
SELECT REPLACE('cheese bread milk coffee', ' ', ' and ');

SELECT REPLACE(title, ' ', '-') FROM books;


-- Reverse

SELECT REVERSE(author_fname) FROM books;

SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books; -- Palindrome

-- Char_length -> number of chars and length -> number in bytes

SELECT CHAR_LENGTH(title), title FROM books;

-- Upper and lower
SELECT UPPER('Hello World');
SELECT LOWER('Hello World');
SELECT UCASE('Hello World');
SELECT LCASE('Hello World');

SELECT CONCAT_WS(' ', 'I LOVE', UPPER(title), '!!!') FROM books;

-- Insert(StringToBeInserted, WhichCharFrom, HowManyCharsReplacing, StringToInsert)

SELECT INSERT('Hello Bobby', 6, 0, ' There');
SELECT INSERT('Hello Bobby', 6, 4, ' There');
SELECT INSERT('Hello Bobby', 6, 6, ' There');

-- Left/Right gets the left/right most number of chars

SELECT LEFT('omghahajkLol', 3);
SELECT RIGHT('omghahajkLol', 3);

-- Repeat(stringToBeRepeated, NOF(number of times) repeated)

SELECT REPEAT('ha', 4);

-- TRIM(stringToBeTrimmed), removes all the white spaces left and right to the string, do not remove spaces in the middle

SELECT TRIM('           nossa          que         ');
SELECT TRIM(LEADING '.' FROM '.........nossa.....que...'); -- Only removes leading .
SELECT TRIM(TRAILING '.' FROM '.........nossa.....que...'); -- Only removes trailing .
SELECT TRIM(BOTH '.' FROM '.........nossa.....que...'); -- Removes both .W

-- STR function exercises

SELECT UPPER(REVERSE('why does my cat look at me with such hatred'));

SELECT REPLACE(title, ' ', '->') FROM books;

SELECT author_lname AS 'forwards', REVERSE(author_lname) AS 'backwards' FROM books;

SELECT CONCAT_WS(' ', UPPER(author_fname), UPPER(author_lname)) AS 'full name in caps' FROM books;

SELECT CONCAT_WS(' ', title, 'was released in', released_year) AS 'blurb' FROM books;

SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title', 
	   CONCAT_WS(',', author_lname, author_fname) AS 'author', 
	   CONCAT_WS(' ', stock_quantity, 'in stock') AS 'quantity' 
	   FROM books;

