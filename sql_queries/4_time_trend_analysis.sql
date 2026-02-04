-- Monthly time trend analysis to evaluate changes in conversion rate, ROI, and spend over time

SELECT
    DATE_TRUNC('month', campaign_date) AS month,
    AVG(conversion_rate) AS avg_conversion_rate,
    AVG(roi) AS avg_roi,
    AVG(acquisition_cost) AS avg_acquisition_cost,
    SUM(clicks) AS total_clicks,
    SUM(impressions) AS total_impressions
FROM marketing_campaign_clean
GROUP BY DATE_TRUNC('month', campaign_date)
ORDER BY month;
