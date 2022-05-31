select Estado, sum(Limite_de_credito) as Soma_Limite from tabela_de_clientes group by estado;

#vai dar erro porque o group by ainda não aconteceu
select Estado, sum(Limite_de_credito) as Soma_Limite from tabela_de_clientes where Soma_Limite > 90000 group by(estado);

#O having soluciona isso
select Estado, sum(Limite_de_credito) as Soma_Limite from tabela_de_clientes group by(estado) having sum(LIMITE_DE_CREDITO) > 900000;

#max e minimo agrupados pela embalagem
select embalagem, max(preco_de_lista) as máximo, min(preco_de_lista) as minimo from tabela_de_produtos group by (embalagem);

#max e minimo agrupados pela embalagem 'menor que 80'
select embalagem, max(preco_de_lista) as máximo, min(preco_de_lista) as minimo from tabela_de_produtos group by (embalagem) having sum(PRECO_DE_LISTA)<=80;
