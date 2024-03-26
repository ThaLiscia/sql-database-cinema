-- 8. The genres of movies that Robert De Niro has appeared in that were released in 2010 or later, sorted alphabetically.
-- (6 rows)

--SELECT * FROM person WHERE person_name = 'Robert De Niro' 
--person_id 380

--SELECT DISTINCT person.person_name, genre.genre_name
SELECT DISTINCT genre.genre_name
FROM person
JOIN movie_actor on person.person_id = movie_actor.actor_id
JOIN movie on movie_actor.movie_id = movie.movie_id
JOIN movie_genre on movie.movie_id = movie_genre.movie_id
JOIN genre on movie_genre.genre_id = genre.genre_id
WHERE person_name = 'Robert De Niro' AND movie.release_date >= '2010-01-01'
ORDER BY genre_name ASC