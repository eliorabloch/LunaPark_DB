--בשאילתא זו נרצה להעביר קורס קטן לעובדים שלנו 
-- על מנת לדעת מי צריך לעבור אותו נבחר בעובדים שעובדים בפארק פחות משנה  
--כמו כן כדי לדעת איזה קורס נבדוק את התפקיד של העובד 
-- תאריך העברת הקורס שלהם יהיה בהתאם לצורך 
-- במקרה שלנו בהתאם להפעלת המתקן עליו הם ממונים
SELECT DISTINCT * FROM
(
(SELECT FA.EMPLOYEE_ID "EMPLOYEE ID",
        MO.FACILITIES_ID "FACILITY ID",
        MO.DATE_MODE "DATE OF FACILITY IS ON",
        MO.F_MODE "FACILITIY MODE" 

FROM MODE_OF MO JOIN FACILITIES FA
     ON MO.FACILITIES_ID = FA.FACILITIES_ID

WHERE MO.F_MODE = 'on'
ORDER BY FA.FACILITIES_ID)

NATURAL JOIN

(SELECT CRAMMER.EMPLOYEE.ID-888887 "EMPLOYEE ID", 
        CRAMMER.EMPLOYEE.NAME "EMPLOYEE NAME",
        CRAMMER.EMPLOYEE.ROLE "ROLE",
        CRAMMER.EMPLOYEE.STARTDATE "START DATE"

FROM CRAMMER.EMPLOYEE

WHERE CRAMMER.EMPLOYEE.STARTDATE > '01-JAN-2022')
)
