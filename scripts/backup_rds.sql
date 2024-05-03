USE [master];
GO

exec msdb.dbo.rds_backup_database
	@source_db_name='Directto_TEST',
	@s3_arn_to_backup_to='arn:aws:s3:::backup.marketplace.directto.io/Directto_DEV.bak';

GO

EXEC msdb.dbo.rds_task_status;