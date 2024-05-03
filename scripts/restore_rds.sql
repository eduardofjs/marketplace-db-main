USE [master];
GO

exec msdb.dbo.rds_drop_database @db_name='Directto_TEST';

GO

exec msdb.dbo.rds_restore_database
	@restore_db_name='Directto_TEST',
	@s3_arn_to_restore_from='arn:aws:s3:::backup.marketplace.directto.io/Directto_DEV.bak';

GO

EXEC msdb.dbo.rds_task_status;