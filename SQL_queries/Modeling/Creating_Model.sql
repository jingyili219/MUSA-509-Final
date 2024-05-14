CREATE OR REPLACE MODEL `data_lake.avg_ridership_prediction`
OPTIONS(model_type='linear_reg', input_label_cols=['avg_ridership']) AS
SELECT
  CAST(Avg_Board AS FLOAT64) + CAST(Avg_Alight AS FLOAT64) AS avg_ridership,
  TotalPop,
  MedHHInc,
  MedRent,
  PopDensity_km2,
  pctWhite,
  pctAfricanamerican,
  pctAsian,
  pctMale,
  pctBachelors,
  latitude,
  longitude
FROM
  `data_lake.census_2022_V2 `;