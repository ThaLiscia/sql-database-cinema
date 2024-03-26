-- 7. The genres of movies that Christopher Lloyd has appeared in, sorted alphabetically.
-- (8 rows) Hint: DISTINCT will prevent duplicate values in your query results.


--SELECT person.person_name, genre.genre_name
--FROM person
--JOIN movie_actor using (actor_id)
--JOIN movie_genre using (movie_id)
--JOIN genre using (genre_id)
--WHERE person_name = 'Christopher Lloyd'

--SELECT DISTINCT person.person_name, genre.genre_name
SELECT DISTINCT genre.genre_name
FROM person
JOIN movie_actor on person.person_id = movie_actor.actor_id
JOIN movie_genre on movie_actor.movie_id = movie_genre.movie_id
JOIN genre on movie_genre.genre_id = genre.genre_id
WHERE person_name = 'Christopher Lloyd'
ORDER BY genre_name ASC


--SELECT person_name, person_id FROM person WHERE person_name = 'Christopher Lloyd' person_id = 1062
