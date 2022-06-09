--בטבלה זו נרה להראות כמה אירועים התקיימו בפארק מכל סוג  אירוע
CREATE VIEW EVENT_SIZE
 
AS
 
SELECT  COUNT(EV.EVENT_ID) "NUMBER OF EVENT" , EV.EVENT_SIZE "SIZE"
 
FROM    EVENT EV
 
GROUP BY EV.EVENT_SIZE 

SELECT * FROM EVENT_SIZE
 
