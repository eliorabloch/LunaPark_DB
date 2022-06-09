--ברצוננו לדעת לגבי אוכלוסיית הנכים המגיעים לפארק באיזור המזרחי 
--את טווח גילאי המתקנים שהם מחפשים איזה מתקנים אלו באיזה תאיריכים ובאיזה שעות הם עולה למתקנים בדקנו את המצב בשנת 2020
--כמו כן כמובן בדקנו שבאותו זמן המתקן היה פעיל
select vis.visitor_name "VISITOR NAME",
       vis.visitor_type "TYPE OF VISITOR",
       vis.visitor_phone "PHONE NUMBER",
       fa.facilities_id "NUM OF FACILITIES" ,
       fa.facilities_age "MIN AGE'S FACILITIES",
       fa.facilities_location "LOCATION",
       p.play_time "TIME" ,
       p.play_date "DATE" 
from visitor vis join play p
     on vis.visitor_id = p.visitor_id
     join facilities fa
     on fa.facilities_id = p.facilities_id
     join mode_of mo
     on fa.facilities_id = mo.facilities_id
where fa.facilities_location = 'east' 
     and fa.facilities_height > 1.5
     and vis.visitor_type = 'disable'
     and mo.f_mode = 'on'
     and p.play_date between '01-jun-2020' and '01-jun-2021' 
order by fa.facilities_age,fa.facilities_id, p.play_date, p.play_time,   vis.visitor_name



SELECT * FROM
(
(SELECT VIS.VISITOR_ID "VISITOR ID",
        VIS.VISITOR_NAME "VISITOR NAME",
        VIS.VISITOR_TYPE "TYPE"
FROM VISITOR VIS
WHERE VIS.VISITOR_TYPE = 'disable'
)
NATURAL JOIN
(SELECT P.VISITOR_ID "VISITOR ID",
        FA.FACILITIES_ID "FACILITIES ID",
        FA.FACILITIES_AGE "MIN AGE",
        P.PLAY_TIME "TIME",
        P.PLAY_DATE "DATE"
FROM FACILITIES FA JOIN PLAY P
     ON FA.FACILITIES_ID = P.FACILITIES_ID
     join mode_of mo
     on fa.facilities_id = mo.facilities_id
WHERE fa.facilities_location = 'east' 
     and fa.facilities_height > 1.5
     and mo.f_mode = 'on'
     and p.play_date between '01-jun-2020' and '01-jun-2021'
ORDER BY fa.facilities_age,fa.facilities_id, p.play_date, p.play_time 
)
)
