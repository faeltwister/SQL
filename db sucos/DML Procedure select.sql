CREATE DEFINER=`root`@`localhost` PROCEDURE `achar_saber`(v_produto varchar(50))
BEGIN
declare v_sabor varchar(60);
declare v_produtu varchar(100);

select sabor,nome_do_produto into v_sabor,v_produtu from sucos_vendas.tabela_de_produtos where sabor = v_produto limit 1;

select v_produtu,v_sabor;



END