-- 12. The titles of the movies in the "Star Wars Collection" that weren't directed by George Lucas, sorted alphabetically.
-- (5 rows)

SELECT movie.title, movie.release_date
--SELECT movie.title
FROM movie
JOIN collection ON movie.collection_id = collection.collection_id
WHERE collection.collection_name = 'Star Wars Collection' AND director_id != 1
ORDER BY movie.release_date ASC

--SELECT * FROM person WHERE person_name = 'George Lucas'
--person_id 1