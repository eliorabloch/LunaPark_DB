
[General]
Version=1

[Preferences]
Username=
Password=2148
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=ROFRIDMA
Name=MY_ORDER
Count=600

[Record]
Name=ORDER_DATE
Type=DATE
Size=
Data=Random(01-02-2021, 01-07-2023)
Master=

[Record]
Name=VISITOR_ID
Type=NUMBER
Size=
Data=List(select visitor_id from visitor)
Master=

[Record]
Name=EVENT_ID
Type=NUMBER
Size=
Data=List(select event_id from event)
Master=

