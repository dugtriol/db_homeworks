CREATE DATABASE hospital;
GRANT ALL ON DATABASE hospital TO customuser;
ALTER DATABASE hospital OWNER TO customuser;
GRANT ALL ON SCHEMA public TO customuser;

\c hospital;
CREATE TABLE "StationsPersonal" (
  "PersNr" varchar,
  "StatNr" varchar,
  "Name" varchar
);

CREATE TABLE "Station" (
  "StatNr" integer,
  "Name" varchar
);

CREATE TABLE "Doctor" (
  "PersNr" integer,
  "StatNr" integer,
  "Name" varchar,
  "Area" varchar,
  "Rang" varchar
);

CREATE TABLE "Caregivers" (
  "PersNr" integer,
  "StatNr" varchar,
  "Name" varchar,
  "Qualification" varchar
);

CREATE TABLE "Patient" (
  "PatientNr" integer,
  "Name" varchar,
  "Disease" varchar,
  "RoomNr" integer,
  "from" date,
  "to" date
);

CREATE TABLE "Room" (
  "StatNr" integer,
  "RoomNr" integer,
  "Beds" integer
);

CREATE TABLE "Treats" (
  "PatientNr" integer,
  "PersNr" integer
);
