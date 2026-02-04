-- Campaign type performance analysis to compare conversion efficiency, ROI, and acquisition cost across campaign strategies

SELECT
    campaign_type,
    COUNT(DISTINCT campaign_id) AS campaigns,
    AVG(conversion_rate) AS avg_conversion_rate,
    AVG(roi) AS avg_roi,
    AVG(acquisition_cost) AS avg_acquisition_cost,
    ROUND(
        SUM(clicks)::numeric / NULLIF(SUM(impressions), 0),
        4
    ) AS click_through_rate
FROM marketing_campaign_clean
GROUP BY campaign_type
ORDER BY avg_roi DESC;
