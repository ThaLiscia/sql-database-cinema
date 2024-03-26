-- 9. The titles of movies directed by James Cameron, sorted alphabetically.
-- (6 rows)

--SELECT DISTINCT person.person_name, movie.title
SELECT DISTINCT movie.title
FROM movie
JOIN person ON movie.director_id = person.person_id
WHERE person_name = 'James Cameron'
ORDER BY movie.title ASC

