--liquibase formatted sql

-- changeset fapinheiro:1.1.0-1
update dbo.ConfiguracaoGlobal
set CGL_PathImagem = 'C:\inetpubdirectto\api-marketplace-test\Imagens'
where CGL_Id = 8;
-- rollback update dbo.ConfiguracaoGlobal set CGL_PathImagem = 'D:\\Inetpub_Directto\\8082_Directto_API_TEST\\Imagens' where CGL_Id = 8;
