CREATE OR REPLACE MODEL `data_lake.avg_ridership_prediction`
OPTIONS(model_type='linear_reg', input_label_cols=['avg_ridership']) AS
SELECT
  CAST(Avg_Board AS FLOAT64) + CAST(Avg_Alight AS FLOAT64) AS avg_ridership,
  TotalPop,
  MedHHInc,
  MedRent,
  Commutetowork,
  PopDensity_km2,
  TotalWorker,
  pctWhite,
  pctAfricanamerican,
  pctAsian,
  pctOther,
  pctMale,
  pctFemale,
  pctBachelors,
  pctWorker,
  pctPoverty,
  pctworkwithbus,
  pctworkfromhome,
  pctworkbycar,
  pctworkbytaxi,
  pctworkbymotor,
  pctworkbybike,
  pctworkbywalk,
  pctnocar,
  pct1car,
  pct2car,
  pct3car,
  pct4car,
  pct5car

FROM
  `musa509-final-charlotte.data_lake.census_2022_V2`;
