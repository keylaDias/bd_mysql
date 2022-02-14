select * from tb_produtos;
use db_quitanda;

-- seleção usando %
select nome, quantidade from tb_produtos where nome like "A%" or name like "%m";

-- contar registros
select count (id) from tb_produtos;

-- contar registros 
select count (dtvalidade) from tb_produtos;

-- somar valores de uma coluna
select sum (preco) from tb_produtos;

-- alterar nomes dos produtos
select nome as produto from tb_produtos;

-- media de valores

select avg (preco) from tb_produtos;

-- valor minimo
select min (preco) from tb_produtos;

-- valor maximo

select max (preco) from tb_produtos;
 
-- relacionamentos entre tabelas 

select * from 
tb_produtos left join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;


 