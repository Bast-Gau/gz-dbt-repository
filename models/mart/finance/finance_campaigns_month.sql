SELECT 
DATE_TRUNC(date_date, MONTH) AS date_month,
sum(ads_margin) AS ads_margin,
SUM(nb_transactions) AS nb_transactions
    ,ROUND(SUM(revenue),0) AS revenue 
    ,ROUND(AVG(revenue),1) AS average_basket
    ,ROUND(SUM(margin),0) AS margin 
    ,ROUND(SUM(operational_margin),0) AS operational_margin 
    ,ROUND(SUM(purchase_cost),0) AS purchase_cost 
    ,ROUND(SUM(shipping_fee),0) AS shipping_fee 
    ,ROUND(SUM(logcost),0) AS logcost 
    ,ROUND(SUM(ship_cost),0) AS ship_cost 
    ,SUM(quantity) AS quantity 

FROM {{ref('finance_campaigns_day')}}

GROUP BY date_month
ORDER BY date_month DESC 