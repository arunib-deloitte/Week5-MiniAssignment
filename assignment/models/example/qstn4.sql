{{ config(materialized='table') }}

select name,count(userid) as no_of_users from "ANALYTICS"."DBT"."BADGE_TABLE"
GROUP BY(name)
ORDER BY (count(userid))desc limit 10