-- Create the user 
create user qiu1
  identified by "qiu1"
  default tablespace SYSTEM
  temporary tablespace TEMP
  profile DEFAULT;
-- Grant/Revoke role privileges 
grant connect to qiu1;
grant dba to qiu1;
grant resource to qiu1;
-- Grant/Revoke system privileges 
grant unlimited tablespace to qiu1;




select owner,table_name from all_tables where owner='SAKURA_NEW' order by table_name;


--テーブルのコメント
SELECT 
  TABLE_NAME,
  COLUMN_NAME,
  COMMENTS
FROM
  USER_COL_COMMENTS
WHERE
  TABLE_NAME = 'HIT00010';

--テーブルのカラムのコメント
SELECT
  TABLE_NAME,
  TABLE_TYPE,
  COMMENTS
FROM
  USER_TAB_COMMENTS
WHERE
  TABLE_NAME = 'HIT00010';