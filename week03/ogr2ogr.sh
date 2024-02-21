ogr2ogr `
  -f "PostgreSQL" `
  -nln "stations_geo" `
  -lco "SCHEMA=indego" `
  -lco "GEOM_TYPE=geography" `
  -lco "GEOMETRY_NAME=the_geog" `
  -lco "OVERWRITE=yes" `
  PG:"host=localhost port=5432 dbname=week03 user=postgres password=532673" `
  "data/indego_stations.geojson"

ogr2ogr `
  -f "PostgreSQL" `
  -nln "stations_geo" `
  -lco "SCHEMA=indego" `
  -lco "GEOM_TYPE=geography" `
  -lco "GEOMETRY_NAME=the_geog" `
  -lco "OVERWRITE=yes" `
  PG:"host=localhost port=5432 dbname=week03 user=postgres password=532673" `
  "data/indego_stations.geojson"