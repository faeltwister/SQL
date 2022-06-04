CREATE DEFINER=`root`@`localhost` PROCEDURE `add_novo_P`(vercod varchar(50),vnome varchar(50),vsabor varchar(30),vtamanho varchar(50),vembalagem varchar(50),vpreco float(10.2))
BEGIN

declare msg varchar(30);
declare exit handler for 1062
begin
	 set msg = 'Erro! Chave duplicada.';
	  select msg as mensagem;
end;


INSERT INTO tabela_de_produtos (CODIGO_DO_PRODUTO,NOME_DO_PRODUTO,SABOR,TAMANHO,EMBALAGEM,PRECO_DE_LISTA)
    VALUES (vercod,vnome,vsabor,vtamanho,vembalagem,vpreco);
    
    set msg = 'Produto incluido com sucesso!';
    select msg as mensagem;
    
    
    
END