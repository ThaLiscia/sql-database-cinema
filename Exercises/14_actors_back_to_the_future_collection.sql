-- 14. The names of actors who've appeared in the movies in the "Back to the Future Collection", sorted alphabetically.
-- (28 rows)

--SELECT DISTINCT person.person_name, collection.collection_name 
SELECT DISTINCT person.person_name
FROM movie
JOIN collection ON movie.collection_id = collection.collection_id
JOIN movie_actor ON movie.movie_id = movie_actor.movie_id
JOIN person ON movie_actor.actor_id = person.person_id
WHERE collection.collection_name = 'Back to the Future Collection'
ORDER BY person.person_name ASC