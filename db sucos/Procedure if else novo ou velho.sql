CREATE DEFINER=`root`@`localhost` PROCEDURE `cli_novo_velho`(v_cpf varchar(20))
BEGIN
declare vResultado varchar(20);
declare vData_nasc date;

select data_de_nascimento into vData_nasc
 from tabela_de_clientes where cpf = v_cpf;

if vData_nasc < '20000101' then 
	set  vResultado = 'Cliente velho';
else
	set vResultado = 'Novo';
end if;
select vResultado;

END