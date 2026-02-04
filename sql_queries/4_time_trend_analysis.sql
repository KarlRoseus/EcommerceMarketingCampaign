-- Campaign-level efficiency analysis to examine the relationship between acquisition cost, ROI, and conversion rate

SELECT
    campaign_id,
    channel_used,
    campaign_type,
    acquisition_cost,
    roi,
    conversion_rate
FROM marketing_campaign_clean;
