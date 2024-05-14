CREATE OR REPLACE EXTERNAL TABLE  `data_lake.police ` (  
`geog` GEOGRAPHY,
`OBJECTID_1` STRING,
`NAME` STRING,
`STBLKNO` STRING,
`STDIR` STRING,
`STNAME` STRING,
`STTYPE` STRING,
`SUITE` STRING,
`ADDRESS` STRING,
`X` STRING,
`Y` STRING,
`City` STRING,
`State` STRING,
`Zip` STRING, 
)
OPTIONS (
  description = 'Police - Charlotte',
  uris = ['gs://charlotte_data_lake/cats_data/police-4326.csv'],
  format = 'CSV',
  max_bad_records = 0,
  skip_leading_rows = 1
)