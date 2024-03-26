-- 13. The directors of the movies in the "Harry Potter Collection", sorted alphabetically.
-- (4 rows)

SELECT DISTINCT person.person_name
FROM movie
JOIN collection ON movie.collection_id = collection.collection_id
JOIN person ON movie.director_id = person.person_id
WHERE collection.collection_name = 'Harry Potter Collection'
ORDER BY person.person_name ASC