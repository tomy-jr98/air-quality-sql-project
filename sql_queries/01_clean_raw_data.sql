CREATE OR REPLACE TABLE integral-linker-460909-h5.sql_project.cleaned_air_quality AS
SELECT DISTINCT
  location,
  city,
  country, 
  pollutant, 
  value, 
  timestamp, 
  unit,
  source_name, 
  latitude, 
  longitude, 
  averaged_over_in_hours
FROM `bigquery-public-data.openaq.global_air_quality`
WHERE value IS NOT NULL
  AND latitude IS NOT NULL
  AND longitude IS NOT NULL;
