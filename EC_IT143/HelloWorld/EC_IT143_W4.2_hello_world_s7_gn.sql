-- Step 7: Create stored procedure
CREATE OR ALTER PROCEDURE sp_load_hello_world
AS
BEGIN
    TRUNCATE TABLE hello_world_table;

    INSERT INTO hello_world_table (Message)
    SELECT Message
    FROM vw_hello_world;
END;
GO
