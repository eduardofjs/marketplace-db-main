update dbo.Empresa
set EMP_FlagAprovado = 1, EMP_DataAprovado = GETDATE()
where EMP_Id = (select EMP_Id from dbo.Empresa where EMP_UsuarioId = 132);