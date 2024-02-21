--First example using regexp_substr
SELECT 
MEMBERSHIP_NAME
,regexp_substr(MEMBERSHIP_NAME,'[a].{2}') AS SUBMEMBERSHIP_NAME 
,MEMBERSHIP_LASTNAME
,regexp_substr(MEMBERSHIP_DUE,'^[1-6]\d+') AS SUBMEMBERSHIP_DUE
,MEMBERSHIP_DUE
FROM membership

--Second example using regexp_substr
SELECT 
MEMBERSHIP_NAME
,MEMBERSHIP_LASTNAME
,MEMBERSHIP_DUE
,MEMBERSHIP_DATE
,regexp_substr(MEMBERSHIP_DATE,'[1-6]{1,2}$') AS SUBMEMBERSHIP_DATE
FROM membership

--First example using regexp_replace
SELECT 
MEMBERSHIP_NAME || '-' || MEMBERSHIP_LASTNAME
,regexp_replace(MEMBERSHIP_NAME || '-' || MEMBERSHIP_LASTNAME,'o+',' (**found**) ',4) AS RESULT
FROM membership

--Second example using regexp_replace
SELECT  
regexp_replace('The white fox jump over the lazy dog','fox','SUPER CAT',1) AS RESULT 
FROM dual