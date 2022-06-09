create or replace function MY_SECND_FUN(CID in INTEGER)
return varchar is
newtype varchar (10) := 'child';
child_type varchar(10) := 'something';

begin
  FOR CHILDREN IN (SELECT VISITOR_ID,
                          VISITOR_TYPE,
                          FACILITIES_AGE,
                          FACILITIES_HEIGHT
                   FROM VISITOR NATURAL JOIN PLAY
                        NATURAL JOIN FACILITIES
                   WHERE VISITOR_ID = CID
                         AND VISITOR_TYPE = 'child' )
  LOOP
    IF CHILDREN.FACILITIES_AGE > 12 AND CHILDREN.FACILITIES_HEIGHT > 1.5 THEN
      child_type := 'adoult';
    ELSIF CHILDREN.FACILITIES_AGE < 12 AND CHILDREN.FACILITIES_HEIGHT > 1.5 THEN
      child_type := 'tall child';
    ELSIF CHILDREN.FACILITIES_AGE > 12 AND CHILDREN.FACILITIES_HEIGHT < 1.5 THEN
      child_type := 'low adoult';
    ELSE
      child_type := 'child';
    END IF ;
    newtype := child_type;

  END LOOP;

  return(newtype);

end ;
/
