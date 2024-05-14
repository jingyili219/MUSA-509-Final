CREATE OR REPLACE EXTERNAL TABLE  `data_lake.shopping ` (  
`geog` GEOGRAPHY,
`OBJECTID` STRING,
`PID` STRING,
`AddressID` STRING,
`CenterName` STRING,
`CenterClassificaiton` STRING,
`GlobalID` STRING,
)
OPTIONS (
  description = 'Shopping - Charlotte',
  uris = ['gs://charlotte_data_lake/cats_data/shoppingcenter-4326.csv'],
  format = 'CSV',
  max_bad_records = 0,
  skip_leading_rows = 1
)