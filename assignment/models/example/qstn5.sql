{{ config(materialized='table') }}


SELECT u.id,u.displayname, u.reputation,p.posttypeid
FROM ANALYTICS.DBT.USER_TABLE as u
INNER JOIN ANALYTICS.DBT.POST_TABLE as p
ON u.id=p.owneruserid
WHERE p.PostTypeId=1 AND u.reputation>75000