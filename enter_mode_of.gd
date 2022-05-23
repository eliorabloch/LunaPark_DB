
[General]
Version=1

[Preferences]
Username=
Password=2887
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=ROFRIDMA
Name=MODE_OF
Count=2000

[Record]
Name=DATE_MODE
Type=DATE
Size=
Data=Random(01-03-2021, 01-07-2023)
Master=

[Record]
Name=F_MODE
Type=CHAR
Size=10
Data=List(select f_mode from facilities_mode)
Master=

[Record]
Name=FACILITIES_ID
Type=NUMBER
Size=
Data=List(select facilities_id from facilities)
Master=

