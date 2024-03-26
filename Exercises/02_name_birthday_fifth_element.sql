-- 2. The names and birthdays of actors in "The Fifth Element"
-- Order the results alphabetically (A-Z) by name.
-- (15 rows)
select person_name, birthday
from person
join movie_actor on person.person_id = movie_actor.actor_id
where movie_id = 18
order by person_name asc