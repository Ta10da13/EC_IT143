-- Step 5.2: Add primary key
ALTER TABLE hello_world_table
ADD hello_id INT IDENTITY(1,1) PRIMARY KEY;
GO
