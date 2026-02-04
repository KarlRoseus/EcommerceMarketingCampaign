DROP TABLE IF EXISTS marketing_campaign_clean;

CREATE TABLE marketing_campaign_clean AS
SELECT
    campaign_id,
    company,
    campaign_type,
    target_audience,
    duration,
    channel_used,
    conversion_rate::numeric AS conversion_rate,
    REPLACE(REPLACE(acquisition_cost, '$', ''), ',', '')::numeric AS acquisition_cost,
    roi::numeric AS roi,
    location,
    language,
    clicks::integer AS clicks,
    impressions::integer AS impressions,
    engagement_score::integer AS engagement_score,
    customer_segment,
    date::date AS campaign_date
FROM marketing_campaigns;
