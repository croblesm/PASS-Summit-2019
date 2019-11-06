--------------------------------------------------------------------------------- 
-- DEMO 5 --
-- 9- Check SQL Server properties
---------------------------------------------------------------------------------

-- Getting SQL Server information
SELECT 
    SERVERPROPERTY('MachineName') InstanceName
    ,CASE LEFT(CONVERT(VARCHAR, SERVERPROPERTY('ProductVersion')),4) 
        WHEN '14.0' THEN 'SQL Server 2017'
        ELSE 'Newer than SQL Server 2017'
    END AS Version
    ,SERVERPROPERTY('ProductVersion') Build
    ,SERVERPROPERTY('ProductUpdateLevel') CU
    ,SERVERPROPERTY ('Edition') AS Edition
    ,SERVERPROPERTY('InstanceDefaultDataPath') DataPath
    ,SERVERPROPERTY('InstanceDefaultLogPath') LogPath;
    
-- Checking SQL Server services status
SELECT servicename ServiceName, status_desc Status from sys.dm_server_services;