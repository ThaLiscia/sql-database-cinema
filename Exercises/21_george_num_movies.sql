-- 21. For every person in the person table with the first name of "George", list the number of movies they've been in. Name the count column 'num_of_movies'.
-- Include all Georges, even those that have not appeared in any movies. Display the names in alphabetical order. 
-- (59 rows)

--select distinct * from person where person_name like 'George %' order by person_name asc

SELECT COUNT (movie.movie_id) AS num_of_movies, person.person_name
FROM person
LEFT JOIN movie_actor ON person.person_id = movie_actor.actor_id
LEFT JOIN movie ON movie_actor.movie_id = movie.movie_id
WHERE person.person_name like 'George %'
GROUP BY person.person_id, person.person_name
ORDER BY person.person_name

--*****Remember actor_id is the same as person_id*****
--*****director_id is the same as person_id*******