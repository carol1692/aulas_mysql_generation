create database db_quitanda;
-- indicar qual databse será usada
USE db_quitanda;
-- Criação de tabela
create table tb_produtos(
	id bigint auto_increment,
	nome varchar(255) not null,
    quantidade int,
    data_validade date,
    preco decimal not null,
    primary key(id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Abacate", 10, "2025-10-27", 15.90);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("laranja", 50, "2025-10-17", 12.50);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("banana", 200, "2025-10-30", 12.90);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("morango", 70, "2025-10-07", 10.00);

select * from tb_produtos;

alter table tb_produtos modify preco decimal(6,2);

update tb_produtos set preco = 15.90 where id=1;

alter table tb_produtos add descricao varchar(255);
