use sucos;
select nome as Nome,Data_Nascimento as Nascimento from tbcliente where Estado='RJ';

select * from tbcliente where Idade > 27;

select nome as Nome from tbcliente where Idade < 22;

select *  from tbcliente where Idade <> 22;

select * from tbcliente where Nome like 'F%';

select * from tb_produto where Preco > 16.00;

select * from tb_produto where Preco between 16.00 and 16.56;


