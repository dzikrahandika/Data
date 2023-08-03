/* SELECT CASE function

SELECT title, price, 
	CASE
		WHEN price > 22.50 THEN 'Expensive'
		WHEN price BETWEEN 12.50 AND 22.50 THEN 'Moderate'
		WHEN price < 12.50 THEN 'Cheap'
	END AS price_category
FROM Book
ORDER BY price DESC;

*/



/*
Utilizing COUNT and GROUP BY functions to count the number of books from each genre

SELECT Genres.genre_name, COUNT(title) AS TotalCount
FROM Book
JOIN Genres ON Book.genre_id = Genres.genre_id
GROUP BY Genres.genre_name;
*/


/*
Utilizing COUNT and GROUP BY functions to count the number of books from each genre
SELECT Authors.author_name, COUNT(title) AS TotalCount
FROM Authors
JOIN Book ON Authors.author_id = Book.author_id
GROUP BY Authors.author_name
ORDER BY TotalCount DESC
LIMIT 5;
*/


/* Using ROUND function to round the number of the price from each genre
SELECT Genres.genre_name, ROUND(AVG(price),2) as AveragePrice
FROM Genres
JOIN Book ON Genres.genre_id = Book.genre_id
GROUP BY Genres.genre_name;
*/

