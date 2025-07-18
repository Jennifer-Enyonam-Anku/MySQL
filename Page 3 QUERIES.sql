-- 🔷 Page 3: Awards Analysis

	-- Q1.🏆 Total Awards Won (Card)
SELECT COUNT(*) AS total_awards
FROM PersonAwards
WHERE won = TRUE;

	-- Q2.📈 Total Nominations (Not Won) (Card)
SELECT COUNT(*) AS total_nominations
FROM PersonAwards
WHERE won = FALSE;

	-- Q3.👤 Most Awarded Celebrity (Card)
SELECT p.full_name, COUNT(*) AS wins
FROM PersonAwards pa
JOIN People p ON pa.person_id = p.person_id
WHERE won = TRUE
GROUP BY p.full_name
ORDER BY wins DESC
LIMIT 1;

	-- Q4.💼 Most Recognized Industry (By Award Count) (Card)
SELECT work_type, COUNT(*) AS total_awards
FROM Personawards
WHERE won = TRUE 
GROUP BY work_type
ORDER BY total_awards DESC
LIMIT 1;

	-- Q5.🚫 Most Common Awarding Body (Card)
SELECT awarding_body, COUNT(*) AS award_count
FROM PersonAwards
GROUP BY awarding_body
ORDER BY award_count DESC
LIMIT 1;


	-- Q6.🧑‍🎤 Awards per industry (Horizontal Bar Chart)
SELECT work_type, COUNT(*) AS total_awards
FROM Personawards
WHERE won = TRUE 
GROUP BY work_type
ORDER BY total_awards DESC;

	-- Q7.💰 Awards distribution by category 
SELECT award_category, COUNT(won) AS `total awards`
FROM personAwards
WHERE won = TRUE
GROUP BY award_category
ORDER BY COUNT(won) DESC;

	-- Q8. Awards won distribution by gender 
SELECT p.gender, COUNT(DISTINCT a.person_id) AS `total awards`
FROM Personawards AS a
JOIN People AS p ON a.person_id = p.person_id
WHERE won = TRUE
GROUP BY p.gender
ORDER BY `total awards` DESC;

	-- Q9. Awards by awarding body
SELECT awarding_body, COUNT(award_id) AS `total awards given`
FROM personawards
GROUP BY awarding_body
ORDER BY  `total awards given` DESC
LIMIT 10;

	-- Q10.👤 Top 5 Most Awarded Celebrities ()
SELECT p.full_name, COUNT(*) AS wins
FROM PersonAwards pa
JOIN People p ON pa.person_id = p.person_id
WHERE won = TRUE
GROUP BY p.full_name
ORDER BY wins DESC
LIMIT 5;

