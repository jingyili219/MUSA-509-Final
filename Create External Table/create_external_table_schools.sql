CREATE OR REPLACE EXTERNAL TABLE  `data_lake.schools ` (  
`geog` GEOGRAPHY,
`OBJECTID` STRING,
`SchoolID` STRING,
`Name` STRING,
`Ownership` STRING,
`Type` STRING,
`Magnet` STRING,
`GenEd` STRING,
`EquityPlus` STRING,
`LIFT` STRING,
`GDP` STRING,
`Updated` STRING,
`PrimEnroll` STRING,
`HighEnroll` STRING,
`GradeLevel` STRING,
`Enrollment` STRING,
`PID` STRING,
`AddressID` STRING,
`GlobalID` STRING,
)
OPTIONS (
  description = 'Schools - Charlotte',
  uris = ['gs://charlotte_data_lake/cats_data/Schools-4326.csv'],
  format = 'CSV',
  max_bad_records = 0,
  skip_leading_rows = 1
)