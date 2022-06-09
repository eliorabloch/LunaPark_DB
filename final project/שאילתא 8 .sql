--נרצה לבדדוק כמה מתקנים מותתאים לילדים בגילאים הכי קטנים
-- מה שזה אומר שאין להם הגבלת גיל ואין להם הגבלת גןבה 
--בהתאמה נרצה לבדוק כמה ילדים באמת צריכים את המתקנים האלה
SELECT * FROM
((SELECT  FA.FACILITIES_ID  "FACILITIES ID",
        FA.FACILITIES_HEIGHT "NO MIN HIGHT " ,
        FA.FACILITIES_AGE " NO MIN AGE",
        FA.FACILITIES_LOCATION "LOCATION"
FROM FACILITIES FA
WHERE NOT EXISTS (SELECT 1 
                  FROM FACILITIES F 
                  WHERE FA.FACILITIES_ID= F.FACILITIES_ID
                        AND F.FACILITIES_AGE IS NOT NULL
                        AND F.FACILITIES_HEIGHT IS NOT  NULL)
 ORDER BY FA.FACILITIES_LOCATION, FA.FACILITIES_ID                       )

NATURAL JOIN 

(SELECT PLAY.FACILITIES_ID "FACILITIES ID", 
        COUNT (PLAY.VISITOR_ID) "VISITOR ID"
      --PLAY.VISITOR_ID "VISITOR ID"
FROM PLAY
WHERE NOT EXISTS (SELECT 1 
                  FROM PLAY P JOIN VISITOR V
                       ON P.VISITOR_ID = P.VISITOR_ID 
                  WHERE PLAY.VISITOR_ID = P.VISITOR_ID
                        AND V.VISITOR_TYPE <> 'child'
                        AND P.VISITOR_ID = V.VISITOR_ID
                        )
 GROUP BY PLAY.FACILITIES_ID ))
 
