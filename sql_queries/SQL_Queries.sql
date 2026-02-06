
 -- ============================================

--  Students Social Media Addiction Analysis - SQL
--  Author: Rehan Ashraf

--  ============================================



--  1. Screen Time vs Academic Performance

SELECT
  CASE
    WHEN Avg_Daily_Usage_Hours < 2 THEN 'LOW'
    WHEN Avg_Daily_Usage_Hours BETWEEN 2 AND 5 THEN 'MODERATE'
    ELSE 'HIGH'
  END AS usage_level,
  Affects_Academic_Performance,
  COUNT(*) AS student_count
FROM students_addiction
GROUP BY usage_level, Affects_Academic_Performance;





--  2. Screen Time vs Sleep

SELECT
  CASE
    WHEN Avg_Daily_Usage_Hours < 2 THEN 'LOW'
    WHEN Avg_Daily_Usage_Hours BETWEEN 2 AND 5 THEN 'MODERATE'
    ELSE 'HIGH'
  END AS usage_level,
  ROUND(AVG(Sleep_Hours_Per_Night), 2) AS avg_sleep_hours,
  COUNT(*) AS student_count
FROM students_addiction
GROUP BY usage_level;





--  3. Addiction Score vs Mental Health

SELECT
  CASE
    WHEN Addicted_Score <= 3 THEN 'LOW RISK'
    WHEN Addicted_Score BETWEEN 4 AND 6 THEN 'MEDIUM RISK'
    ELSE 'HIGH RISK'
  END AS addiction_risk,
  ROUND(AVG(Mental_Health_Score), 2) AS avg_mental_health,
  COUNT(*) AS student_count
FROM students_addiction
GROUP BY addiction_risk
ORDER BY addiction_risk;





--  4. Addiction vs Social Conflicts

SELECT
  CASE
    WHEN Addicted_Score <= 3 THEN 'LOW RISK'
    WHEN Addicted_Score BETWEEN 4 AND 6 THEN 'MEDIUM RISK'
    ELSE 'HIGH RISK'
  END AS addiction_risk,
  ROUND(AVG(Conflicts_Over_Social_Media), 2) AS avg_conflicts,
  COUNT(*) AS student_count
FROM students_addiction
GROUP BY addiction_risk
ORDER BY addiction_risk;





--  5. Platform-Wise Addiction Pattern

SELECT
  Most_Used_Platform,
  ROUND(AVG(Addicted_Score), 2) AS avg_addiction_score,
  COUNT(*) AS student_count
FROM students_addiction
GROUP BY Most_Used_Platform
ORDER BY avg_addiction_score DESC;




 -- 6. Gender vs Addiction & Usage

SELECT
  Gender,
  ROUND(AVG(Avg_Daily_Usage_Hours), 2) AS avg_daily_usage,
  ROUND(AVG(Addicted_Score), 2) AS avg_addiction_score,
  COUNT(*) AS student_count
FROM students_addiction
GROUP BY Gender;




--  7. Contry-Wise Addiction Pattern

SELECT
  Country,
  ROUND(AVG(Addicted_Score), 2) AS 
avg_addiction_score,
  COUNT(*) AS student_count
FROM students_addiction
GROUP BY Country
HAVING COUNT(*) >= 10
ORDER BY avg_addiction_score DESC;

