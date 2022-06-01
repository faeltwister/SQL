select NF.CPF, date_format(NF.DATA_VENDA,'%m-%Y')as Mês_Ano, sum(INF.QUANTIDADE) as Qdt_Vendas from notas_fiscais  NF
inner join
itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO
group by NF.CPF, date_format(NF.DATA_VENDA,'%m-%Y') 