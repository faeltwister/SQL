select * from  tabela_de_clientes;

select estado, limite_de_credito from tabela_de_clientes;

#o sum tem que ter um alias 'as'
select estado, SUM(limite_de_credito) as Limite_Total from tabela_de_clientes group by estado;

select EMBALAGEM, preco_de_lista from tabela_de_produtos;

#mostra os maiores preços de todo  grupo das embalagens
select embalagem, max(preco_de_lista) as Maior_Preço from tabela_de_produtos group by embalagem;

#sem o group by mostra apenas o maior preço
select embalagem, max(preco_de_lista) as Maior_Preço from tabela_de_produtos;

select embalagem, min(preco_de_lista) as Menor_preço from tabela_de_produtos group by embalagem;

#conta os produtos do grupo
select embalagem, count(preco_de_lista) as contador from tabela_de_produtos group by embalagem;

#faz a contagem total dos limites de credito dos bairros do RJ
select Bairro, sum(limite_de_credito) as contador from tabela_de_clientes where cidade = 'Rio de Janeiro' group by (Bairro);

#selecionando a contagem do estado e bairro e o group by precisa ser de acordo com a seleção
select estado, Bairro, sum(limite_de_credito) as contador from tabela_de_clientes where cidade = 'Rio de Janeiro' group by (Bairro),(estado);

#contagem do limite de credito por bairro do RJ agrupados e ordenados pela maior quantidade decrescente pelo contador
select estado, Bairro, sum(limite_de_credito) as contador from tabela_de_clientes where cidade = 'Rio de Janeiro' group by (Bairro),(estado) order by(contador) desc;