-- COUNT
SELECT COUNT(*) FROM books; -- Counts all the rows in table books

SELECT COUNT(author_fname) FROM books; -- Counts all the rows with a present non-null author_fname
SELECT COUNT(DISTINCT author_fname) FROM books; -- Counts all the distinct author_fname

SELECT COUNT(released_year) FROM books;
SELECT COUNT(DISTINCT released_year) FROM books;

SELECT COUNT(DISTINCT author_lname) FROM books;

SELECT title FROM books WHERE title LIKE '%the%';
SELECT COUNT(*) FROM books WHERE title LIKE '%the%'; -- Count the rows where the title have the word "the"

--

-- GROUP BY

SELECT COUNT(*) FROM books;

SELECT author_lname, COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written DESC;

SELECT released_year FROM books;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year ORDER BY released_year DESC;
SELECT released_year, COUNT(*) FROM books GROUP BY released_year ORDER BY COUNT(*) DESC;

-- MIN and MAX

SELECT MIN(released_year) FROM books;
SELECT MAX(pages) FROM books;

SELECT MIN(author_lname), MAX(author_lname) FROM books;

-- 

-- Subqueries

SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books); -- in this case, WHERE pages = 634, if there's another book with 634, it'll show both

SELECT title, released_year FROM books WHERE released_year = (SELECT MIN(released_year) FROM books);

--

-- Group By, multiple columns

SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS author, COUNT(*) FROM books, GROUP BY author

SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_fname, author_lname;
SELECT author_fname, author_lname, MIN(released_year), MAX(released_year) FROM books GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, 
    COUNT(*) AS books_written,
    MAX(released_year) AS 'latest released',
    MIN(released_year) AS 'earliest released'
FROM books GROUP BY author_lname, author_fname;

--

-- SUM

SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author name', 
       SUM(PAGES) AS 'Total pages written' 
       FROM books 
       GROUP BY author_fname, author_lname;

--

-- AVG

SELECT released_year, AVG(stock_quantity) AS 'Average stock quantity', COUNT(*) FROM books GROUP BY released_year ORDER BY released_year DESC;

--

-- Exercise Agg. Functions

SELECT released_year, COUNT(*) AS 'Quantidade livros lançado no ano' FROM books GROUP BY released_year ORDER BY released_year DESC;
SELECT COUNT(book_id) AS 'quantidade de livros' FROM books;
SELECT CONCAT_WS(' ', author_fname, author_lname) AS 'author name', AVG(released_year) FROM Books GROUP BY author_fname, author_lname;

SELECT SUM(stock_quantity) FROM books;

SELECT 
    CONCAT_WS(' ', author_fname, author_lname) AS 'Author name of the longest book', 
    title, 
    pages 
    FROM books 
    WHERE pages = (SELECT MAX(pages) FROM books);

--

