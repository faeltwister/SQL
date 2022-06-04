CREATE DEFINER=`root`@`localhost` PROCEDURE `statusprod`(v_prod varchar(50))
BEGIN
declare v_preco float(5.2);
declare v_msg varchar(40);

select preco_de_lista into v_preco from tabela_de_produtos where codigo_do_produto = v_prod;

if v_preco > 12 then
	set v_msg = 'Produto caro';
elseif v_preco >=7 and v_preco <12 then
	set v_msg = 'produto em conta';
else
	set v_msg = 'produto barato';
 end if;
 select v_msg;

END