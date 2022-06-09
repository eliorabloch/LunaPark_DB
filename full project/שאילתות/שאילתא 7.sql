--ברצונו לראות באילו אירועים שקו לפני הראשון ליולי 21 שיחקו המתקנים
-- ואם כן אילו מתקנים הם היו כמו כן בדקנו שאכן היו מופעלים באותו זמןוגם מי שיחק בהם
SELECT * FROM
(
(SELECT EV.EVENT_ID "EVENT"
FROM EVENT EV 
WHERE EV.EVENT_ID IN 
     (SELECT MOR1.EVENT_ID
      FROM MY_ORDER MOR1 , PLAY P1 
      WHERE MOR1.ORDER_DATE = P1.PLAY_DATE))
      
NATURAL JOIN
      
(SELECT MOR.ORDER_DATE "DATE",
        MOR.VISITOR_ID,
        MOR.EVENT_ID "EVENT"
FROM MY_ORDER MOR 
WHERE mor.event_id  IN 
     (SELECT MOR1.EVENT_ID
      FROM MY_ORDER MOR1 , PLAY P1 
      WHERE MOR1.ORDER_DATE = P1.PLAY_DATE ))
      
NATURAL JOIN     
           
(SELECT MO.DATE_MODE "DATE",
       MO.F_MODE,
       MO.FACILITIES_ID
FROM MODE_OF MO
WHERE MO.F_MODE = 'on' AND MO.DATE_MODE < '01-JUL-2021'))
