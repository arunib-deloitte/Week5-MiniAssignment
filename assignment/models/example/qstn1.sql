{{ config(materialized='table') }}


SELECT id, displayname, reputation
FROM "ANALYTICS"."DBT"."USER_TABLE"
ORDER BY reputation DESC LIMIT 10