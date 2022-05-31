SELECT * FROM sucos_vendas.tabela_de_produtos;
select * from tabela_de_produtos where  sabor ='Manga' or TAMANHO = '470 ml';
select * from tabela_de_produtos where  sabor ='Manga' and TAMANHO = '470 ml';
select * from tabela_de_produtos where  not sabor ='Manga';
select * from tabela_de_produtos where  sabor in  ('Manga','uva');
select NOME, Endereco_1, Cidade, Estado from tabela_de_clientes where Estado in ('RJ', 'SP');
select Nome, Endereco_1 as Endereço, Cidade, Idade, Estado from tabela_de_clientes where Estado in ('RJ', 'SP') and idade <20;

