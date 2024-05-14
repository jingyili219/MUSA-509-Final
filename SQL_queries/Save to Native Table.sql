CREATE OR REPLACE TABLE `data_lake.census_2022_V2`
CLUSTER BY (WKT_geometry)
AS(
  SELECT *
  FROM `data_lake.census_2022_V2 `
)