-- Step 6: Load data from view
TRUNCATE TABLE hello_world_table;

INSERT INTO hello_world_table (Message)
SELECT Message
FROM vw_hello_world;
GO
