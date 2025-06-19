-- to show all data
SELECT * FROM demo.climate_cleaned;

-- to show data for the first 10 years only
SELECT * FROM demo.climate_cleaned LIMIT 10;

-- to rename a column and remove hidden characters
alter table demo.climate_cleaned change column `ï»¿YEAR` `YEAR` INT;

-- to find the top 6 hottest years
SELECT YEAR, ANNUAL_MEAN FROM demo.climate_cleaned 
order by ANNUAL_MEAN DESC LIMIT 6;

-- to find average annual temp by decade
SELECT FLOOR(YEAR/10) * 10 AS decade, 
ROUND(AVG(ANNUAL_MEAN), 2) AS AVG_TEMP 
FROM demo.climate_cleaned
GROUP BY decade
ORDER BY decade;

-- to compare summer avg temperature vs monsoon avg temperature
SELECT YEAR, SUMMER_AVG, MONSOON_AVG,
(MONSOON_AVG - SUMMER_AVG ) AS difference
FROM demo.climate_cleaned 
WHERE SUMMER_AVG IS NOT NULL AND MONSOON_AVG IS NOT NULL
order by difference desc
LIMIT 10;

-- has winter_avg become warmer?
SELECT YEAR, WINTER_AVG 
FROM demo.climate_cleaned
order by YEAR;
