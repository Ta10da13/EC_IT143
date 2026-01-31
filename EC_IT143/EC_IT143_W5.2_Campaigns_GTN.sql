/*
===========================================================
Script: EC_IT143_W5.2_MyFC_GTN.sql
Author: Gerald Tatenda Nyamangwende
Community: MyFC
Date: 2026-01-31
Purpose: Answers to 4 questions for Community 1 (campaigns)
===========================================================
*/

-- Question 1 
-- Who created the campaigns with the highest conversion_rate?
-- Fields needed: campaign_id, campaign_name, conversion_rate
SELECT campaign_id, campaign_name, conversion_rate
FROM campaigns
ORDER BY conversion_rate DESC;

-- Question 2
-- Which campaign_type generated the highest ROI?
-- Fields needed: campaign_type, roi
SELECT campaign_type, SUM(roi) AS total_roi
FROM campaigns
GROUP BY campaign_type
ORDER BY total_roi DESC;

-- Question 3
-- How many conversions did each campaign achieve?
-- Fields needed: campaign_name, conversions
SELECT campaign_name, conversions
FROM campaigns
ORDER BY conversions DESC;

-- Question 4 
-- What is the click-through rate (clicks/impressions) for each campaign?
-- Fields needed: campaign_name, clicks, impressions
SELECT campaign_name,
       clicks,
       impressions,
       CAST(clicks AS FLOAT)/impressions AS click_through_rate
FROM campaigns
WHERE impressions > 0
ORDER BY click_through_rate DESC;
