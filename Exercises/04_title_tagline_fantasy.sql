-- 4. The titles and taglines of all the movies that are in the Fantasy genre. 
-- Order the results by title (A-Z).
-- (81 rows)

SELECT title, tagline
FROM movie
JOIN movie_genre using (movie_id)
JOIN genre using (genre_id)
WHERE genre_name = 'Fantasy'
ORDER BY title asc