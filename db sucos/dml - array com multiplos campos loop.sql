CREATE DEFINER=`root`@`localhost` PROCEDURE `loop_cursor_multiplas_col`()
BEGIN
declare fim_cursor int default 0;
declare v_cidade,v_estado,v_cep varchar(50);
declare v_nome, v_endereco varchar(150);

declare c cursor for 
select nome, endereco_1, cidade, estado, cep from tabela_de_clientes;
declare continue handler for not found set fim_cursor = 1;
open c ;

while fim_cursor=0 
do
	fetch c into v_nome, v_endereco, v_cidade, v_estado, v_cep;
    if fim_cursor = 0 then
		select concat('Nome: ',v_nome, ' Endereço: ',v_endereco, ' , ',v_cidade,' - ' ,v_estado,' CEP: ', v_cep) as Cliente;
	end if;

end while;
close c;

END