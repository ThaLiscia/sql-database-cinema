-- 6. The genres of "The Wizard of Oz" sorted in alphabetical order (A-Z).
-- (3 rows)

--select movie.title, genre.genre_name
--from movie
--join movie_genre on movie.movie_id = movie_genre.movie_id
--join genre on movie_genre.genre_id = genre.genre_id 
--where movie.movie_id = 630


SELECT genre.genre_name
from movie
JOIN movie_genre using (movie_id)
JOIN genre using (genre_id)
WHERE title = 'The Wizard of Oz'
ORDER BY genre_name asc