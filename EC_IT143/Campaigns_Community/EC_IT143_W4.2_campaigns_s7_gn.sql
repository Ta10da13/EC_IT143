CREATE OR ALTER PROCEDURE sp_load_campaigns_total
AS
BEGIN
    TRUNCATE TABLE campaigns_total_table;

    INSERT INTO campaigns_total_table (TotalCampaigns)
    SELECT TotalCampaigns
    FROM vw_campaigns_total;
END;
GO
