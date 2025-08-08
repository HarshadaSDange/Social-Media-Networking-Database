#COUNT /GROUP BY/HAVING
1]
SELECT U_ID,COUNT(FRIENDS_ID)AS NON_PENDING_FRIENDS_COUNT
FROM FRIENDS
WHERE STATUS !='PENDING'
GROUP BY U_ID
HAVING COUNT(FRIENDS_ID)>1
------------------------------------------------------------------------------------------
#COUNT
1]
SELECT PRIVACY,COUNT(*)AS TOTAL_POSTS FROM POST
GROUP BY PRIVACY

2]
SELECT SENDER_ID,COUNT(*)AS TOTAL_MESSAGES
FROM MESSAGE
GROUP BY SENDER_ID
------------------------------------------------------------------------------------------
#HAVING
1]
SELECT SENDER_ID,COUNT(*)AS TOTAL_MESSAGES
FROM MESSAGE
GROUP BY SENDER_ID
HAVING COUNT(*)>3

2]
SELECT U_ID,COUNT(*)AS TOTAL_LOGINS
FROM LOGIN
GROUP BY U_ID
HAVING COUNT(*)=1
-------------------------------------------------------------------------------------
#AVG
1]
SELECT AVG(AGE)AS AVERAGE_USER_AGE
FROM USER_1

2]
SELECT GENDER,AVG(AGE)AS AVERAGE_AGE
FROM USER_1
GROUP BY GENDER
------------------------------------------------------------------------------------------
#SUM
SELECT SUM(AGE)AS TOTAL_AGE
FROM USER_1

--------------------------------------------------------------------------------------------
#MIN
1]
SELECT MIN(POST_DATE)AS FIRST_POST_DATE
FROM POST

2]
SELECT MIN(LOGIN_DATE_TIME) AS EARLIEST_LOGIN
FROM LOGIN
-------------------------------------------------------------------------------
#MAX
SELECT MAX(SENDAT)AS LATEST_MESSAGE
FROM MESSAGE
-----------------------------------------------------------------------------
#DISTINCT
1]
SELECT DISTINCT PRIVACY
FROM POST

2]
SELECT DISTINCT SENDER_ID
FROM MESSAGE
-----------------------------------------------------------------------------------
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
