create or replace function MY_FIRS_FUN(PID in INTEGER) 
return integer is
newPrice integer := 0;
extension integer := 100;
eventPrie integer := 1000;

begin
  FOR PREVENT IN (SELECT *
                   FROM EVENT 
                   WHERE EVENT_ID = PID
                         AND EVENT_PUBLIC = 'private' )
  LOOP
    IF PREVENT.EVENT_SIZE = 'large' THEN
      extension := 100;
    ELSIF PREVENT.EVENT_SIZE = 'small' THEN
      extension := 500;
    ELSIF PREVENT.EVENT_SIZE = 'medium' THEN
      extension := 300;
    END IF ;
    newPrice := extension + eventPrie ;
   -- dbms_output.put_line ('the price went up by '||newPrice);

  END LOOP;
  FOR PREVENT IN (SELECT *
                   FROM EVENT 
                   WHERE EVENT_ID = PID
                         AND EVENT_PUBLIC = 'public' )
  LOOP
    IF PREVENT.EVENT_SIZE = 'large' THEN
      extension := 100;
    ELSIF PREVENT.EVENT_SIZE = 'small' THEN
      extension := 500;
    ELSIF PREVENT.EVENT_SIZE = 'medium' THEN
      extension := 300;
    END IF ;
    newPrice := extension - eventPrie ;
  END LOOP;

  return(newPrice);
  --dbms_output.put_line ('the price dropped by '||newPrice);

end ;
/
