TRUNCATE TABLE campaigns_total_table;

INSERT INTO campaigns_total_table (TotalCampaigns)
SELECT TotalCampaigns
FROM vw_campaigns_total;
