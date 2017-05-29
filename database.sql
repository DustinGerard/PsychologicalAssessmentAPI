/*
Created: 5/14/2017
Modified: 5/23/2017
Model: PostgreSQL 9.4
Database: PostgreSQL 9.4
*/


-- Create tables section -------------------------------------------------

-- Table Accounts

CREATE TABLE "Accounts"(
 "user_id" Varchar NOT NULL,
 "user_name" Varchar,
 "user_email" Varchar,
 "user_password" Varchar
)
;

-- Add keys for table Accounts

ALTER TABLE "Accounts" ADD CONSTRAINT "Key1" PRIMARY KEY ("user_id")
;

-- Table Posts

CREATE TABLE "Posts"(
 "post_id" Varchar NOT NULL,
 "post_content" Varchar,
 "user_id" Varchar NOT NULL
)
;

-- Add keys for table Posts

ALTER TABLE "Posts" ADD CONSTRAINT "Key2" PRIMARY KEY ("user_id","post_id")
;

-- Table Comments

CREATE TABLE "Comments"(
 "comment_id" Varchar NOT NULL,
 "comment_content" Varchar,
 "user_id" Varchar NOT NULL,
 "post_id" Varchar NOT NULL
)
;

-- Add keys for table Comments

ALTER TABLE "Comments" ADD CONSTRAINT "Key3" PRIMARY KEY ("user_id","post_id","comment_id")
;

-- Create relationships section -------------------------------------------------

ALTER TABLE "Posts" ADD CONSTRAINT "Relationship1" FOREIGN KEY ("user_id") REFERENCES "Accounts" ("user_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Comments" ADD CONSTRAINT "Relationship2" FOREIGN KEY ("user_id", "post_id") REFERENCES "Posts" ("user_id", "post_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;








create or replace function login(in par_user_name  text, in par_user_password text) returns text as
$$
  declare
    loc_user_name text;
    loc_user_password text;
    loc_res text;
  begin
     select into loc_user_name user_name, loc_user_password user_password
     from "Accounts" where user_name = par_user_name and user_password = par_user_password;

     if loc_user_name isnull AND loc_user_password isnull then
       loc_res = 'Error';
     else
       loc_res = 'ok';
     end if;
     return loc_res;
  end;
$$
 language 'plpgsql';

