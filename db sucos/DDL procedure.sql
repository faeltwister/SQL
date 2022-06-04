CREATE DEFINER=`root`@`localhost` PROCEDURE `achasabor`(v_prod varchar(50))
BEGIN
declare v_sabor varchar(50);
select sabor into v_sabor from tabela_de_produtos where sabor = v_prod;
case v_sabor
	when 'Lima/Limão' then select 'Citricus';
	when 'Cereja/Maça' then select 'Cermaça';
	when 'Uva/Manga/Maracuja' then select 'Power up';
else select
	'normal';
end case;

END