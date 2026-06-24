SELECT attrition, COUNT(*) AS total,
ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM attrition
GROUP BY attrition;

SELECT department, attrition, COUNT(*) AS total
FROM attrition
GROUP BY department, attrition
ORDER BY department;

SELECT
  CASE
    WHEN age < 25 THEN 'Under 25'
    WHEN age BETWEEN 25 AND 34 THEN '25-34'
    WHEN age BETWEEN 35 AND 44 THEN '35-44'
    ELSE '45+'
  END AS age_group,
  attrition, COUNT(*) AS total
FROM attrition
GROUP BY age_group, attrition
ORDER BY age_group;

SELECT
  CASE
    WHEN monthlyincome < 3000 THEN 'Low'
    WHEN monthlyincome BETWEEN 3000 AND 7000 THEN 'Mid'
    ELSE 'High'
  END AS income_bracket,
  attrition, COUNT(*) AS total
FROM attrition
GROUP BY income_bracket, attrition
ORDER BY income_bracket;

SELECT overtime, attrition, COUNT(*) AS total
FROM attrition
GROUP BY overtime, attrition
ORDER BY overtime;

SELECT jobsatisfaction, attrition, COUNT(*) AS total
FROM attrition
GROUP BY jobsatisfaction, attrition
ORDER BY jobsatisfaction;

SELECT attrition, ROUND(AVG(yearsatcompany), 1) AS avg_years
FROM attrition
GROUP BY attrition;