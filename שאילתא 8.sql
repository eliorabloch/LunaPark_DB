SELECT  VIS.VISITOR_TYPE,
       COUNT (VIS.VISITOR_ID) "NUM VISITOR"
FROM VISITOR VIS JOIN PLAY P 
       ON VIS.VISITOR_ID = P.VISITOR_ID
GROUP BY VIS.VISITOR_TYPE
ORDER BY VIS.VISITOR_TYPE
