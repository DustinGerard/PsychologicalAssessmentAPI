create table if not exists anxiety
(
	anx_qstn integer default 0 not null
		constraint anxiety_pkey
			primary key,
	answer varchar,
	points integer,
	correspondence varchar,
	question varchar
)
;

create table if not exists depression
(
	dep_qstn integer default 0 not null
		constraint depression_pkey
			primary key,
	answer varchar,
	points integer,
	correspondence varchar,
	question varchar
)
;

create table if not exists results
(
	category varchar,
	totalscore integer,
	diagnosis text
)
;










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