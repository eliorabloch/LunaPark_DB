--������� �� ���� ����� ��� �� ����� ������ ���� ������
--�� ��� ����� �� ������� ���� ������ ���� ������ ������ ���� �������� 
-- �� ��� �� ������ ������ ������ ��� ������� ���� ������ ���� ����� ���� ����� �������
--����� �� ��� ���� ������ ���� ���� ������� ��� ������ ��� ����� �� ���� �� ��� �������
SELECT DISTINCT * FROM
(
(SELECT CRAMMER.EMPLOYEE.ID-888887 "EMPLOYEE ID", 
        CRAMMER.EMPLOYEE.NAME "EMPLOYEE NAME",
        CRAMMER.EMPLOYEE.ADDRESS "ADDRESS",
        CRAMMER.EMPLOYEE.STARTDATE "START DATE"

FROM CRAMMER.EMPLOYEE

WHERE CRAMMER.EMPLOYEE.STARTDATE < '01-JAN-2020'
)

NATURAL JOIN

(SELECT FA.EMPLOYEE_ID "EMPLOYEE ID",
        MO.FACILITIES_ID "FACILITY ID",
        MO.DATE_MODE "FACILITY IN MAINTENANC",
        MO.F_MODE "FACILITIY MODE" 

FROM MODE_OF MO JOIN FACILITIES FA
     ON MO.FACILITIES_ID = FA.FACILITIES_ID

WHERE MO.F_MODE = 'maintenanc'
      AND FA.FACILITIES_AGE IS NULL)
)

