SELECT 
fd.date_date,
SUM(operational_margin - ads_cost) AS ads_margin
 ,SUM(fd.nb_transactions) AS nb_transactions
    ,ROUND(SUM(fd.revenue),0) AS revenue 
    ,ROUND(AVG(fd.revenue),1) AS average_basket
    ,ROUND(SUM(fd.margin),0) AS margin 
    ,ROUND(SUM(fd.operational_margin),0) AS operational_margin 
    ,ROUND(SUM(fd.purchase_cost),0) AS purchase_cost 
    ,ROUND(SUM(fd.shipping_fee),0) AS shipping_fee 
    ,ROUND(SUM(fd.logcost),0) AS logcost 
    ,ROUND(SUM(fd.ship_cost),0) AS ship_cost 
    ,SUM(fd.quantity) AS quantity 

FROM {{ref('finance_days')}} AS fd
LEFT JOIN {{ref('int_campaigns_days')}} AS cd 
ON fd.date_date = cd.date_date
GROUP BY fd.date_date

