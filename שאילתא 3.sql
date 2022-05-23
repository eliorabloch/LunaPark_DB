

select vis.visitor_name "VISITOR NAME",
       vis.visitor_phone "PHONE",
       ev.event_id "EVENT ID",
       mor.order_date "EVENT DATE" ,
       ev.event_size "SIZE",
       EV.EVENT_PUBLIC "PRIVET"
from event ev join my_order mor
      on ev.event_id = mor.event_id
      join visitor vis
      on vis.visitor_id = mor.visitor_id
where ev.event_public = 'private'     
      AND VIS.VISITOR_TYPE ='adult'
order by mor.order_date, ev.event_size 
