
#SELECT 
SELECT * FROM USER_1
SELECT UNAME,EMAIL FROM USER_1

SELECT * FROM PHOTOS
SELECT CAPTION,UPLOAD_DATE,IMAGE_URL FROM PHOTOS
---------------------------------------------------------------------------------------------------------------------------------------
#WHERE
1]
SELECT * FROM MESSAGE
WHERE SENDER_ID=106

2]
SELECT * FROM POST_LIKES
WHERE POST_ID=31 
-------------------------------------------------------------------------------------------------------------------------------------------
#BETWEEN AND
1]
SELECT * FROM PRIVACY1
SELECT LID,ACCOUNT_TYPE FROM PRIVACY1
WHERE LID BETWEEN 3 AND 12

2]
SELECT * FROM LOGIN
WHERE ALLOW_AGE BETWEEN 18 AND 22
-----------------------------------------------------------------------------------------------------------------------------------------------
#LIKE
1]
SELECT * FROM USER_1
WHERE UNAME LIKE 'P%'
----------------------------------------------------------------------------------------------------------------------------------------------------
#OR
1]
SELECT * FROM POST
WHERE POST_DATE ='25-JAN-25' OR POST_CONTENT LIKE 'COFFE TIME'
----------------------------------------------------------------------------------------------------------------------------------------------------
#ORDER BY
1]
SELECT * FROM POST
ORDER BY POST_DATE DESC

2]
SELECT * FROM MESSAGE
ORDER BY SENDAT ASC
----------------------------------------------------------------------------------------------------------------------------------------------------------