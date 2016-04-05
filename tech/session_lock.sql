select 
       *
from 
   v$locked_object lockedObject,
   v$session s
where 
   lockedObject.SESSION_ID = s.SID;
   
select 
s.SID,
       v.ORACLE_USERNAME, -- oracle �p?��
       tbl.owner,                  --�\���L��
       tbl.object_name,          --��??�ۖ�
       tbl.object_type,            --?��?�^(table or view��)
       tbl.status,                  --��?
       s.USERNAME,             --�p?����
       s.MACHINE,               --����Ҋ��햼
       s.OSUSER,                --����n?�p?��
       s.LOGON_TIME,          --�p?�o???
       s.LAST_CALL_ET/60 locked_time  --?�۔��???
from 
     v$locked_object v,
     dba_objects tbl,
     v$session s
where 
      v.OBJECT_ID=tbl.object_id and
      v.SESSION_ID=s.SID;


select object_name as �Ώۖ���,s.sid,s.serial#,p.spid as �v���Z�XID
from v$locked_object l , dba_objects o , v$session s , v$process p
where l.object_id=o.object_id and l.session_id=s.sid and s.paddr=p.addr;