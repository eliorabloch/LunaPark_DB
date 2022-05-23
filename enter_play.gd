
[General]
Version=1

[Preferences]
Username=
Password=2698
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=ROFRIDMA
Name=PLAY
Count=50000

[Record]
Name=PLAY_TIME
Type=VARCHAR2
Size=5
Data=Random(10, 23)':'Random(10, 55)
Master=

[Record]
Name=PLAY_DATE
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
Name=FACILITIES_ID
Type=NUMBER
Size=
Data=List(select facilities_id from facilities)
Master=

