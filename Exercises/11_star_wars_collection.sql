-- 11. The titles of the movies in the "Star Wars Collection" ordered by release date, most recent first. 
-- (9 rows)

SELECT movie.title, movie.release_date
--SELECT movie.title
FROM movie
JOIN collection ON movie.collection_id = collection.collection_id
WHERE collection.collection_name = 'Star Wars Collection'
ORDER BY release_date ASC