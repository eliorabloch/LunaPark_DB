create or replace procedure VISITOR_DETAIL(VI_ID in INTEGER) is
 V_NAME VARCHAR(25);
 V_PHONE VARCHAR (15);
 V_EMAIL VARCHAR (45);
begin
  SELECT VISITOR_NAME INTO V_NAME FROM VISITOR WHERE VI_ID = VISITOR_ID;
  SELECT VISITOR_PHONE INTO V_PHONE FROM VISITOR WHERE VI_ID = VISITOR_ID;
  SELECT VISITOR_EMAIL INTO V_EMAIL FROM  VISITOR WHERE VI_ID = VISITOR_ID;
  DBMS_OUTPUT.put_line('NAME: ' ||V_NAME || ' PHONE NUMBER: ' ||V_PHONE || ' EMAIL: '||V_EMAIL);

end ;
/
