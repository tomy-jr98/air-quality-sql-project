CREATE OR REPLACE TABLE integral-linker-460909-h5.sql_project.categorized_pm25 AS
SELECT *,
  CASE
    WHEN value > 250 THEN 'Hazardous'
    WHEN value > 150 THEN 'Unhealthy'
    WHEN value > 100 THEN 'Moderate'
    ELSE 'Good'
  END AS air_quality_category
FROM
  integral-linker-460909-h5.sql_project.filtered_pm25;
