--������� �� ���� ����� ����� �� �� �������� 
-- �� ��� ����� ��� ����� �� ���� ����� ������� ���� �� ������� ��� ������� ���� ��� �� ��� ����� ����� ���� ������ �������
-- �� ��� ����� �� ��� ����� ���� ��������� ������ �����
--����� ������

SELECT MEM.MEMBER_ID "MEMBER ID",
       MEM.DATE_EX "DATE",
       MEM.PRICE "PRICE",
       VIS.VISITOR_EMAIL "EMAIL"

FROM CRAMMER.MEMBERS MEM JOIN VISITOR VIS
     ON VIS.VISITOR_ID = MEM.MEMBER_ID

WHERE VIS.VISITOR_TYPE = 'special'
      AND MEM.DATE_EX > '01-jan-2022'

ORDER BY MEM.MEMBER_ID






SELECT * FROM VISITOR
