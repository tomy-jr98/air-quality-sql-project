CREATE OR REPLACE TABLE integral-linker-460909-h5.sql_project.monthly_summary_pm25 AS
SELECT
  country,
  city,
  EXTRACT(YEAR FROM timestamp) AS year,
  EXTRACT(MONTH FROM timestamp) AS month,
  AVG(value) AS avg_pm25,
  COUNT(*) AS total_readings,
  air_quality_category
FROM
  integral-linker-460909-h5.sql_project.categorized_pm25
GROUP BY
  country, city, year, month, air_quality_category
ORDER BY
  avg_pm25 DESC;
