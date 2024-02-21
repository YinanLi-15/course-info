create schema if not exists indego;

create table if not exists indego.stations(
    station_id INTEGER,
    station_name TEXT,
    go_live_date TEXT
);

copy indego.stations
from 'E:\UPenn\24Spring\MUSA509\course-info\week03\data\indego_stations.csv'
with (format csv, header true);

alter table indego.stations
alter column go_live_date type date
    using to_date(go_live_date, 'MM/DD/YYYY');

select * from indego.stations;

show search_path;

create extension postgis;