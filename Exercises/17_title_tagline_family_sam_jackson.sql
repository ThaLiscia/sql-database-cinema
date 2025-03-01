-- 17. The titles and taglines of movies that are in the "Family" genre that Samuel L. Jackson has acted in.
-- Order the results alphabetically by movie title.
-- (4 rows)
--SELECT movie.title, movie.tagline, genre.genre_name
SELECT movie.title, movie.tagline
FROM movie
JOIN movie_actor ON movie.movie_id = movie_actor.movie_id
JOIN person ON movie_actor.actor_id = person.person_id
JOIN movie_genre ON movie_actor.movie_id = movie_genre.movie_id
JOIN genre ON movie_genre.genre_id = genre.genre_id
WHERE person.person_name = 'Samuel L. Jackson'
AND genre.genre_name = 'Family'
ORDER BY movie.title ASC
