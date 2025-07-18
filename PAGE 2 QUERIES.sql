-- 🔷 Page 2: Career & Cross-Industry Analysis

	-- Q1.🎭 Most Versatile Celebrity (Card)
SELECT full_name, (is_actor + is_musician + is_comedian + is_model + is_broadcaster) AS role_count
FROM People
ORDER BY role_count DESC;
-- LIMIT 1;

	-- Q2.👯 Most Frequent Role Pair (Card)
SELECT role_pair, pair_count
FROM (
  SELECT 'Actor + Musician' AS role_pair, COUNT(*) AS pair_count
  FROM People
  WHERE is_actor = TRUE AND is_musician = TRUE

  UNION ALL

  SELECT 'Actor + Comedian', COUNT(*)
  FROM People
  WHERE is_actor = TRUE AND is_comedian = TRUE

  UNION ALL

  SELECT 'Actor + Model', COUNT(*)
  FROM People
  WHERE is_actor = TRUE AND is_model = TRUE

  UNION ALL

  SELECT 'Actor + Broadcaster', COUNT(*)
  FROM People
  WHERE is_actor = TRUE AND is_broadcaster = TRUE

  UNION ALL

  SELECT 'Musician + Comedian', COUNT(*)
  FROM People
  WHERE is_musician = TRUE AND is_comedian = TRUE

  UNION ALL

  SELECT 'Musician + Model', COUNT(*)
  FROM People
  WHERE is_musician = TRUE AND is_model = TRUE

  UNION ALL

  SELECT 'Musician + Broadcaster', COUNT(*)
  FROM People
  WHERE is_musician = TRUE AND is_broadcaster = TRUE

  UNION ALL

  SELECT 'Comedian + Model', COUNT(*)
  FROM People
  WHERE is_comedian = TRUE AND is_model = TRUE

  UNION ALL

  SELECT 'Comedian + Broadcaster', COUNT(*)
  FROM People
  WHERE is_comedian = TRUE AND is_broadcaster = TRUE

  UNION ALL

  SELECT 'Model + Broadcaster', COUNT(*)
  FROM People
  WHERE is_model = TRUE AND is_broadcaster = TRUE
) AS pair_counts
ORDER BY pair_count DESC
LIMIT 1;

	-- Q3.🔀 Total Unique Career Role Combos(Card)
SELECT COUNT(*) AS unique_combinations
FROM (
  SELECT DISTINCT is_actor, is_musician, is_comedian, is_model, is_broadcaster
  FROM People
) AS combo;

	-- Q4.🔀 Average Age of Multi-Role Celebrities (Card)
SELECT ROUND(AVG(YEAR(CURDATE()) - birth_year), 1) AS avg_age_multirole
FROM People
WHERE (is_actor + is_musician + is_comedian + is_model + is_broadcaster) > 1;

	-- Q5.🧩 Most Versatile Celebrities (Top 5) – Column or Table Chart
SELECT 
  full_name, 
  gender,
  (is_actor + is_musician + is_comedian + is_model + is_broadcaster) AS role_count
FROM People
ORDER BY role_count DESC, full_name;

	-- Q6.🧩 Gender Distribution Across Professions Stacked Column Chart or Clustered Bar Chart
SELECT 'Actor' AS profession, gender, COUNT(*) AS total_celebrities
FROM People
WHERE is_actor = TRUE
GROUP BY gender

UNION ALL

SELECT 'Musician', gender, COUNT(*)
FROM People
WHERE is_musician = TRUE
GROUP BY gender

UNION ALL

SELECT 'Comedian', gender, COUNT(*)
FROM People
WHERE is_comedian = TRUE
GROUP BY gender

UNION ALL

SELECT 'Model', gender, COUNT(*)
FROM People
WHERE is_model = TRUE
GROUP BY gender

UNION ALL

SELECT 'Broadcaster', gender, COUNT(*)
FROM People
WHERE is_broadcaster = TRUE
GROUP BY gender;

	-- Q7.‍🎤 Decade that produces the most sucessful people (Vertical Column Chart)
SELECT 
    CONCAT(FLOOR(p.birth_year / 10) * 10, 's') AS birth_decade,
    COUNT(DISTINCT p.person_id) AS successful_people_count,
    COUNT(a.award_id) AS total_awards_won,
    ROUND(COUNT(a.award_id) / COUNT(DISTINCT p.person_id), 1) AS avg_awards_per_person
FROM People p
JOIN PersonAwards a ON p.person_id = a.person_id
WHERE a.won = TRUE
    AND p.birth_year BETWEEN 1940 AND 2000  -- Focusing on relevant decades
GROUP BY birth_decade
ORDER BY successful_people_count DESC, total_awards_won DESC;

	-- Q8. People who appear in high grossing movies and hit music
SELECT p.full_name
FROM People p
WHERE p.person_id IN (
    SELECT DISTINCT c.person_id
    FROM Contributions c
    JOIN Work w ON c.work_id = w.work_id
    JOIN Movies m ON w.movie_id = m.movie_id
    WHERE m.revenue_million_aud > 100
)
AND p.person_id IN (
    SELECT DISTINCT c.person_id
    FROM Contributions c
    JOIN Work w ON c.work_id = w.work_id
    JOIN Music mu ON w.music_id = mu.music_id
    WHERE mu.is_hit = TRUE
);

-- Q8. Percentage of Multi-Role Celebrities (card)
SELECT 
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM People), 1) AS percent_multi_role
FROM People
WHERE (is_actor + is_musician + is_comedian + is_model + is_broadcaster) > 1;
