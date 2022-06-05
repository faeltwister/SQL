CREATE DEFINER=`root`@`localhost` PROCEDURE `loopingWhile`(v_ini int, v_fim int)
BEGIN
	declare v_cont int ;
    delete from tabloop;
    set v_cont = v_ini;
    
    while v_cont <= v_fim
    do
		insert into tabloop(ID) values (v_cont);
		set v_cont = v_cont+1;
    end while;
	SELECT * FROM tabloop;
END