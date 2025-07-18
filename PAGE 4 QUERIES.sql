-- 🔷 Page 4: Revenue Analysis

	-- Q1.💰 Total Movie Revenue (card)
SELECT ROUND(SUM(revenue_million_aud), 2) AS total_movie_revenue
FROM Movies
WHERE revenue_million_aud IS NOT NULL;

	-- Q2.🎵 Total Music Revenue (Card)
SELECT ROUND(SUM(revenue_million_aud), 2) AS total_music_revenue
FROM Music
WHERE revenue_million_aud IS NOT NULL;

	-- Q3.📈 Highest Grossing Movie (Card)
SELECT title, revenue_million_aud
FROM Movies
WHERE revenue_million_aud IS NOT NULL
ORDER BY revenue_million_aud DESC
LIMIT 1;

	-- Q4.🎧 Highest Grossing Music Work (Card)
SELECT title, revenue_million_aud
FROM Music
WHERE revenue_million_aud IS NOT NULL
ORDER BY revenue_million_aud DESC
LIMIT 1;

	-- Q5.🎭 Most Profitable Celebrity (Movies + Music)
SELECT 
  p.full_name,
  ROUND(
    IFNULL(SUM(CASE WHEN w.work_type = 'movie' THEN m.revenue_million_aud ELSE 0 END), 0) +
    IFNULL(SUM(CASE WHEN w.work_type = 'music' THEN mu.revenue_million_aud ELSE 0 END), 0), 
    2
  ) AS total_revenue
FROM People p
JOIN Contributions c ON p.person_id = c.person_id
JOIN Work w ON c.work_id = w.work_id
LEFT JOIN Movies m ON w.movie_id = m.movie_id
LEFT JOIN Music mu ON w.music_id = mu.music_id
GROUP BY p.full_name
ORDER BY total_revenue DESC
LIMIT 1;

	-- Q6. Revenue distribution by gender for movies
SELECT p.gender, ROUND(AVG(m.revenue_million_aud),2) AS `avg revenue`
FROM people AS p
JOIN contributions AS c ON p.person_id = c.person_id
JOIN work AS w ON c.work_id = w.work_id
JOIN movies AS m ON m.title = w.title
GROUP BY p.gender
ORDER BY `avg revenue` DESC;

	-- Q7. avg revenue distribution by gender for music
SELECT p.gender, ROUND(AVG(m.revenue_million_aud),2) AS `avg revenue`
FROM people AS p
JOIN contributions AS c ON p.person_id = c.person_id
JOIN work AS w ON c.work_id = w.work_id
JOIN music AS m ON m.title = w.title
GROUP BY p.gender
ORDER BY `avg revenue` DESC;

	-- Q8. Which genre of music generates the most revenue
SELECT type, genre, AVG(revenue_million_aud) AS `avg revenue`
FROM  music
GROUP BY type, genre
ORDER BY type, `avg revenue` DESC
LIMIT 1;

	-- Q9. Trend of revenue for movies and music by year
SELECT release_year, ROUND(SUM(revenue_million_aud), 1) AS total_revenue_million_aud, "music" AS media_type
FROM music
GROUP BY release_year
UNION
SELECT release_year, ROUND(SUM(revenue_million_aud), 1) AS total_revenue_million_aud, "movies" AS media_type
FROM movies
GROUP BY release_year, media_type
HAVING ROUND(SUM(revenue_million_aud), 1) IS NOT NULL
ORDER BY release_year,media_type;