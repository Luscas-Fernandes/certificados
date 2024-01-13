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
    ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
    ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
    ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- DISTINCT clause, doesn't show duplicates

SELECT author_lname FROM books;
SELECT DISTINCT author_lname FROM books;

SELECT DISTINCT CONCAT_WS(' ', author_fname, author_lname) AS 'distinct full names' FROM books;
SELECT DISTINCT author_fname, author_lname FROM books; -- show the distinct combination of names

SELECT DISTINCT author_fname, author_lname, released_year FROM books;
--

SELECT * FROM books;

-- ORDER BY 

-- If null, null comes first in order by. Ascending by default, A-Z
-- If u want to change to Descending order, after ORDER BY 
-- can use DESC (NOT AS IN DESCRIBE, but descending order)
-- ORDER BY argument_here DESC (Z-A)

SELECT DISTINCT author_lname FROM books ORDER BY author_lname;
SELECT DISTINCT book_id, author_fname, author_lname FROM books ORDER BY author_lname;
SELECT DISTINCT book_id, author_fname, author_lname FROM books ORDER BY author_fname;

SELECT DISTINCT book_id, author_fname, author_lname FROM books ORDER BY author_lname DESC;
SELECT DISTINCT book_id, author_fname, author_lname FROM books ORDER BY author_fname DESC;

SELECT title, pages FROM books ORDER BY pages;
SELECT CONCAT(SUBSTR(title, 1, 10), '...'), pages, stock_quantity FROM books ORDER BY stock_quantity;
SELECT title, pages FROM books ORDER BY released_year;

SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY pages;
SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY 4 DESC; -- 4th argument (pages)

SELECT author_lname, released_year, title FROM books ORDER BY author_lname;
SELECT author_lname, released_year, title FROM books ORDER BY author_lname, released_year;
SELECT author_lname, released_year, title FROM books ORDER BY author_lname, released_year DESC;
SELECT author_lname, released_year, title FROM books ORDER BY author_lname DESC, released_year DESC;

SELECT DISTINCT CONCAT_WS(' ', author_fname, author_lname) AS 'Fullname' FROM books ORDER BY Fullname;
--

-- LIMIT

SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 5;
SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 1,5;
SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 2,5;
SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 3,2; -- Starting row, count (how many)
--

-- LIKE, searching

SELECT title, author_fname, author_lname FROM books WHERE author_fname='David';
SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%';
SELECT * FROM books WHERE title LIKE '%:%';
SELECT * FROM books WHERE author_fname LIKE '____'; -- 4 underscores, author_fname with 4chars
SELECT * FROM books WHERE author_fname LIKE '_____'; -- 5 underscores, author_fname with 5chars
SELECT * FROM books WHERE author_fname LIKE '%n'; -- ends with n
SELECT * FROM books WHERE title LIKE '%\%%';
SELECT * FROM books WHERE title LIKE '%\_%';

-- Exercise

SELECT * FROM books WHERE title LIKE '%stories%';

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT CONCAT_WS(' - ', title, released_year) AS 'summary' FROM books ORDER BY released_year DESC LIMIT 3;

SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity, released_year DESC LIMIT 3;

SELECT title, author_lname FROM books ORDER BY author_lname, title;

SELECT UPPER(CONCAT_WS(' ', 'my favorite author is', author_fname, author_lname, '!')) AS 'yell' FROM books ORDER BY author_lname;
