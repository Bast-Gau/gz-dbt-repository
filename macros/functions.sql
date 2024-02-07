{% macro margin_percent (turnover,purchase_cost)%}
ROUND(SAFE_DIVIDE({{ turnover }} - {{ purchase_cost }} / {{ turnover }}) * 100,2) AS margin_percent
{% endmacro %}