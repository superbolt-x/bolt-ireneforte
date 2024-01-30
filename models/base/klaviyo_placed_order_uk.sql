{%- set klav_schema_name, klav_table_name = 'supermetrics_raw', 'klav_placed_orders' -%}

{%- set sho_schema_name, sho_table_name = 'shopify_base', 'shopify_uk_orders' -%}
{%- set sho_table_exists = check_source_exists(sho_schema_name, sho_table_name) %}

WITH klaviyo_data AS (
  SELECT 
    date, 
    campaign_id, 
    purchase_id::varchar AS order_id,
    sum(coalesce(shopify_placed_order,0)) as klav_orders,
    sum(coalesce(shopify_placed_order_value,0)) as klav_revenue
  FROM {{ source(klav_schema_name,klav_table_name) }}
  WHERE purchase_id != ''
  AND account_name = 'Irene Forte UK'
  AND campaign_id != ''
  AND shopify_placed_order > 0
  GROUP BY 1,2,3
  ORDER BY date ASC
)

, shopify_data AS (
  SELECT order_id::varchar, 
  datediff(day,customer_first_order_date,order_date) AS delay,
  CASE WHEN customer_order_index = 1 THEN 1 ELSE 0 END AS first_orders,
  CASE WHEN customer_order_index > 1 THEN 1 ELSE 0 END AS repeat_orders,
  CASE WHEN customer_order_index = 1 THEN total_revenue ELSE 0 END AS first_revenue,
  CASE WHEN customer_order_index > 1 THEN total_revenue ELSE 0 END AS repeat_revenue
  FROM {{ source(sho_schema_name,sho_table_name) }}
)

, placed_order_data AS (
  SELECT
  date, 
  campaign_id,
  sum(first_orders+repeat_orders) as total_orders,
  sum(first_orders) as first_orders,
  sum(repeat_orders) as repeat_orders,
  sum(first_revenue+repeat_revenue) as total_revenue,
  sum(first_revenue) as first_orders_revenue,
  sum(repeat_revenue) as repeat_orders_revenue
  FROM klaviyo_data 
  LEFT JOIN shopify_data USING(order_id)
  WHERE campaign_id != ''
  GROUP BY 1,2
)

SELECT *,
    campaign_id||date as unique_key
FROM placed_order_data
