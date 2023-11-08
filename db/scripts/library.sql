CREATE DATABASE library;
GRANT ALL ON DATABASE library TO mandzhieva_216;
ALTER DATABASE library OWNER TO mandzhieva_216;
GRANT ALL ON SCHEMA public TO mandzhieva_216;

\c library;

CREATE TABLE "Reader" (
  "id" integer PRIMARY KEY,
  "LastName" integer,
  "FirstName" varchar,
  "Address" varchar,
  "BirthDate" date
);

CREATE TABLE "Book" (
  "ISBN" integer PRIMARY KEY,
  "Title" varchar,
  "Author" varchar,
  "PagesNum" integer,
  "PubYear" integer,
  "PubName" varchar
);

CREATE TABLE "Publisher" (
  "PubName" varchar,
  "PubKind" varchar
);

CREATE TABLE "Category" (
  "CategoryName" varchar,
  "ParentCat" varchar
);

CREATE TABLE "Copy" (
  "ISBN" integer PRIMARY KEY,
  "CopyNumber" integer,
  "Shelf" varchar,
  "Position" integer
);

CREATE TABLE "Borrowing" (
  "ISBN" integer PRIMARY KEY,
  "ReaderNr" integer,
  "CopyNumber" integer,
  "ReturnDate" date
);

CREATE TABLE "BookCat" (
  "ISBN" integer PRIMARY KEY,
  "CategoryName" varchar
);
