/*
Bookstore Data Exploration 
Skills used: Joins, Aliasing, Clauses (LIMIT, OFFSET, WHERE), and Length function
*/

/* Counting the total number of the books from the database using COUNT function
SELECT COUNT(title) AS TotalOfBooks
FROM Book;
*/

/* List the books with its title, author, price and sort them from the most expensive price using "JOIN" function and "ORDER BY" clause. 

SELECT Book.title, Authors.author_name, Book.price
FROM Book
JOIN Authors ON Book.author_id = Authors.author_id
ORDER BY price DESC;
*/

/* List the third most expensive book using LIMIT and OFFSET clause

SELECT title, price
FROM Book
ORDER BY price DESC
LIMIT 1 OFFSET 2;

*/


/* Selecting authors name whose book cost from $15 to $30

SELECT author_name FROM Authors
JOIN Book ON Authors.author_id = Book.author_id 
WHERE price BETWEEN 15 AND 30;
*/

/* Join function
SELECT Authors.author_id, Authors.author_name, LENGTH(Authors.author_name) as 'Authors Name Character', Book.title
FROM Authors
JOIN Book ON Authors.author_id = Book.author_id;
*/


