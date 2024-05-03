select * from dbo.Usuario where USR_Email = 'adm@newcomex.co';
select * from dbo.Oferta where OFE_UsuarioInsercaoId = 164;
select * from dbo.OfertaxQuantidadeProduto where OXQ_OfertaId = 98;
update dbo.OfertaxQuantidadeProduto 
set OXQ_DataEntregaFim = '2023-08-30 00:00:00.000', OXQ_DataExpiracao = '2023-08-30 00:00:00.000'
where OXQ_Id in (414,415,416);
