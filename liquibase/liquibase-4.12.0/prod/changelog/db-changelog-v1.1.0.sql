--liquibase formatted sql

-- changeset fapinheiro:1.1.0-1
update dbo.ConfiguracaoGlobal
set CGL_PathImagem = 'C:\inetpubdirectto\api-marketplace-prod\Imagens'
where CGL_Id = 8;
-- rollback update dbo.ConfiguracaoGlobal set CGL_PathImagem = 'D:\\Inetpub_Directto\\8081_Directto_API_PRD\\Imagens' where CGL_Id = 8;

-- changeset fapinheiro:1.1.0-2
update dbo.ConfiguracaoGlobal
set CGL_PathImagem = 'C:\inetpubdirectto\api-marketplace-prod\Imagens'
where CGL_Id = 1;
-- rollback update dbo.ConfiguracaoGlobal set CGL_PathImagem = 'D:\\Inetpub_Directto\\8081_Directto_API_PRD\\Imagens' where CGL_Id = 8;

-- changeset fapinheiro:1.1.0-3
update dbo.ConfiguracaoGlobal
set CGL_PathImagem = 'C:\inetpubdirectto\api-marketplace-prod\Imagens'
where CGL_Id = 1;
-- rollback update dbo.ConfiguracaoGlobal set CGL_PathImagem = 'D:\\Inetpub_Directto\\8081_Directto_API_PRD\\Imagens' where CGL_Id = 1;

-- changeset fapinheiro:1.1.0-4
update dbo.ConfiguracaoGlobal
set CGL_UnidadeRaiz = 'C:'
where CGL_Id = 1;
-- rollback update dbo.ConfiguracaoGlobal set CGL_UnidadeRaiz = 'D:' where CGL_Id = 1;
