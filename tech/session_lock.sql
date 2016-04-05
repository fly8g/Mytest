select 
       *
from 
   v$locked_object lockedObject,
   v$session s
where 
   lockedObject.SESSION_ID = s.SID;
   
select 
s.SID,
       v.ORACLE_USERNAME, -- oracle 用?名
       tbl.owner,                  --表所有者
       tbl.object_name,          --被??象名
       tbl.object_type,            --?象?型(table or view等)
       tbl.status,                  --状?
       s.USERNAME,             --用?名称
       s.MACHINE,               --操作者机器名
       s.OSUSER,                --操作系?用?名
       s.LOGON_TIME,          --用?登???
       s.LAST_CALL_ET/60 locked_time  --?象被加???
from 
     v$locked_object v,
     dba_objects tbl,
     v$session s
where 
      v.OBJECT_ID=tbl.object_id and
      v.SESSION_ID=s.SID;


select object_name as 対象名称,s.sid,s.serial#,p.spid as プロセスID
from v$locked_object l , dba_objects o , v$session s , v$process p
where l.object_id=o.object_id and l.session_id=s.sid and s.paddr=p.addr;