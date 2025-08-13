#SUBQUERY 
#IN
SELECT * FROM USER_1

1]
SELECT * FROM USER_1
WHERE U_ID=(SELECT U_ID FROM USER_1
            WHERE UNAME='SANKET_TAYDE')
            
2]
SELECT U_ID,UNAME FROM USER_1
WHERE U_ID IN(SELECT U_ID FROM LOGIN WHERE CITY='NASHIK')

---------------------------------------------------------------------------------------------------            
#ANY
1]
SELECT * FROM USER_1
WHERE AGE > ANY(SELECT AGE FROM USER_1 WHERE UNAME LIKE 'R%')

2]
SELECT M_ID,MSG_TEXT FROM MESSAGE
WHERE SENDER_ID>ANY(SELECT U_ID FROM USER_1 WHERE REACTIONTYPE='love')

3]
SELECT U_ID,POST_CONTENT FROM POST
WHERE U_ID>ANY(SELECT U_ID FROM USER_1 WHERE AGE=22)
--------------------------------------------------------------------------------------------------------

#ALL
1]
SELECT * FROM USER_1
WHERE AGE>ALL(SELECT AGE FROM USER_1 WHERE UNAME='HARSHADA_DANGE')

2]
SELECT * FROM MESSAGE
SELECT M_ID,MSG_TEXT,LENGTH(MSG_TEXT)AS MSG_LENGTH
FROM MESSAGE
WHERE LENGTH(MSG_TEXT)>ALL(SELECT LENGTH(MSG_TEXT) FROM MESSAGE WHERE SENDER_ID=105)

---------------------------------------------------------------------------------------------------------------------------------

#EXSIST

1]
SELECT U.U_ID,U.UNAME FROM USER_1 U
WHERE EXISTS(SELECT * FROM POST P WHERE P.U_ID=U.U_ID AND P.POST_IMAGE IS NOT NULL)

2]
SELECT * FROM GROUP1 G
WHERE EXISTS(SELECT ROLE FROM GROUP_MEMBER GM WHERE G.GROUP_ID=GM.GROUP_ID)

----------------------------------------------------------------------------------------------------------------------------

#ROWNUM
1]
SELECT * FROM(SELECT * FROM USER_1 ORDER BY AGE ASC)
WHERE ROWNUM<3
----------------------------------------------------------------------------------------------------------------------------------

#CO-RELATED SUBQUERY
1]
SELECT * FROM USER_1 U
WHERE 3=(SELECT COUNT(DISTINCT AGE)FROM USER_1 U2 WHERE U2.AGE>=U.AGE)

2]
SELECT * FROM POST
SELECT U.U_ID,U.UNAME,(SELECT MAX(POST_DATE)FROM POST P WHERE P.U_ID=U.U_ID)AS LAST_POST_DATE FROM USER_1 U

------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------

