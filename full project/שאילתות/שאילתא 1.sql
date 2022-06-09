--ברצוננו לדעת כמה אירועים הוזמנו האם בזמן ההזמנה הפארק פתוח מה גודל האירוע ומה ההכנסה לפארק מהאירוע
select count(ev.event_id) "NUMBER OF EVENT" ,
       sum(ev.event_price)"SUM PRICE'S EVENT",
       AVG(EV.EVENT_PRICE) "AVEREGE'S PRICE",
       ev.event_public "PUBLIC/PRIVATE",
       ev.event_size "EVENT SIZE",
       vis.visitor_type "INVITING TYPE"
from event ev join my_order mord
       on ev.event_id = mord.event_id 
       join visitor vis
       on mord.visitor_id = vis.visitor_id
group by event_size , event_public, vis.visitor_type
order by ev.event_size, vis.visitor_type


