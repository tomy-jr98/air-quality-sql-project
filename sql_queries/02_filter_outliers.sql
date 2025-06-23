CREATE OR REPLACE TABLE integral-linker-460909-h5.sql_project.filtered_pm25 AS
SELECT *
FROM
  integral-linker-460909-h5.sql_project.cleaned_air_quality
WHERE
  pollutant = 'pm25'
  AND value BETWEEN 5 AND 500;
