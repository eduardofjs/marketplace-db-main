
delete from dbo.OfertaxDocumento
where OXD_OfertaId in (select OFE_Id from dbo.oferta where OFE_UsuarioInsercaoId = 133);

delete from dbo.OfertaNegociacaoxDocumento
where OND_OfertaNegociacaoId in (
select OFN_Id from dbo.OfertaNegociacao
where OFN_OfertaxQuantidadeProdutoId in (select OXQ_Id from dbo.OfertaxQuantidadeProduto
where OXQ_OfertaId in (select OFE_Id from dbo.oferta where OFE_UsuarioInsercaoId = 133)));

delete from dbo.EtapaNegociacaoHistorico
where ENH_OfertaNegociacaoId in (
    select OFN_Id from dbo.OfertaNegociacao
    where OFN_OfertaxQuantidadeProdutoId in (select OXQ_Id from dbo.OfertaxQuantidadeProduto
    where OXQ_OfertaId in (select OFE_Id from dbo.oferta where OFE_UsuarioInsercaoId = 133)));

delete from dbo.OfertaNegociacao
where OFN_OfertaxQuantidadeProdutoId in (select OXQ_Id from dbo.OfertaxQuantidadeProduto
where OXQ_OfertaId in (select OFE_Id from dbo.oferta where OFE_UsuarioInsercaoId = 133));

delete from dbo.OfertaxQuantidadeProduto
where OXQ_OfertaId in (select OFE_Id from dbo.oferta where OFE_UsuarioInsercaoId = 133);

delete from dbo.Oferta
where OFE_UsuarioInsercaoId = 133;

delete from dbo.EmpresaxProduto
where EXP_EmpresaId in (select EMP_Id from dbo.Empresa
WHERE EMP_Id in (
select EMP_Id from dbo.Empresa
where EMP_UsuarioId = 133));


delete from dbo.Produto
where PDT_UsuarioInsercaoId = 133;

delete from dbo.OfertaNegociacao
where OFN_EmpresaId in (
    select EMP_Id from dbo.Empresa
    WHERE EMP_Id in (
    select EMP_Id from dbo.Empresa
    where EMP_UsuarioId = 133));

delete from dbo.Empresa
WHERE EMP_Id in (
select EMP_Id from dbo.Empresa
where EMP_UsuarioId = 133);

delete from dbo.PerfilxUsuario
where PXU_UsuarioId = 133;

delete from dbo.Usuario where USR_Id = 133;
