select * from tabela_de_vendedores;
select * from notas_fiscais;

#seleciona as tabelas com campos incomuns (matricula) e e organiza os nomes com as notas fiscais
select * from tabela_de_vendedores A INNER join
notas_fiscais B
on A.MATRICULA = B.MATRICULA group by A.Nome;


select A.Matricula, A.Nome, count(*) from tabela_de_vendedores A INNER join
notas_fiscais B
on A.MATRICULA = B.MATRICULA group by A.MATRICULA, A.Nome;