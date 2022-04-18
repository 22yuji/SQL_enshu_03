-- Project Name : �f�[�^�x�[�X�݌v_���K���
-- Date/Time    : 2022/04/18 17:24:08
-- Author       : �Ɏɓ��E��
-- RDBMS Type   : PostgreSQL
-- Application  : A5:SQL Mk-2

/*
  << ���ӁI�I >>
  BackupToTempTable, RestoreFromTempTable�^�����߂��t������Ă��܂��B
  ����ɂ��Adrop table, create table ����f�[�^���c��܂��B
  ���̋@�\�͈ꎞ�I�� $$TableName �̂悤�Ȉꎞ�e�[�u�����쐬���܂��B
  ���̋@�\�� A5:SQL Mk-2�ł̂ݗL���ł��邱�Ƃɒ��ӂ��Ă��������B
*/

-- 
--* RestoreFromTempTable
create table "����" (
  "����ID" integer
  , "���Җ�" character varying
  , constraint "����_PKC" primary key ("����ID")
) ;

-- 
--* RestoreFromTempTable
create table "����" (
  "����ID" integer
  , "���Ж�" character varying
  , "�o�Ŏ�ID" integer not null
  , "�艿" integer
  , "���s�N����" character varying
  , "����ID" integer not null
  , constraint "����_PKC" primary key ("����ID")
) ;

-- 
--* RestoreFromTempTable
create table "�o�Ŏ�" (
  "�o�ŎЖ�" character varying
  , "�o�Ŏ�ID" integer
  , constraint "�o�Ŏ�_PKC" primary key ("�o�Ŏ�ID")
) ;

comment on column "����"."����ID" is '����ID';
comment on column "����"."���Җ�" is '���Җ�';

comment on column "����"."����ID" is '����ID';
comment on column "����"."���Ж�" is '���Ж�';
comment on column "����"."�o�Ŏ�ID" is '�o�Ŏ�ID';
comment on column "����"."�艿" is '�艿';
comment on column "����"."���s�N����" is '���s�N����';
comment on column "����"."����ID" is '����ID';

comment on column "�o�Ŏ�"."�o�ŎЖ�" is '�o�ŎЖ�';
comment on column "�o�Ŏ�"."�o�Ŏ�ID" is '�o�Ŏ�ID';

