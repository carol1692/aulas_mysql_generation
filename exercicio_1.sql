create database db_rh;

use db_rh;
create table tb_colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    cargo varchar(255),
    dt_contratacao date ,
    dt_desligamento date,
    salario decimal(10,2),
    primary key(id)
);

insert into tb_colaboradores(nome, cargo, dt_contratacao, dt_desligamento, salario)
values("Ana", "desenvolvedora", "2025-10-27",null, 10500);

insert into tb_colaboradores(nome, cargo, dt_contratacao, dt_desligamento, salario)
values("Camila", "desenvolvedora", "2025-10-17",null, 8500);

insert into tb_colaboradores(nome, cargo, dt_contratacao, dt_desligamento, salario)
values("Joana", "desenvolvedora", "2025-9-05",null, 6500);

insert into tb_colaboradores(nome, cargo, dt_contratacao, dt_desligamento, salario)
values("Jenifer", "desenvolvedora", "2025-03-04",null, 2500);

insert into tb_colaboradores(nome, cargo, dt_contratacao, dt_desligamento, salario)
values("Claudia", "desenvolvedora", "2025-05-08",null, 15500);

insert into tb_colaboradores(nome, cargo, dt_contratacao, dt_desligamento, salario)
values("Aurea", "desenvolvedora", "2025-11-30",null, 20500);

insert into tb_colaboradores(nome, cargo, dt_contratacao, dt_desligamento, salario)
values("Marena", "desenvolvedora", "2025-09-05",null, 1500);

select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

UPDATE tb_colaboradores SET salario = 15500  WHERE Id = 1;
UPDATE tb_colaboradores SET salario = 10500  WHERE Id = 2;
UPDATE tb_colaboradores SET salario = 8500  WHERE Id = 3;
UPDATE tb_colaboradores SET salario = 6500  WHERE Id = 4;
UPDATE tb_colaboradores SET salario = 14500  WHERE Id = 5;
UPDATE tb_colaboradores SET salario = 30500, cargo = "Tech Lead" WHERE Id = 6;

ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(10,2);
