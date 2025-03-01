/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT category.name, Count(language.name) as "sum"
FROM category
JOIN film_category USING (category_id)
JOIN film using (film_id)
JOIN language USING (language_id)
GROUP BY category.name
ORDER BY category.name ASC;
