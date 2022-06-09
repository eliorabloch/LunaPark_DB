--ברצוננו לסדר את האירועים הפרטיים שיגרמו בחודשי החופש הגדול נסדר על פי התאריך שלהם כמו כן לאפשר יצירת קשר עם הלקוח המזמין
SELECT * FROM
((select DISTINCT vis.visitor_name "VISITOR NAME",
       vis.visitor_phone "PHONE",
       vis.visitor_email "EMAIL",
       vis.visitor_type "TYPE",
       ev.event_id "EVENT ID",
       mor.order_date "EVENT DATE" ,
       ev.event_size "SIZE",
       EV.EVENT_PUBLIC "PRIVET"
       
from event ev  join my_order mor
      on ev.event_id = mor.event_id
        join visitor vis
      on vis.visitor_id = mor.visitor_id
      join play p 
      on p.visitor_id = vis.visitor_id
      join facilities fa 
      on fa.facilities_id = p.facilities_id
      join mode_of mo
      on mo.facilities_id = fa.facilities_id
where ev.event_id not in (select e.event_id
                      from event e
                      where e.event_public = 'public')     
      AND MOR.ORDER_DATE  IN (select M.ORDER_DATE 
                                 from my_order M
                                 where M.ORDER_DATE between '01-jul-2020' and '01-sep-2020'
                                       or M.ORDER_DATE between '01-jul-2021' and '01-sep-2021'
                                       or M.ORDER_DATE between '01-jul-2022' and '01-sep-2022')      
order by mor.order_date, ev.event_size )

NATURAL JOIN
 
(SELECT COUNT(MO.FACILITIES_ID)"NUM OF FACILITIES",
       MO.DATE_MODE "EVENT DATE"
FROM MODE_OF MO
WHERE MO.DATE_MODE IN (select M1.DATE_MODE 
                                 from mode_of M1
                                 where M1.DATE_MODE between '01-jul-2020' and '01-sep-2020'
                                       or M1.DATE_MODE between '01-jul-2021' and '01-sep-2021'
                                       or M1.DATE_MODE between '01-jul-2022' and '01-sep-2022')
      AND MO.F_MODE = 'maintenanc'
      OR MO.F_MODE = 'off' 
GROUP BY MO.DATE_MODE))
