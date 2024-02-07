SELECT
date_date,
sum(ads_cost) as ads_cost,
sum (impression) AS impression,
sum(click) as click
FROM
{{ref('int_campaigns')}}

GROUP BY date_date

