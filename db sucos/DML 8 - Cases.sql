select * from tabela_de_produtos;

select nome_do_produto, preco_de_lista, CASE when preco_de_lista >=12 then 'Produto muito caro' 
when preco_de_lista >=7 and preco_de_lista < 12 then 'Produto em conta'
else 'Produto barato' END as Status_Preço from  tabela_de_produtos;

#ordenado por status
select nome_do_produto, preco_de_lista, 
CASE 
when preco_de_lista >=12 then 'Produto muito caro' 
when preco_de_lista >=7 and preco_de_lista < 12 then 'Produto em conta'
else 'Produto barato' 
END as Status_Preço from  tabela_de_produtos order by (Status_Preço);