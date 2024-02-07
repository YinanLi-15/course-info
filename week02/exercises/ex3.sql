DROP TABLE IF EXISTS indego_stations;
CREATE TABLE indego_stations
(
  id           INTEGER,
  name         TEXT,
  go_live_date TEXT,
  status       TEXT
);

COPY indego_stations
FROM 'E:\UPenn\24Spring\MUSA509\course-info\week02\data\indego-stations-2022-10-01.csv'
WITH (FORMAT csv, HEADER true);

ALTER TABLE indego_stations
ALTER COLUMN go_live_date TYPE DATE
  USING to_date(go_live_date, 'MM/DD/YYYY');
  
SELECT * FROM indego_stations

SELECT * FROM indego_stations
WHERE go_live_date = '5/3/2016'

SELECT * FROM indego_stations
WHERE go_live_date > '5/3/2016'

SELECT * FROM indego_station_statuses

CREATE EXTENSION postgis;

SELECT * FROM indego_station_statuses
WHERE ST_Y(wkb_geometry) > 39.9523  -- Meyerson Hall latitude
ORDER BY ST_Y(wkb_geometry);