SELECT title, isbn
FROM book
INNER JOIN genre ON genre.genre_id = book.genre_id
WHERE genre.genre_id = 6;

SELECT book.title, author.first_name, author.last_name
FROM author
INNER JOIN book ON book.author_id = author.author_id
WHERE author.deathday IS NULL;

