{{ config (
    alias = target.database + '_facebbok_ad_performance'
)}}

SELECT 
campaign_name,
campaign_id,
campaign_effective_status,
campaign_type_default,
adset_name,
adset_id,
adset_effective_status,
audience,
ad_name,
ad_id,
ad_effective_status,
visual,
copy,
format_visual,
visual_copy,
date,
date_granularity,
spend,
impressions,
link_clicks,
add_to_cart,
purchases,
revenue,
CASE WHEN campaign_name ~* 'sb' AND campaign_name ~* '- us' THEN 'US'
     WHEN campaign_name ~* 'sb' AND campaign_name ~* '- uk' THEN 'UK'
     WHEN campaign_name ~* 'sb' AND campaign_name ~* '- eu' THEN 'EU'
    ELSE 'Others'
END AS region,
CASE WHEN campaign_name ~* 'sb' AND campaign_name ~* 'Prospecting' AND campaign_name ~* 'UK' THEN 'Prospecting UK'
     WHEN campaign_name ~* 'sb' AND campaign_name ~* 'Retargeting' AND campaign_name ~* 'UK' THEN 'Retargeting UK'
     WHEN campaign_name ~* 'sb' AND campaign_name ~* 'Prospecting' AND campaign_name ~* 'US' THEN 'Prospecting US'
     WHEN campaign_name ~* 'sb' AND campaign_name ~* 'Retargeting' AND campaign_name ~* 'US' THEN 'Retargeting US' 
     WHEN campaign_name ~* 'sb' AND campaign_name ~* 'Prospecting' AND campaign_name ~* 'EU' THEN 'Prospecting EU'
     WHEN campaign_name ~* 'sb' AND campaign_name ~* 'Retargeting' AND campaign_name ~* 'EU' THEN 'Retargeting EU'
     ELSE 'Others'
END AS campaign_type
FROM {{ ref ('facebook_performance_by_ad') }} --reporting.ireneforte_facebook_performance_by_ad
