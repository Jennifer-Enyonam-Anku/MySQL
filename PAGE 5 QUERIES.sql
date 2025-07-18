-- 🔷 Page 5: Time-Based Trends

	-- Q1.🕰️ Earliest Work Year (card)
SELECT MIN(year_created) AS earliest_year FROM Work;

	-- Q2.📅 Most Productive Year (All Work Types Combined) (Card)
SELECT year_created, COUNT(*) AS total_works
FROM Work
GROUP BY year_created
ORDER BY total_works DESC
LIMIT 1;

	-- Q3.📈 Year with Highest Movie Revenue (Card)
SELECT release_year, ROUND(SUM(revenue_million_aud), 1) AS total_revenue
FROM Movies
GROUP BY release_year
ORDER BY total_revenue DESC
LIMIT 1;

	-- Q4.🎶 Year with Highest Music Revenue (Card)
SELECT release_year, ROUND(SUM(revenue_million_aud), 1) AS total_music_revenue
FROM Music
WHERE revenue_million_aud IS NOT NULL
GROUP BY release_year
ORDER BY total_music_revenue DESC
LIMIT 1;

	-- Q5.🏆 Year with Most Awards Won (Card)
SELECT award_year, COUNT(*) AS total_awards
FROM PersonAwards
WHERE won = TRUE
GROUP BY award_year
ORDER BY total_awards DESC
LIMIT 1;

	-- Q6. Work release by decades
SELECT CONCAT(FLOOR(year_created/10)*10, 's') AS decade, COUNT(*) AS total_work
FROM Work
GROUP BY decade
ORDER BY decade;

	-- Q7. Awards over decades
SELECT CONCAT(FLOOR(award_year/10)*10, 's') AS decade, COUNT(*) AS total_awards
FROM Personawards
GROUP BY decade
ORDER BY decade;

	-- Q8. Trend of work_type quantity by year (movie)
SELECT release_year, COUNT(*) AS movies_released
FROM Movies
GROUP BY release_year
ORDER BY release_year;

-- Q9. Trend of work_type quantity by year (music)
SELECT release_year, COUNT(*) AS music_released
FROM Music
GROUP BY release_year
ORDER BY release_year;

-- Q10. Trend of work_type quantity by year (comedy)
SELECT year_performed, COUNT(*) AS shows_performed
FROM Comedy
GROUP BY year_performed
ORDER BY year_performed;

-- Q12. Trend of work_type quantity by year (fashion)
SELECT year_featured, COUNT(*) AS fashion_features
FROM Fashion
GROUP BY year_featured
ORDER BY year_featured;

-- Q13. Trend of work_type quantity by year (broadcasting)
SELECT year_started, COUNT(*) AS broadcasting_shows_aired
FROM Broadcasting
GROUP BY year_started
ORDER BY year_started;