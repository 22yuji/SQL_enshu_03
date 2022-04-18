-- Project Name : データベース設計_演習問題
-- Date/Time    : 2022/04/18 17:24:08
-- Author       : 伊舎堂勇児
-- RDBMS Type   : PostgreSQL
-- Application  : A5:SQL Mk-2

/*
  << 注意！！ >>
  BackupToTempTable, RestoreFromTempTable疑似命令が付加されています。
  これにより、drop table, create table 後もデータが残ります。
  この機能は一時的に $$TableName のような一時テーブルを作成します。
  この機能は A5:SQL Mk-2でのみ有効であることに注意してください。
*/

-- 
--* RestoreFromTempTable
create table "著者" (
  "著者ID" integer
  , "著者名" character varying
  , constraint "著者_PKC" primary key ("著者ID")
) ;

-- 
--* RestoreFromTempTable
create table "書籍" (
  "書籍ID" integer
  , "書籍名" character varying
  , "出版社ID" integer not null
  , "定価" integer
  , "発行年月日" character varying
  , "著者ID" integer not null
  , constraint "書籍_PKC" primary key ("書籍ID")
) ;

-- 
--* RestoreFromTempTable
create table "出版社" (
  "出版社名" character varying
  , "出版社ID" integer
  , constraint "出版社_PKC" primary key ("出版社ID")
) ;

comment on column "著者"."著者ID" is '著者ID';
comment on column "著者"."著者名" is '著者名';

comment on column "書籍"."書籍ID" is '書籍ID';
comment on column "書籍"."書籍名" is '書籍名';
comment on column "書籍"."出版社ID" is '出版社ID';
comment on column "書籍"."定価" is '定価';
comment on column "書籍"."発行年月日" is '発行年月日';
comment on column "書籍"."著者ID" is '著者ID';

comment on column "出版社"."出版社名" is '出版社名';
comment on column "出版社"."出版社ID" is '出版社ID';

