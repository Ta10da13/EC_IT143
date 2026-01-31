CREATE OR ALTER VIEW vw_campaigns_total
AS
SELECT COUNT(*) AS TotalCampaigns
FROM campaigns;
GO
