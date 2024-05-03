--liquibase formatted sql

-- changeset fapinheiro:1.2.0-1
insert into dbo.TipoProduto
values (
 'Café',
 1,
 'Coffee',
 '\\CategoriaProduto\\1\\20220725181825_Icones_ACAI (1).png',
 '\\CategoriaProduto\\Card\\8\\20230408125000_Cafe.png'
);
-- rollback delete from dbo.TipoProduto where TPR_Descricao = 'Café';

-- changeset fapinheiro:1.2.0-2
update dbo.TipoProduto
set TPR_Descricao = 'Óleos & Biocosméticos',
    TPR_DescricaoIngles = 'Oils & Biocosmetics'
where TPR_Id = 5;
-- rollback update dbo.TipoProduto set TPR_Descricao = 'Óleos', TPR_DescricaoIngles = 'Oils' where TPR_Id = 5;


-- changeset fapinheiro:1.2.0-3
insert into dbo.TipoProduto
values (
 'Cacau & Derivados',
 1,
 'Cocoa & By-products',
 '\\CategoriaProduto\\1\\20220725181825_Icones_ACAI (1).png',
 '\\CategoriaProduto\\Card\\9\\20230408125000_Cacau.png'
);
-- rollback delete from dbo.TipoProduto where TPR_Descricao = 'Cacau & Derivados';

-- changeset fapinheiro:1.2.0-4
update dbo.TipoProduto
set TPR_FlagAtivo = 0
where TPR_Id = 7;
-- rollback update dbo.TipoProduto set TPR_FlagAtivo = 1 where TPR_Id = 7;

-- changeset fapinheiro:1.2.0-5
insert into dbo.UnidadePeso
values (
    'Sacas/Bags',
    1
);
-- rollback delete from dbo.UnidadePeso where UNP_Descricao = 'Sacas/Bags';

-- changeset fapinheiro:1.2.0-6
insert into dbo.UnidadePeso
values (
    'Caixas/Boxes',
    1
);
-- rollback delete from dbo.UnidadePeso where UNP_Descricao = 'Caixas/Boxes';

-- changeset fapinheiro:1.2.0-7
insert into dbo.UnidadePeso
values (
    'Litros/Liters',
    1
);
-- rollback delete from dbo.UnidadePeso where UNP_Descricao = 'Litros/Liters';


-- changeset fapinheiro:1.2.0-8
insert into dbo.ModoCultivoSistemaProdutivo
values (
    'Fair trade',
    1,
    'Fair trade'
);
-- rollback delete from dbo.ModoCultivoSistemaProdutivo where MCM_Descricao = 'Fair trade';

-- changeset fapinheiro:1.2.0-9
insert into dbo.ModoCultivoSistemaProdutivo
values (
    'Convencional',
    1,
    'Conventional'
);
-- rollback delete from dbo.ModoCultivoSistemaProdutivo where MCM_Descricao = 'Convencional';

-- changeset fapinheiro:1.2.0-10
insert into dbo.ModoCultivoModoProducao
values (
  'Orgânico',
  1,
  'Organic'  
);
-- rollback delete from dbo.ModoCultivoModoProducao where MCM_Descricao = 'Orgânico';

-- changeset fapinheiro:1.2.0-11
insert into dbo.StatusProduto
values (
    'Pronta entrega',
    1,
    'Ready for shipment'
);
-- rollback delete from dbo.StatusProduto where SPR_Descricao = 'Pronta entrega';

-- changeset fapinheiro:1.2.0-12
update dbo.ServicoAdicional
set SEA_Descricao = 'O produto tem processo de rastreabilidade?', 
    SEA_DescricaoIngles = 'Does the product have a traceability process?'
where SEA_Id = 8;
-- rollback update dbo.ServicoAdicional set SEA_Descricao = 'Rastreabilidade', SEA_DescricaoIngles = 'Traceability' where SEA_Id = 8;

-- changeset fapinheiro:1.2.0-13
insert into dbo.TipoLogisticoPorto
values (
    'CIF',
    1,
    'CIF'
);
-- rollback delete from dbo.TipoLogisticoPorto where TLP_Descricao = 'CIF';

-- changeset fapinheiro:1.2.0-14
update dbo.TipoProduto
set TPR_FlagAtivo = 0
where TPR_Id = 3;
-- rollback update dbo.TipoProduto set TPR_FlagAtivo = 1 where TPR_Id = 3;