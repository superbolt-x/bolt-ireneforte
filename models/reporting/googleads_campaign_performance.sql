{{ config (
    alias = target.database + '_googleads_campaign_performance'
)}}

SELECT 
account_id,
campaign_name,
campaign_id,
campaign_status,
campaign_type_default,
date,
date_granularity,
spend,
impressions,
clicks,
conversions as purchases,
conversions_value as revenue,
search_impression_share,
googleshoppingappaddtocart as add_to_cart,
search_budget_lost_impression_share,
search_rank_lost_impression_share,
CASE WHEN campaign_name ~* 'sb' AND campaign_name ~* '- us' THEN 'US'
     WHEN campaign_name ~* 'sb' AND campaign_name ~* '- uk' THEN 'UK'
     WHEN campaign_name ~* 'sb' AND campaign_name ~* '- eu' THEN 'EU'
END AS region
FROM {{ ref ('googleads_performance_by_campaign') }}
