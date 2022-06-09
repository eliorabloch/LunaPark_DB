create or replace procedure NUM_OF_TYPE_EVENT(E_P in VARCHAR, E_S in VARCHAR) is
  N_EVENT INTEGER;
begin
  SELECT COUNT(EVENT_ID) INTO N_EVENT FROM EVENT WHERE EVENT_PUBLIC = E_P AND EVENT_SIZE = E_S;
  DBMS_OUTPUT.put_line('NUMBER OF THIS TYPE OF EVENT IS ' || N_EVENT );
 
end NUM_OF_TYPE_EVENT;
/