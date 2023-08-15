/* #List the titles of books that were published before the year 1950, along with their authors' names and publication years.
SELECT title, author_name, publication_year FROM Book
JOIN Authors ON Book.author_id = Authors.author_id
WHERE publication_year < 1950;
*/

# Find the top 3 genres that have the highest average book prices. Include the genre names and their corresponding average prices.

SELECT genre_name, ROUND(AVG(price), 2) AS AveragePrices
FROM Genres
JOIN Book ON Genres.genre_id = Book.genre_id
GROUP BY genre_name
ORDER BY AveragePrices DESC
LIMIT 3;

# Identify the most common publication year among the books. Show the publication year and the count of books published in that year.

SELECT publication_year, COUNT(book_id) AS TotalOfBooks
FROM Book
GROUP BY publication_year
ORDER BY TotalOfBooks DESC;  
