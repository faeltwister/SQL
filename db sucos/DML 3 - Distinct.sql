select embalagem, tamanho from tabela_de_produtos;

#distinct não se repete 
select distinct embalagem, tamanho from tabela_de_produtos;

#mostra a embalagem e o tamanho para os sabores de laranja
select distinct embalagem, tamanho from tabela_de_produtos where SABOR = 'Laranja';

#os bairros da cidade do Rio de Janeiro que possuem clientes
select distinct bairro from tabela_de_clientes where cidade = 'Rio de Janeiro';

