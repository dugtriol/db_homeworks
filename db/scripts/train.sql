CREATE DATABASE train;
GRANT ALL ON DATABASE train TO customuser;
ALTER DATABASE train OWNER TO customuser;
GRANT ALL ON SCHEMA public TO customuser;

\c train;

CREATE TABLE "City" (
  "Name" varchar,
  "Region" varchar
);

CREATE TABLE "Station" (
  "Name" varchar,
  "Tracks" varchar,
  "CityName" varchar,
  "Region" varchar
);

CREATE TABLE "Train" (
  "TrainNr" integer,
  "Length" integer,
  "StartStationName" varchar,
  "EndStationName" varchar
);

CREATE TABLE "Connection" (
  "FromStation" varchar,
  "ToStation" varchar,
  "TrainNr" integer,
  "Departure" date,
  "Arrival" date
);
