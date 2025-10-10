create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	id int primary key auto_increment,
    nome varchar(255),
    descricao varchar(255)
);

insert into tb_categorias(nome, descricao) values 
("tradicional", "Pizzas tradicionais brasileiras"),
("Especial", "Pizzas especiais desenvolvidas na casa"),
("Vegetariana", "Pizzas sem proteínas de origem animal"),
("Sem lactose", "Pizzas com ingredientes livres de lactose"),
("Doce", "Pizzas doces");

create table tb_pizzas(
	id int primary key auto_increment,
    nome varchar(50),
    descricao varchar(100),
    id_categoria int,
    preco decimal(4,2),
    foreign key(id_categoria) references tb_categorias(id)
);

insert into tb_pizzas(nome, descricao, id_categoria, preco) values 
("Chocolate branco", "Chocolate branco e granulado", 5,55.90),
("Calabresa", "Molho de tomate, mussarela, calabresa e cebola",4,39.90),
("Margherita", "Molho de tomate, mussarela, tomate e manjericão", 5,42.50),
("Frango com Catupiry", "Frango desfiado, catupiry e mussarela", 3,45.00),
("Portuguesa", "Presunto, ovo, cebola, azeitona e ervilha", 5,46.75),
("Quatro Queijos", "Mussarela, provolone, parmesão e gorgonzola", 4,47.20),
("Pepperoni", "Molho de tomate, mussarela e fatias de pepperoni", 2,43.80),
("Vegetariana", "Legumes variados, mussarela e orégano", 3,41.60),
("Chocolate", "Chocolate ao leite e granulado", 5,38.90);

select * from tb_pizzas;

select * from tb_pizzas where tb_pizzas.preco > 45.00;

select * from tb_pizzas where tb_pizzas.preco between 50.00 and 100.00;

select * from tb_pizzas where nome like '%M%';

select tb_pizzas.nome,  tb_categorias.nome as categoria, tb_pizzas.descricao, tb_pizzas.preco from tb_pizzas inner join tb_categorias on tb_pizzas.id_categoria = tb_categorias.id; 
 
select tb_pizzas.nome,  tb_categorias.nome as categoria, tb_pizzas.descricao, tb_pizzas.preco from tb_pizzas inner join tb_categorias on tb_pizzas.id_categoria = tb_categorias.id where tb_categorias.nome like 'Doce' ; 
