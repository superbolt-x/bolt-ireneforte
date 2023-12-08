{{ config (
    alias = target.database + '_facebook_ad_performance'
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
revenue_7_d_click,
purchases_7_d_click,
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
END AS campaign_type,
CASE WHEN ad_name = 'Static - Age-Defying Secret Ingredient - Serums & Oils PLP - Hero Product Approach - NonLifestyle - Face Serum' AND region = 'US' THEN 'https://fb.me/2gA3bFCbmp9SznF'
    WHEN ad_name = 'Static - Italy\'s Best Kept Skincare Secret Customer Quote - Masks & Scrubs PLP - Customer Testimonial Approach - NonLifestyle - Face Mask' AND region = 'US' THEN 'https://fb.me/1GNFra8N1nmxAZB'
    WHEN ad_name = 'Video -  Shop Pistachio Lip Balm B Roll - Pistachio Lip Balm PDP - Brand Intro Approach - Lifestyle - Face' AND region = 'US' THEN 'https://fb.me/1OhPDWa1MvyaWcK'
    WHEN ad_name = 'Video - Shop Pistachio Lip Balm B Roll - Pistachio Lip Balm PDP - Brand Intro Approach - Lifestyle - Face' AND region = 'US' THEN 'https://fb.me/1FJBHgt2zyAp8NV'
    WHEN ad_name = 'Video - Updated Hibiscus Night Cream Irene Footage - Face PLP - Brand Intro Approach - Lifestyle - Face Cream - Copy' AND region = 'US' THEN 'https://fb.me/1N41OZvZYxRVBq9'
    WHEN ad_name = 'Static - Italy\'s Age-Defying Skincare Breakthrough - Moisturizers PLP - Customer Testimonial Approach - NonLifestyle - Face Cream' AND region = 'US' THEN 'https://fb.me/20Jn8U94WjK6lll'
    WHEN ad_name = 'Static - Natural Skincare Spa Heritage - Face PLP -  Approach - Lifestyle - Face Mask - Copy' AND region = 'US' THEN 'https://fb.me/1OpKaPhwpEvJMjF'
    WHEN ad_name = 'Video - Natural Age-Defying Skincare - Hibiscus Night Cream PDP - Myoxinol Education Approach - Lifestyle - Face - Halloween Deal Copy deleted' AND region = 'US' THEN 'https://fb.me/1Oblx16rAgiZPkF'
    WHEN ad_name = 'Static - New Beauty Best Night Cream - Moisturizers PLP - Press Award Approach - NonLifestyle - Face Cream - Product Tag - Copy' AND region = 'US' THEN 'https://fb.me/22FCeXz1HPehPPo'
    WHEN ad_name = 'Static - Organic Ingredients Clinically Proven Results Ferri & Irene - Face PLP - Brand Intro Approach - Lifestyle - Face' AND region = 'US' THEN 'https://fb.me/1NN7Sfk3b5GOIkP'
    WHEN ad_name = 'Static - New Beauty\'s Pick for Best Night Cream - Moisturizers PLP - Press Award Approach - NonLifestyle - Face Cream' AND region = 'US' THEN 'https://fb.me/1RqVxCK66m5MmDW'
    WHEN ad_name = 'Static - Skincare guided by 35 years of research and development Ferri & Irene - Homepage - Brand Intro Approach - Lifestyle - Face/Body - Halloween Deal Copy' AND region = 'US' THEN 'https://fb.me/1UW02jeiG6PZTVV'
    WHEN ad_name = 'Static - Shop 25% Off Sitewide Award Winning Italian Skincare - Homepage - Black Friday Ad Launch - NonLifestyle - Face - Rose Oil' AND region = 'US' THEN 'https://fb.me/1NjRnzJ8H3MDrtI'
    WHEN ad_name = 'Video - Luxury Spa Skincare At Home B Roll - Homepage - Brand Intro Approach - Lifestyle - Face/Body' AND region = 'US' THEN 'https://fb.me/1MJQLawriQHH4NU'
    WHEN ad_name = 'Carousel - Forte Idratante Routine - Multiple PLP - Routines Approach - NonLifestyle - Face - Copy' AND region = 'US' THEN 'https://fb.me/1RIprSjQD3ZGm7a'
    WHEN ad_name = 'Static - Up to 25% off Award Winning Sicilian Skincare - Homepage - Black Friday Ad Launch - NonLifestyle - Face - Rose Oil' AND region = 'US' THEN 'https://fb.me/1Nnv7dzQcSvPInA'
    WHEN ad_name = 'Video - Our Black Friday Event - UGC - Limited Time Offer Banner - 25% off messaging - Black Friday Ad Launch - Homepage - Face - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/1RCXgHeW5oeKFgb'
    WHEN ad_name = 'Static - Our Biggest Offer of the Year - Homepage - 25% off messaging - Black Friday ad launch - Lifestyle - Face - Product Tag - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/1Vz2N2vByJDk9Ww'
    WHEN ad_name = 'Video - Olive Eye Cream Irene Footage - Face PLP - Brand Intro Approach - Lifestyle - Face Cream - Copy' AND region = 'US' THEN 'https://fb.me/rkgiBGEt1b6AEym'
    WHEN ad_name = 'Static - Italy\'s Age-Defying Skincare Breakthrough - Hibiscus Night Cream PDP - Customer Testimonial Approach - NonLifestyle - Face Cream - Halloween Promo Copy' AND region = 'US' THEN 'https://fb.me/1H9QLbxpKvx3QKJ'
    WHEN ad_name = 'Static - Age-Defying Secret Ingredient - Hibiscus Serum PDP - Hero Product Approach - NonLifestyle - Face Serum' AND region = 'US' THEN 'https://fb.me/1WeZ874B0PFU40p'
    WHEN ad_name = 'Video - Allure-Approved Lip Treatment B Roll - Pistachio Lip Balm PDP - Press Approach - Lifestyle - Face' AND region = 'US' THEN 'https://fb.me/1GPYXH4M2A20OVs'
    WHEN ad_name = 'Static - Transform your Lips with Pistachio Lip Balm - Pistachio Lip Balm PDP - Product Tag - NonLifestyle - Lip Balm - Face' AND region = 'US' THEN 'https://fb.me/1MHpNyaFET8xLos'
    WHEN ad_name = 'bf copy Video - Cleanse Clarify and Soothe - Lifestyle - Product Tag - Face - Lavender Cleanser PDP - Customer Testimonial Approach - Lavender Cleanser' AND region = 'US' THEN 'https://fb.me/1Odonds7tW8lJUd'
    WHEN ad_name = 'Video - See Dramatically Age Defying Results Phyto - Phyto PDP - Lifestyle - UGC - Phytomelatonin Launch' AND region = 'US' THEN 'https://fb.me/1NOA8DDiEEXE5S4'
    WHEN ad_name = 'Video - Pistachio Face Mask Irene Footage - Face PLP - Brand Intro Approach - Lifestyle - Face Mask - Copy' AND region = 'US' THEN 'https://fb.me/1UtrlWGpSOZFEGW'
    WHEN ad_name = 'Static - Shop 25% Off Sitewide Award Winning Italian Skincare - Black Friday Ad Launch - Homepage - NonLifestyle - Face - Rose Oil' AND region = 'US' THEN 'https://fb.me/1WC4AbTx0UFVCt4'
    WHEN ad_name = 'Video - Our Black Friday Event - UGC - Limited Time Offer Banner - 25% off messaging - Black Friday Ad Launch - Phyto PDP - Face - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/23p3uMTyXWkkNVr'
    WHEN ad_name = 'Static - New Beauty Best Night Cream - Hibiscus Night Cream PDP - Press Award Approach - NonLifestyle - Face Cream - Copy' AND region = 'US' THEN 'https://fb.me/28QP0MXwhsIIFmS'
    WHEN ad_name = 'Video - Our Black Friday Event - UGC - Limited Time Offer Banner - 25% off messaging - Black Friday Ad Launch - Black Friday Conversion Focused Instant Experience - Face - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/1Skdxc16ZkbSrLF'
    WHEN ad_name = 'GIF - A Superhero Serum Phyto - Phyto PDP - NonLifestyle - Face - Phytomelatonin Launch - New Banner - 35 Years Seal - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/25stMg26Rv9Ladq'
    WHEN ad_name = 'Video - Meet The Gamechanger Phyto - Phyto PDP - Lifestyle - Face - Phytomelatonin Launch - Phytomelatonin' AND region = 'US' THEN 'https://fb.me/1Ul1J3nkArux5MP'
    WHEN ad_name = 'Video - Strong in Effect Gentle in Action Phyto - Lifestyle - Face - Phyto PDP - UGC - Phytomelatonin Launch - Phytomelatonin' AND region = 'US' THEN 'https://fb.me/beLK4dsP7s0yZN'
    WHEN ad_name = 'GIF - A Superhero Serum Phyto - Phyto PDP - NonLifestyle - Face - Phytomelatonin Launch - New Banner - 35 Years Seal - Conversion Focused Instant Experience - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/1MRsmRpOkXUQPm2'
    WHEN ad_name = 'Video - Cleanse Clarify and Soothe - Lifestyle - Face - Customer Testimonial Approach - Conversion Focused Instant Experience - Lavender Cleanser' AND region = 'US' THEN 'https://fb.me/1NcldX6hgpf4zJH'
    WHEN ad_name = 'Static - Our Biggest Offer of the Year - Homepage - 25% off messaging - Black Friday ad launch - Lifestyle - Face - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/bQ2KqxK8wp2P1a'
    WHEN ad_name = 'Static - Our Biggest Offer of the Year - Homepage - 25% off messaging - Product Tag - Black Friday ad launch - Lifestyle - Face - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/1N2KHATOli7wh0c'
    WHEN ad_name = 'Static - Our Biggest Offer of the Year - Black Friday Conversion Focused Instant Experience - 25% off messaging - Black Friday ad launch - Lifestyle - Face - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/21kUZY6rmThRpfg'
    WHEN ad_name = 'Carousel - Forte Idratante Routine - Multiple PLP - Routines Approach - Conversion Focused Instant Experience - NonLifestyle - Face' AND region = 'US' THEN 'https://fb.me/1OqBUKl2kJRUFzF'
    WHEN ad_name = 'bf copy GIF - A Superhero Serum Phyto - Phyto PDP - NonLifestyle - Face - Phytomelatonin Launch - New Banner - 35 Years Seal - BF Conversion Focused Instant Experience - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/2arf0Hczcr4CVnw'
    WHEN ad_name = 'Static - Up to 25% off Award Winning Sicilian Skincare - Black Friday Conversion Focused Instant Experience - Black Friday Ad Launch - NonLifestyle - Face - Rose Oil' AND region = 'US' THEN 'https://fb.me/bF61mn0Q3rFNMC'
    WHEN ad_name = 'Static - Lavender Foam Cleanser Callouts - Lavender Cleanser PDP - NonLifestyle - Product Tag - Face - Callout Approach - Lavender Cleanser' AND region = 'US' THEN 'https://fb.me/2RW724VcitqSW8N'
    WHEN ad_name = 'bf copy Video - Meet The Gamechanger Phyto - Phyto PDP - Lifestyle - Face - Phytomelatonin Launch - Product Tag - Phytomelatonin Serum' AND region = 'US' THEN 'https://fb.me/23p3uMTyXWkkNVr'
    WHEN ad_name = 'Carousel - Forte Illuminante Routine - Multiple PLP - Routines Approach - Conversion Focused Instant Experience - NonLifestyle - Face - 20% off iteration' AND region = 'US' THEN 'https://fb.me/1OxdSR9j6RCjbiF'
    WHEN ad_name = 'bf copy Video - Luxury Spa Skincare At Home B Roll - Homepage - Brand Intro Approach - BF Conversion Focused Instant Experience - Lifestyle - Face/Body' AND region = 'US' THEN 'https://fb.me/279awypk3vQj4nS'
    WHEN ad_name = 'Static - Up to 25% off Award Winning Italian Skincare - Black Friday Ad Launch - Homepage - NonLifestyle - Face - Rose Oil' AND region = 'US' THEN 'https://fb.me/1GpyqG87blMG01r'
    WHEN ad_name = 'bf copy Carousel - Forte Idratante Routine - Multiple PLP/PDP - Routines Approach - NonLifestyle - Face' AND region = 'US' THEN 'https://fb.me/aieWHdNJreyT3q'
    WHEN ad_name = 'Static - Italy\'s Best Kept Skincare Secret Customer Quote - Masks & Scrubs PLP - Customer Testimonial Approach - Conversion Focused Instant Experience - NonLifestyle - Face Mask' AND region = 'US' THEN 'https://fb.me/23hRj51tLS7Yr7p'
    WHEN ad_name = 'Static - Up to 25% off Award Winning Italian Skincare - Homepage - Black Friday Ad Launch - NonLifestyle - Face - Rose Oil' AND region = 'US' THEN 'https://fb.me/1RpPPkX6xU0rd2w'
    WHEN ad_name = 'Static - Clarify And Refine Elle Green Beauty Stars - Masks & Scrubs PLP - Press Award Approach - NonLifestyle - Face Scrub' AND region = 'US' THEN 'https://fb.me/1RMUXfzjUPPzkE2'
    WHEN ad_name = 'Static - Clarify And Refine Elle Green Beauty Stars - Apricot Penta-Acid Polish PDP - Press Award Approach - NonLifestyle - Face Scrub' AND region = 'US' THEN 'https://fb.me/alWG4i4rDIPAIT'
    WHEN ad_name = 'Carousel - Forte Illuminante Routine - BF Messaging - Multiple PLP - Routines Approach - Black Friday Conversion Focused Instant Experience - NonLifestyle - Face - 20% off iteration' AND region = 'US' THEN 'https://fb.me/2bfHR2iOqrIBgxd'
    WHEN ad_name = 'Video - The Mediterranean Diet For Your Skin - Homepage - Brand Intro Approach - Lifestyle - Face/Body' AND region = 'US' THEN 'https://fb.me/1MKhaqkzRqhe7ZP'
    WHEN ad_name = 'Static - Age-Defying Secret Ingredient - Serums & Oils UK PLP - Hero Product Approach - NonLifestyle - Face Serum' AND region = 'UK' THEN 'https://fb.me/1FxnVPrVCLZdCR8'
    WHEN ad_name = 'Video - Pistachio Face Mask Irene Footage - UK Face PLP - Brand Intro Approach - Lifestyle' AND region = 'UK' THEN 'https://fb.me/1RFGoK7ZpSgsx1f'
    WHEN ad_name = 'Video -  Shop Pistachio Lip Balm B Roll - Pistachio Lip Balm UK PDP - Brand Intro Approach - Lifestyle - Face - Copy' AND region = 'UK' THEN 'https://fb.me/1RagmCb8U5n8ePP'
    WHEN ad_name = 'Static - Natural Skincare Spa Heritage - UK Homepage -  Approach - Lifestyle - Face Mask - Copy' AND region = 'UK' THEN 'https://fb.me/raiSDRFAYmITrf8'
    WHEN ad_name = 'Static - Italy\'s Best Kept Skincare Secret Customer Quote - UK Masks & Scrubs PLP - Customer Testimonial Approach - NonLifestyle - Face Mask' AND region = 'UK' THEN 'https://fb.me/1RDaXsneIlH8Fso'
    WHEN ad_name = 'Video - Luxury Spa Skincare At Home B Roll - UK Homepage - Brand Intro Approach - Lifestyle - Face/Body' AND region = 'UK' THEN 'https://fb.me/1GCGauPQzCaUOLS'
    WHEN ad_name = 'Static - Save £65 - UK Myoxinol Trio PDP - Promo - NonLifestyle - Face/Body' AND region = 'UK' THEN 'https://fb.me/aHDVPFELc3I3IV'
    WHEN ad_name = 'Static - Organic Ingredients Clinically Proven Results Ferri & Irene - UK Face PLP - Brand Intro Approach - Lifestyle - Face' AND region = 'UK' THEN 'https://fb.me/22JoDi2ZiroACuz'
    WHEN ad_name = 'Static - Save 30% - UK Myoxinol Trio PDP - Promo - NonLifestyle - Face/Body' AND region = 'UK' THEN 'https://fb.me/2QqXwe0PyfZtTP3'
    WHEN ad_name = 'Static - Italy\'s Age-Defying Skincare Breakthrough - Moisturizers PLP - Customer Testimonial Approach - NonLifestyle - Face Cream' AND region = 'UK' THEN 'https://fb.me/1SDaB3kMi6evK1O'
    WHEN ad_name = 'Static - Italy\'s Best Kept Skincare Secret Customer Quote - Masks & Scrubs PLP - Customer Testimonial Approach - NonLifestyle - UK Homepage - Product Tag' AND region = 'UK' THEN 'https://fb.me/1UGoNuN9qn4bJ04'
    WHEN ad_name = 'Static - Shop 25% Off Sitewide Award Winning Italian Skincare - Black Friday Ad Launch - UK Homepage - NonLifestyle - Face - Rose Oil' AND region = 'UK' THEN 'https://fb.me/1FikWrZ4S1VjsGg'
    WHEN ad_name = 'Video - Our Black Friday Event - UGC - Limited Time Offer Banner - 25% off messaging - UK Black Friday Ad Launch - UK Homepage - Face - Phytomelatonin Serum' AND region = 'UK' THEN 'https://fb.me/1NZfTb0hz1tJsmy'
    WHEN ad_name = 'Static - Skincare guided by 35 years of research and development Ferri & Irene - UK Homepage - Brand Intro Approach - Lifestyle - Face/Body' AND region = 'UK' THEN 'https://fb.me/1Gr2XXXaQlcLqPN'
    WHEN ad_name = 'Static - Our Biggest Offer of the Year - Homepage - 25% off messaging - UK Black Friday ad launch - Lifestyle - Face - Product Tag - Phytomelatonin Serum' AND region = 'UK' THEN 'https://fb.me/rk8sZ9ZeqLScXEg'
    WHEN ad_name = 'Static - Up to 25% off Award Winning Italian Skincare - Black Friday Ad Launch - UK Homepage - NonLifestyle - Face - Rose Oil' AND region = 'UK' THEN 'https://fb.me/1MRBHhRZyJF593e'
    WHEN ad_name = 'Video - Updated Hibiscus Night Cream Irene Footage - Face PLP - Brand Intro Approach - Lifestyle - UK Homepage' AND region = 'UK' THEN 'https://fb.me/2LBJTnLbTsDULub'
    WHEN ad_name = 'Static - Our Biggest Offer of the Year - UK Black Friday Conversion Focused Instant Experience - 25% off messaging - UK Black Friday ad launch - Lifestyle - Face - Phytomelatonin Serum' AND region = 'UK' THEN 'https://fb.me/1Vj9R7MQnMSEKEG'
    WHEN ad_name = 'Static - Up to 25% off Award Winning Sicilian Skincare - Black Friday Ad Launch - NonLifestyle - Face - Rose Oil' AND region = 'UK' THEN 'https://fb.me/26lB4Ma0iF6NOiU'
    WHEN ad_name = 'Video - Our Black Friday Event - UGC - Limited Time Offer Banner - 25% off messaging - UK Black Friday Ad Launch - UK Black Friday Conversion Focused Instant Experience - Face - Phytomelatonin Serum' AND region = 'UK' THEN 'https://fb.me/1QfdNeYTZc0XEra'
    WHEN ad_name = 'Carousel - Forte Idratante Routine - UK Homepage - Routines Approach - NonLifestyle - Face - Product Tag' AND region = 'UK' THEN 'https://fb.me/1GJj5nT4LEgLLRV'
    WHEN ad_name = 'Video - Olive Eye Cream Irene Footage - UK Face PLP - Brand Intro Approach - Lifestyle - Face Cream - Copy' AND region = 'UK' THEN 'https://fb.me/1QfGtuD2KwwKRe4'
    WHEN ad_name = 'Static - Our Biggest Offer of the Year - UK Homepage - 25% off messaging - UK Black Friday ad launch - Lifestyle - Face - Phytomelatonin Serum' AND region = 'UK' THEN 'https://fb.me/1GHTp50BkAAi649'
    WHEN ad_name = 'Static - Up to 25% off Award Winning Sicilian Skincare - Black Friday Ad Launch - UK Homepage - NonLifestyle - Face - Rose Oil' AND region = 'UK' THEN 'https://fb.me/1FqbfQmOjnPuqgP'
    WHEN ad_name = 'Video - Meet The Gamechanger Phyto - Phyto PDP - Lifestyle - Face - Phytomelatonin Launch - Phytomelatonin - UK - UK Black Friday Conversion Focused Instant Experience' AND region = 'UK' THEN 'https://fb.me/21WU1L8zKrEc3jl'
    WHEN ad_name = 'Carousel - Forte Idratante Routine - BF Messaging - Multiple PLP/PDP - Routines Approach -UK Black Friday Conversion Focused Instant Experience - NonLifestyle - Face' AND region = 'UK' THEN 'https://fb.me/1OL5DpBR0clf4C3'
END AS preview_link
FROM {{ ref ('facebook_performance_by_ad') }}
