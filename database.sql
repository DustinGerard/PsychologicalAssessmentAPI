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
CREATE TABLE public.temp
(
    answer TEXT
);
ALTER TABLE public.temp ADD always TEXT NULL;
ALTER TABLE public.temp ADD often TEXT NULL;
ALTER TABLE public.temp ADD sometimes TEXT NULL;
ALTER TABLE public.temp ADD never TEXT NULL;

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

create or replace function first_name(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE "Accounts" set first_name = par_value where user_id=2;
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

select first_name('1');


create or replace function last_name(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE "Accounts" set last_name = par_value where user_id=2;
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function user_name(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE "Accounts" set user_name = par_value where user_id=2;
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function password(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE "Accounts" set user_password = par_value where user_id=2;
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';


/*create or replace function signup(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE "Accounts" set user_password = par_value where user_id=2;
       UPDATE "Accounts" set last_name = par_value where user_id=2;
       UPDATE "Accounts" set user_name = par_value where user_id=2;
       UPDATE "Accounts" set user_password = par_value where user_id=2;
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

select signup()*/




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


create or replace function postanswer1(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE anxiety set answer = par_value where anx_qstn=1;
       UPDATE anxiety set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE anxiety set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE anxiety set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE anxiety set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';



create or replace function postanswer2(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE anxiety set answer = par_value where anx_qstn=2;
       UPDATE anxiety set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE anxiety set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE anxiety set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE anxiety set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer3(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE anxiety set answer = par_value where anx_qstn=3;
       UPDATE anxiety set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE anxiety set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE anxiety set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE anxiety set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer4(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE anxiety set answer = par_value where anx_qstn=4;
       UPDATE anxiety set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE anxiety set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE anxiety set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE anxiety set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer5(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE anxiety set answer = par_value where anx_qstn=5;
       UPDATE anxiety set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE anxiety set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE anxiety set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE anxiety set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer6(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE anxiety set answer = par_value where anx_qstn=6;
       UPDATE anxiety set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE anxiety set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE anxiety set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE anxiety set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer7(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE anxiety set answer = par_value where anx_qstn=7;
       UPDATE anxiety set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE anxiety set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE anxiety set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE anxiety set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer8(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE anxiety set answer = par_value where anx_qstn=8;
       UPDATE anxiety set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE anxiety set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE anxiety set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE anxiety set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer9(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE depression set answer = par_value where dep_qstn=1;
       UPDATE depression set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE depression set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE depression set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE depression set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer10(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE depression set answer = par_value where dep_qstn=2;
       UPDATE depression set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE depression set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE depression set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE depression set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer11(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE depression set answer = par_value where dep_qstn=3;
       UPDATE depression set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE depression set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE depression set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE depression set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer12(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE depression set answer = par_value where dep_qstn=4;
       UPDATE depression set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE depression set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE depression set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE depression set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer13(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE depression set answer = par_value where dep_qstn=5;
       UPDATE depression set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE depression set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE depression set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE depression set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer14(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE depression set answer = par_value where dep_qstn=6;
       UPDATE depression set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE depression set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE depression set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE depression set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer15(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE depression set answer = par_value where dep_qstn=7;
       UPDATE depression set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE depression set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE depression set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE depression set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer16(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE depression set answer = par_value where dep_qstn=8;
       UPDATE depression set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE depression set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE depression set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE depression set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer17(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE depression set answer = par_value where dep_qstn=9;
       UPDATE depression set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE depression set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE depression set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE depression set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function postanswer18(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
       UPDATE depression set answer = par_value where dep_qstn=18;
       UPDATE anxiety set (points,correspondence) = (3,'Nearly every day') where answer = 'A' or answer = 'a';
       UPDATE anxiety set (points,correspondence) = (2,'More than half the days') where answer = 'B' or answer = 'b';
       UPDATE anxiety set (points,correspondence) = (1,'Several days') where answer = 'C' or answer = 'c';
       UPDATE anxiety set (points,correspondence) = (0,'Not at all') where answer = 'D' or answer = 'd';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';




create or replace function total_anx(in par_value text) returns text as
$$
  declare
    loc_res text;

  begin
    if par_value NOTNULL THEN

      update results set totalscore =  (select sum(anxiety.points) as "total score" from anxiety) where category = 'Anxiety';
      update results set diagnosis='You have no Anxiety.' where totalscore BETWEEN 0 and 4 and category = 'Anxiety';
      update results set diagnosis='You have Mild Anxiety.' where totalscore BETWEEN 5 and 9 and category = 'Anxiety';
      update results set diagnosis='You have Moderate Anxiety.' where totalscore BETWEEN 10 and 14 and category = 'Anxiety';
      update results set diagnosis='You have Severe Anxiety.' where totalscore BETWEEN 15 and 21 and category = 'Anxiety';
    loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

select total_anx('1');

create or replace function total_dep(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
        /*select sum(anxiety.points) as "total score" from anxiety;*/
        update results set totalscore =  (select sum(depression.points) as "total score" from depression) where category = 'Depression';
        update results set diagnosis='You have no Depression.' where totalscore BETWEEN 0 and 4 and category = 'Depression';
        update results set diagnosis='You have Mild Depression.' where totalscore BETWEEN 5 and 9 and category = 'Depression';
        update results set diagnosis='You have Moderate Depression.' where totalscore BETWEEN 10 and 14 and category = 'Depression';
        update results set diagnosis='You have Moderately Severe Depression.' where totalscore BETWEEN 15 and 19 and category = 'Depression';
        update results set diagnosis='You have Severe Depression.' where totalscore BETWEEN 20 and 27 and category = 'Depression';
        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';

create or replace function get_anxresult(out integer, out TEXT) returns setof record as
$$

  select totalscore, diagnosis from results where category = 'Anxiety';
$$
 language 'sql';

create or replace function get_depresult(out integer, out TEXT) returns setof record as
$$

  select totalscore, diagnosis from results where category = 'Depression';
$$
 language 'sql';


create or replace function review_anx_answers(out integer, out varchar, out TEXT, out integer ) returns setof record as
$$

  select anx_qstn, question, correspondence, points from anxiety
  ORDER BY anx_qstn ASC;
$$
 language 'sql';

create or replace function review_dep_answers(out integer, out varchar, out TEXT, out integer ) returns setof record as
$$

  select dep_qstn, question, correspondence, points from depression
  ORDER BY dep_qstn ASC;
$$
 language 'sql';




/*create or replace function total_anx(in par_value text) returns text as
$$
  declare
    loc_res text;
  begin
     if par_value NOTNULL then
        select sum(points) as "total score" from anxiety;
        update results set diagnosis="lala na kyka dong" where "total score" >= 0;

        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$
 language 'plpgsql';*/



/*create function total_anx(par_value integer) returns integer
LANGUAGE plpgsql
AS $$
declare
    loc_res integer;
  begin
     if par_value NOTNULL then
        select sum(points) into results from anxiety where category = 'Anxiety';
        update results set diagnosis="lala na kyka dong" where "total score" = 40;

        loc_res = 'ok';
     else
       loc_res = 'Error';
     end if;
     return loc_res;
      end;
$$;*/




select answer(5, 5, 5, 5, 5, 5, 5, 5);

insert into results(category) values ('Depression');
insert into depression(answer) values ('A');