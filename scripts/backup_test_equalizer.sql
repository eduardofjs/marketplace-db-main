insert into dbo.ConfiguracaoGlobal
values(
    'c:',
    'http://api-test.marketplace.directto.io/Imagens',
    'c:\\Template',
    'D:\\inetpub_vivmais\\6027_Storage\\pdf',
    'http://34.212.9.150:6026/pdf',
    '',
    '',
    '',
    'http://34.212.9.150:6029/assetsPortal/images/logo-dark.svg',
    '',
    'no-reply@directto.tech',
    'nei.ufopa@gmail.com',
    'mail.directto.tech',
    'no-reply',
    'pVwm4z3CY7jSITzkzCpkdg==',
    '587',
    1,1,1,
    'http://test.marketplace.directto.io.s3-website-us-east-1.amazonaws.com/',
    '0 0 1 ? * * *',
    '0 0 0 ? * SAT *',
    '0 0 * ? * * *'
);

update dbo.ConfiguracaoGlobal
set CGL_PathImagem = 'C:\inetpubdirectto\api-marketplace-test\Imagens'
where CGL_Id = 8;