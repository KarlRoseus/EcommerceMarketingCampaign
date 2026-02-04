-- Channel-level performance analysis to compare conversion efficiency, ROI, cost, and engagement across marketing channels

SELECT
    channel_used,
    COUNT(DISTINCT campaign_id) AS campaigns,
    AVG(conversion_rate) AS avg_conversion_rate,
    AVG(roi) AS avg_roi,
    AVG(acquisition_cost) AS avg_acquisition_cost,
    SUM(clicks) AS total_clicks,
    SUM(impressions) AS total_impressions,
    ROUND(
        SUM(clicks)::numeric / NULLIF(SUM(impressions), 0),
        4
    ) AS click_through_rate
FROM marketing_campaign_clean
GROUP BY channel_used
ORDER BY avg_roi DESC;
