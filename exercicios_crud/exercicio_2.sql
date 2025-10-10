create database db_ecommerce;

use db_ecommerce;
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255),
    quantidade int ,
    preco decimal(6,2),
    primary key(id)
);

insert into tb_produtos(nome, descricao, quantidade, preco)
values("fone de ouvido com fio", "fone com fio", 10, 105.00);

insert into tb_produtos(nome, descricao, quantidade, preco)
values("fone de ouvido sem fio", "fone sem fio", 15, 125.00);

insert into tb_produtos(nome, descricao, quantidade, preco)
values("radinho de pilha", "radinho de vô p/ ouvir jogo", 7, 130.00);

insert into tb_produtos(nome, descricao, quantidade, preco)
values("chaveiro dado", "chaveiro de dado", 5, 20.00);

insert into tb_produtos(nome, descricao, quantidade, preco)
values("caneta chocolate", "caneta gel com cheiro de chocolate", 20, 5.00);

insert into tb_produtos(nome, descricao, quantidade, preco)
values("papel de presente", "papel de presente lindissimo", 10, 10.50);

insert into tb_produtos(nome, descricao, quantidade, preco)
values("cubo mágico", "cubo de rubik", 5, 550.00);

insert into tb_produtos(nome, descricao, quantidade, preco)
values("caneca nerdola", "caneca com tema nerdola", 2, 300.00);

select * from tb_produtos;

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

UPDATE tb_produtos SET preco = 5.52, quantidade = 80 WHERE Id = 6;
