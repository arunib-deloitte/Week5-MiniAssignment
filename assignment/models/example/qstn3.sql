{{ config(materialized='table') }}


SELECT body from "ANALYTICS"."DBT"."POST_TABLE"
WHERE PostTypeId=1 AND OwnerUserId IN
(SELECT id from "ANALYTICS"."DBT"."USER_TABLE"
WHERE displayname like '%nau%')
