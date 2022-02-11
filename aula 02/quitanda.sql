-- Criar o Banco de dados db_quitanda
create database db_quitanda;

-- Selecionar o Banco de Dados
use db_quitanda;

-- Criar Tabela
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal,
primary key (id)
);

-- Insere dados na tabela
insert into tb_produtos (nome, quantidade, preco) 
values ("Maçã", 10, 1.99);
insert into tb_produtos (nome, quantidade, preco) 
values ("Banana", 13, 4.99);
insert into tb_produtos (nome, quantidade, preco) 
values ("Manga", 20, 5.49);
insert into tb_produtos (nome, quantidade, preco) 
values ("Melancia", 3, 10.00);
insert into tb_produtos (nome, quantidade, preco) 
values ("Cebola", 100, 1.50);

/* Visualizar os dados*/

-- Visualiza todos os dados
select * from tb_produtos;

-- Visualiza somente o nome
select nome from tb_produtos;

-- Visualiza somente o nome e o preço
select nome, preco from tb_produtos;

-- Visualiza todos os produtos cujo preço seja maior do que 1.99
select * from tb_produtos where preco > 1.99;

-- Visualiza todos os produtos cujo preço seja maior do que 5.99 ou nome = "Banana"
select * from tb_produtos where preco > 5.99 or nome = "Banana";

-- Atualiza o atributo preço na tabela, cujo id seja igual a 1
update tb_produtos set preco = 1.99 where id = 1;

-- Atualiza o atributo preço na tabela, cujo nome seja igual a Maçã
update tb_produtos set preco = 1.99 where nome = "Maçã";

-- Deleta o registro da tabela, cujo id seja igual a 8
delete from tb_produtos where id = 8;

-- Insere um novo dado na tabela
insert into tb_produtos (nome, quantidade, preco) 
values ("Batata", 150, 5.50);

-- Desabilita o modo safe update
set SQL_SAFE_UPDATES = 0;

-- Atualiza toda a coluna descrição como Banana Ouro 
update tb_produtos set descricao = "Banana Ouro";

-- Apaga todos os dados da tabela (Não é possível desfazer)
delete from tb_produtos;

-- Atualiza o tipo de um Atributo da Tabela 
-- decimal (8 digitos, sendo os ultimos 2 as casas decimais - 154200.00)
alter table tb_produtos modify preco decimal(8,2);

-- Adiciona um novo Atributo na Tabela
alter table tb_produtos add descricao varchar(255); 

-- Remove um atributo da Tabela
alter table tb_produtos drop descricao; 