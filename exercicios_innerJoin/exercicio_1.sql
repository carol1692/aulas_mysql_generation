create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id int primary key auto_increment,
	nome varchar(255),
    habilidades varchar(255)
);

insert into tb_classes (nome, habilidades) values 
('Cavaleiro','Ataque físico'), 
('Arqueiro','Ataque à distância'), 
( 'Mago','Magia ofensiva'), 
('Necromante', 'Invocadores / híbridos'), 
('Curandeiro','Magia de cura/suporte');

select * from tb_classes;

create table tb_personagens(
	id int primary key auto_increment,
    nome varchar(255),
    id_classe int,
    hp int,
    ataque int,
    defesa int,
    foreign key (id_classe) references tb_classes(id)
);

insert into tb_personagens (nome, id_classe, hp, ataque, defesa) values 
('BiroBiro',	1, 	5000, 3999, 2344), 
('Polenta',		2,	6000, 6800, 3484), 
('Cuscuz',		3, 	9000, 1550, 2944), 
('Paçoquita',	4, 	2000, 8543, 2394), 
('Canapé',		5, 	5500, 6999, 2304), 
('Queijadinha',	4, 	1000, 1099, 3044), 
('Coxinha',		1, 	8900, 7866, 1899), 
('Kibe',		5, 	1500, 5666, 7432); 

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where ataque between 1000 and 2000;

select tb_personagens.nome,tb_classes.nome as classe, hp, ataque, defesa from tb_personagens inner join tb_classes on tb_personagens.id = tb_classes.id;

select tb_personagens.nome,tb_classes.nome as classe, hp, ataque, defesa from tb_personagens inner join tb_classes on tb_personagens.id_classe = tb_classes.id where tb_personagens.nome like '%C%';

select tb_personagens.nome, tb_classes.nome as classe, hp, ataque, defesa from tb_personagens inner join tb_classes on tb_personagens.id_classe = tb_classes.id where tb_classes.nome = 'Necromante';