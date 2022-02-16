create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categorias (
id bigint auto_increment,
categorias varchar(255) not null,
primary Key (id)
);


create table tb_pizza (
id bigint auto_increment,
nome varchar(255),
borda varchar(255),
tamanho varchar(255),
preco decimal (8,2),
categorias_id bigint,
primary Key (id), 
foreign key (categorias_id) references tb_categorias(id)

);
insert into tb_pizza (nome, borda, tamanho, preco, categoria_id) values ("portuguesa" , "catupiry", "grande", 49.99, 4 );
insert into tb_pizza (nome, borda, tamanho, preco, categoria_id) values ("frango" , "catupiry", "media", 39.99, 4);
insert into tb_pizza (nome, borda, tamanho, preco, categoria_id) values ("calabresa" , "catupiry", "grande", 45.99, 4);
insert into tb_pizza (nome, borda, tamanho, preco, categoria_id) values ("quatro queijos" , "catupiry", "media", 39.99, 4);
insert into tb_pizza (nome, borda, tamanho, preco, categoria_id) values ("moda da casa" , "catupiry", "grande", 39.99, 4);
insert into tb_pizza (nome, borda, tamanho, preco, categoria_id) values ("brocolis" , "catupiry", "grande", 39.99, 2);
insert into tb_pizza (nome, borda, tamanho, preco, categoria_id) values ("frango com catupiry" , "catupiry", "grande", 39.99, 4);
insert into tb_pizza (nome, borda, tamanho, preco, categoria_id) values ("atum" , "catupiry", "pequena", 39.99, 4);


insert into tb_categorias ( categorias ) values ( "pizza doce" );
insert into tb_categorias ( categorias ) values ( "pizza vegetariana");
insert into tb_categorias ( categorias ) values ("massa integral");
insert into tb_categorias ( categorias ) values ("pizza salgada");




select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categorias on tb_pizza.categorias_id = tb_categorias.id;

select * from tb_pizza inner join tb_categorias
 on tb_pizza.categorias_id = tb_categorias.id where tb_categorias.id=2;














