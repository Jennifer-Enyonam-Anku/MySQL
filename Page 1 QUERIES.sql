-- 🔷 Page 1: Executive Summary – SQL Queries

	-- Q1.🧑‍🎤 Total Famous People (Card)
SELECT COUNT(*) AS total_people
FROM People;

	-- Q2.🔁 Number of Cross-Industry Individuals (Card)
SELECT COUNT(*) AS multi_role_people 
FROM People 
WHERE (is_actor + is_musician + is_comedian + is_model + is_broadcaster) > 1;

	-- Q3.💰 Total Industry Revenue (Card)
SELECT 
  ROUND((SELECT SUM(revenue_million_aud) FROM Movies WHERE revenue_million_aud IS NOT NULL) +
  (SELECT SUM(revenue_million_aud) FROM Music WHERE revenue_million_aud IS NOT NULL), 2) 
  AS total_industry_revenue;

	-- Q4.🎭 Most Represented Profession (Card)
SELECT role, count FROM (
  SELECT 'Actor' AS role, COUNT(*) AS count FROM People WHERE is_actor = TRUE
  UNION
  SELECT 'Musician' AS role, COUNT(*) FROM People WHERE is_musician = TRUE
  UNION
  SELECT 'Comedian' AS role, COUNT(*) FROM People WHERE is_comedian = TRUE
  UNION
  SELECT 'Model' AS role, COUNT(*) FROM People WHERE is_model = TRUE
  UNION
  SELECT 'Broadcaster' AS role, COUNT(*) FROM People WHERE is_broadcaster = TRUE
) AS role_counts
ORDER BY count DESC
LIMIT 1;

	-- Q5.🎭 Gender Breakdown (Donut or Bar Chart)
SELECT gender, COUNT(*) AS total
FROM People
GROUP BY gender;

	-- Q6.🎭 Industry Role Distribution (Stacked Column or Treemap)
SELECT role, count FROM (
  SELECT 'Actor' AS role, COUNT(*) AS count FROM People WHERE is_actor = TRUE
  UNION
  SELECT 'Musician' AS role, COUNT(*) FROM People WHERE is_musician = TRUE
  UNION
  SELECT 'Comedian' AS role, COUNT(*) FROM People WHERE is_comedian = TRUE
  UNION
  SELECT 'Model' AS role, COUNT(*) FROM People WHERE is_model = TRUE
  UNION
  SELECT 'Broadcaster' AS role, COUNT(*) FROM People WHERE is_broadcaster = TRUE
) AS role_counts
ORDER BY count DESC;

	-- Q7.🎭 Top 5 Celebrities with the Most Work Credits (Horizontal Bar Chart)
SELECT p.full_name, COUNT(c.contribution_id) AS total_contributions
FROM Contributions c
JOIN People p ON c.person_id = p.person_id
GROUP BY p.full_name
ORDER BY total_contributions DESC
LIMIT 5;

	-- Q8.🎭 Work Type Distribution (Column Chart)
SELECT 
  CASE 
    WHEN work_type = 'movie' THEN 'Film'
    WHEN work_type = 'music' THEN 'Music'
    WHEN work_type = 'comedy' THEN 'Comedy'
    WHEN work_type = 'fashion' THEN 'Fashion'
    WHEN work_type = 'broadcasting' THEN 'TV/Radio'
    ELSE 'Other'
  END AS domain,
  COUNT(*) AS contribution_count
FROM Work
GROUP BY domain
ORDER BY contribution_count DESC;

	-- Q9.🎭 Industry Domain Growth Over Time (Stacked Column Chart)
SELECT 
  year_created, 
  work_type, 
  COUNT(*) AS total_projects
FROM Work
GROUP BY year_created, work_type
ORDER BY year_created, work_type;




