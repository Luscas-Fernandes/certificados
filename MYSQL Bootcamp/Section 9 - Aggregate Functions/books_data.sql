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