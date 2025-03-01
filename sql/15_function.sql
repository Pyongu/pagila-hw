/*
 * Use a JOIN to count the number films in each category in the specified language.
 * Use table category, film_category, film, and language.
 */
CREATE OR REPLACE FUNCTION category_counts_by_language(lang TEXT) RETURNS TABLE(name TEXT, count BIGINT) AS
$$
SELECT category.name, Count(language.name) as "sum"
FROM category
JOIN film_category USING (category_id)
JOIN film using (film_id)
JOIN language USING (language_id)
WHERE language.name = lang
GROUP BY category.name
ORDER BY category.name ASC;
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT * FROM category_counts_by_language('English');
SELECT * FROM category_counts_by_language('Italian');
SELECT * FROM category_counts_by_language('Japanese');
SELECT * FROM category_counts_by_language('Mandarin');
SELECT * FROM category_counts_by_language('French');
SELECT * FROM category_counts_by_language('German');
SELECT * FROM category_counts_by_language('Latin');
