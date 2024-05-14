CREATE OR REPLACE TABLE `data_lake.avg_ridership_predictions` AS
SELECT
  *,
FROM
  ML.PREDICT(MODEL `data_lake.avg_ridership_prediction`,
    (
      SELECT
        TotalPop,
        CAST(MedHHInc AS STRING) AS MedHHInc, -- Ensure MedHHInc is cast to STRING if model expects it that way
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
        `data_lake.census_2022_V2 `
    )
  )