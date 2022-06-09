--���� ����� �� ���� ������� ������� ��� 14 �16 ������� ��� �������� ������ �� ������� ����� �� �����
-- �� ��� ����� �� ���� ����� ������� �����
--���� ��� ���� ��� ������ ���� ������ �� �� 150 ������ ��������
SELECT COUNT(PLAY.FACILITIES_ID)"NUM OF FACILITIES",
       FA.FACILITIES_AGE "MIN AGE",
       COUNT(PLAY.VISITOR_ID)"NUM OF VISITOR",
       PLAY.PLAY_TIME "TIME"
FROM PLAY JOIN FACILITIES FA
     ON PLAY.FACILITIES_ID = FA.FACILITIES_ID
WHERE PLAY.PLAY_TIME BETWEEN '14:00' AND '16:00'
GROUP BY FA.FACILITIES_AGE, PLAY.PLAY_TIME
ORDER BY PLAY.PLAY_TIME, FA.FACILITIES_AGE
FETCH FIRST 15 PERCENT ROWS ONLY 
