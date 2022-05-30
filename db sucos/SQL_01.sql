use sucos;

CREATE TABLE tb_produto(
SKU VARCHAR(50), Descricao VARCHAR(150), Embalagem VARCHAR(50), Preco float(10.2));


use sucos;
Alter table tb_produto add primary key(SKU);

insert into tb_produto values('1037797', 'Clean - 2 Litros - Laranja','Garrafa'	,16.56);
insert into tb_produto values('1000889', 'Sabor da Montanha - 700 ml - Uva','PET',19.56);
insert into tb_produto values('1088126', 'Linha Citros - 1 Litro - Limão','PET'	,7.56);

select * from tb_produto;

update tb_produto set Embalagem = 'Garrafa', Preco = 8.26 WHERE SKU = '1000889';
update tb_produto set Embalagem = 'Garrafa', Preco = 9.49 WHERE SKU = '1037797';
update tb_produto set Embalagem = 'PET', Preco = 7.50 WHERE SKU = '1088126';
