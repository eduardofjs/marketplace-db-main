# marketplace-db
O pojeto para gerenciamento do banco de dados com liquibase

# Liquibase
Para acessar o repositorio do liquibase digite o comando:

Windows:
```
cd .\liquibase\liquibase-4.12.0\test
```

Mac/Linux:
```
cd ./liquibase/liquibase-4.12.0/test
```

Mover o arquivo `liquibase.example.properties` para `liquibase.properties`

## Requisitos
- Permissão para criar e remover tabelas no schema public
- Permissão para criar constraints no schema public
- Permissao para selecionar, inserir e atualizar tabelas no schema public
- Permissão para criar schemas authdev e authtest
- Permissão para criar constraints no schema authdev e authtest
- Permissao para criar e remover tabelas no schema authdev e authtest
- Permissao para selecionar, inserir e atualizar tabelas no schema authdev e authtest

## Config
O arquivo de configuração do Liquibase `liquibase.properties` é onde se configura as credenciais do banco de dados e o host de acesso.

## Snapshot
Este comando deve ser utilizado apenas uma única vez. Se o arquivo db.changelog.mssql.sql já existir não é necessário executar este comando.

Windows:
```
.\liquibase --changeLogFile=db-changelog.mssql.sql --diffTypes="tables,functions,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints,data,storedprocedure,triggers,sequences,databasePackage,databasePackageBody" generateChangeLog
```

Mac/Linux:
```
./liquibase --changeLogFile=db-changelog.mssql.sql --diffTypes="tables,functions,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints,data,storedprocedure,triggers,sequences,databasePackage,databasePackageBody" generateChangeLog
```

## Update
Para fazer alterações no banco de dados deve-se criar um novo o arquivo `db-changelog-vx.x.x.sql` e depois executar o comando abaixo:

Windows:
```
.\liquibase update 
```

Mac/Linux:
```
./liquibase update 
```

## Rollback
Para fazer rollback para a ultima alteração:

Windows:
```
.\liquibase rollbackCount 1
```

Mac/Linux:
```
./liquibase rollbackCount 1
```


## Checksum
Se receber algum erro do tipo "Validation Failed: change set check sum", executar o comando abaixo para recalcular:

Windows:
```
.\liquibase clear-checksums
```

Mac/Linux:
```
./liquibase clear-checksums
```

# AWS RDS Backup

AWS does not permit backup/restore directly through the SSMS. It needs to enable backup/retore for the RDS instance and use AWS owned procedures such as:

- rds_backup_database – Back up a single database to an S3 bucket.
- rds_restore_database – Restore a single database from S3.
- rds_task_status – Track running backup and restore tasks.
- rds_cancel_task – Cancel a running backup or restore task.

## Reference
https://stackoverflow.com/questions/27034041/how-to-export-backup-db-from-sql-server-on-amazon-rds
https://aws.amazon.com/pt/blogs/aws/amazon-rds-for-sql-server-support-for-native-backuprestore-to-amazon-s3/
https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/SQLServer.Procedural.Importing.html
https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.SQLServer.Options.BackupRestore.html
https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-service.html
https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.SQLServer.Options.BackupRestore.html
