DECLARE @backupPath varchar(100) = 'C:\DatabaseBackup\';
DECLARE @databaseName varchar(20) = 'OctopusDeploy';
DECLARE @currentTimeStamp varchar(30);
DECLARE @fullPath varchar(200);

SELECT @currentTimeStamp = format(CURRENT_TIMESTAMP, 'MM_dd_yyyy_hh_mm_ss');

Select @fullPath = (Select @backupPath + @databaseName + '_' + @currentTimeStamp + '.BAK');

--Select @fullPath;

BACKUP DATABASE @databaseName 
TO DISK = @fullPath
GO