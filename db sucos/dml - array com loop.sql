CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_primeirocontato`()
BEGIN
declare fim_cursor int default 0;
declare v_nome varchar(50);
declare c cursor for select nome from tabela_de_clientes ;
declare continue handler for not found set fim_cursor = 1;

open c;
while fim_cursor = 0
do
	fetch c into v_nome;
    if fim_cursor = 0 then
		select v_nome;
    end if;    
end while   ; 
close c ;

END