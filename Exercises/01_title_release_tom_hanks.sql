-- 1. The titles and release dates of movies that Tom Hanks has appeared in. 
-- Order the results by release date, newest to oldest.
-- (47 rows)
select title, release_date
from movie
join movie_actor using (movie_id)
where actor_id = 31 
ORDER BY release_date DESC