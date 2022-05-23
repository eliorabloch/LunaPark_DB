
[General]
Version=1

[Preferences]
Username=
Password=2131
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=ROFRIDMA
Name=VISITOR
Count=20000

[Record]
Name=VISITOR_ID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=VISITOR_PHONE
Type=VARCHAR2
Size=15
Data='05'Random(0,9)' 'Random(123, 976)' 'Random(0251,9967)
Master=

[Record]
Name=VISITOR_TYPE
Type=VARCHAR2
Size=15
Data=List('child', 'adult','soldier','special','disable','subscription'))
Master=

[Record]
Name=VISITOR_NAME
Type=VARCHAR2
Size=30
Data=FirstName' 'LastName
Master=

[Record]
Name=VISITOR_EMAIL
Type=VARCHAR2
Size=40
Data=Email
Master=

