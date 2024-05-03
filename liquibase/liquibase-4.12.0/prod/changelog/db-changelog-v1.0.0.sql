--liquibase formatted sql

-- changeset fapinheiro:1.0.0-1
update dbo.ConfiguracaoGlobal
set  CGL_UrlImagem = 'https://api.marketplace.directto.io/Imagens'
where CGL_Id = 1;
-- rollback update dbo.ConfiguracaoGlobal set CGL_UrlImagem = 'https://34.200.95.85:8081/Imagens' where CGL_Id = 1;

-- changeset fapinheiro:1.0.0-2
update dbo.ConfiguracaoGlobal
set  CGL_UrlWEB = 'https://marketplace.directto.io/'
where CGL_Id = 1;
-- rollback update dbo.ConfiguracaoGlobal set CGL_UrlWEB = 'http://directto-web-app.herokuapp.com/' where CGL_Id = 1;