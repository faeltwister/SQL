select * from tabela_de_produtos;

#ordem crescente
select * from tabela_de_produtos order by NOME_DO_PRODUTO;

#ordem decrescente
select * from tabela_de_produtos order by NOME_DO_PRODUTO, EMBALAGEM Desc;

# Maiores venda(s) do produto “Linha Refrescante - 1 Litro - Morango/Limão”, em quantidade?

select *  from tabela_de_produtos  where NOME_DO_PRODUTO='Linha Refrescante - 1 Litro - Morango/Limão'  order by PRECO_DE_LISTA;









