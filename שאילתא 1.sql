
select count(ev.event_id) "NUMBER OF EVENT" ,
       sum(ev.event_price)"SUM PRICE'S EVENT",
       AVG(EV.EVENT_PRICE) "AVEREGE'S PRICE",
       ev.event_public "PUBLIC/PRIVATE",
       ev.event_size "EVENT SIZE"
from event ev join my_order mord
       on ev.event_id = mord.event_id 
       join visitor vis
       on mord.visitor_id = vis.visitor_id
group by event_size , event_public
order by ev.event_size
