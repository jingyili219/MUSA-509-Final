CREATE OR REPLACE EXTERNAL TABLE  `data_lake.census_2020_V2 ` (  
`Stop_ID` STRING,
`Stop_Name` STRING,
`Board` STRING,
`Alight` STRING,
`Number_of_Days` STRING,
`Avg_Board` STRING,
`Avg_Alight` STRING,
`Year` STRING,
`Month` STRING,
`Year_Month` STRING,
`GEOID` STRING,
`TotalPop` STRING,
`MedHHInc` STRING,
`MedRent` STRING,
`Commutetowork` STRING,
`Workwithbus` STRING,
`Workfromhome` STRING,
`Total` STRING,
`car0` STRING,
`car1` STRING,
`car2` STRING,
`car3` STRING,
`car4` STRING,
`car5more` STRING,
`Workbycar` STRING,
`Workbytaxi` STRING,
`Workbymotor` STRING,
`Workbybike` STRING,
`Workbywalk` STRING,
`PopDensity_km2` STRING,
`TotalWorker` STRING,
`pctWhite` STRING,
`pctAfricanamerican` STRING,
`pctAsian` STRING,
`pctOther` STRING,
`pctMale` STRING,
`pctFemale` STRING,
`pctBachelors` STRING,
`pctWorker` STRING,
`pctPoverty` STRING,
`pctworkwithbus` STRING,
`pctworkfromhome` STRING,
`pctworkbycar` STRING,
`pctworkbytaxi` STRING,
`pctworkbymotor` STRING,
`pctworkbybike` STRING,
`pctworkbywalk` STRING,
`pctnocar` STRING,
`pct1car` STRING,
`pct2car` STRING,
`pct3car` STRING,
`pct4car` STRING,
`pct5car` STRING,
`latitude` STRING,
`longitude` STRING,
`WKT_geometry` GEOGRAPHY, 
)
OPTIONS (
  description = 'Census - 2020',
  uris = ['gs://charlotte_data_lake/cats_data/data_2020_4326_test3.csv'],
  format = 'CSV',
  max_bad_records = 0,
  skip_leading_rows = 1
)