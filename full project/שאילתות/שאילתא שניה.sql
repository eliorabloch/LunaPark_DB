--בשאילתא זו נרצה לעשות רשימה של כל ההמנויים 
-- על מנת לעשות זאת לקחנו את טבלה הממבר ואיחדנו אותה עם המבקרים שיש בנתונים שלנו זאת על מנת שנוכל ליצור איתם קשרדרך האימייל
-- כל זאת כמובן על מנת לעדכן אותם באטרקציות החדשות בפארק
--שימור לקוחות

SELECT MEM.MEMBER_ID "MEMBER ID",
       MEM.DATE_EX "DATE",
       MEM.PRICE "PRICE",
       VIS.VISITOR_EMAIL "EMAIL"

FROM CRAMMER.MEMBERS MEM JOIN VISITOR VIS
     ON VIS.VISITOR_ID = MEM.MEMBER_ID

WHERE VIS.VISITOR_TYPE = 'special'
      AND MEM.DATE_EX > '01-jan-2022'

ORDER BY MEM.MEMBER_ID






SELECT * FROM VISITOR
