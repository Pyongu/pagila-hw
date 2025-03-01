/*
 * Find the actor_id of every actor whose first name starts with 'j'.
 * Order the results from low to hi.
 */
SELECT actor_id FROM actor
WHERE first_name ILIKE 'j%'
Order BY actor_id ASC;
