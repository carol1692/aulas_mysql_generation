create database db_escola;

use db_escola;

create table tb_materias(
	id bigint  primary key auto_increment,
    nome varchar(255) not null
);

insert into tb_materias(nome)
values("Matemática");

insert into tb_materias(nome)
values("Física");

insert into tb_materias(nome)
values("Sociologia");

insert into tb_materias(nome)
values("Educaçao Física");

insert into tb_materias(nome)
values("Português");

insert into tb_materias(nome)
values("Artes");

select * from tb_materias;

create table tb_aluno(
	id bigint primary key auto_increment,
    nome varchar(255) not null,
    serie int,
    materia_id bigint,
    nota decimal(3,1),
	FOREIGN KEY (materia_id) REFERENCES tb_materias(id)
);

insert into tb_aluno(nome, serie, materia_id, nota)
values("Adriana", 2, 3, 7.0 );

insert into tb_aluno(nome, serie, materia_id, nota)
values("Adriana", 2, 1, 5.0 );

insert into tb_aluno(nome, serie, materia_id, nota)
values("Adriana", 2, 4, 8.0 );

insert into tb_aluno(nome, serie, materia_id, nota)
values("Adriana", 2, 2, 10.0 );

insert into tb_aluno(nome, serie, materia_id, nota)
values("Adriana", 2, 6, 9.0 );

insert into tb_aluno(nome, serie, materia_id, nota)
values("Enzo", 2, 3, 7.0 );

insert into tb_aluno(nome, serie, materia_id, nota)
values("Enzo", 2, 1, 5.0 );

insert into tb_aluno(nome, serie, materia_id, nota)
values("Enzo", 2, 4, 8.0 );

insert into tb_aluno(nome, serie, materia_id, nota)
values("Enzo", 2, 2, 10.0 );

insert into tb_aluno(nome, serie, materia_id, nota)
values("Enzo", 2, 6, 9.0 );

select * from tb_aluno;

select * from tb_aluno where nota > 7.0;
select * from tb_aluno where nota < 7.0;

UPDATE tb_aluno SET nota = 5.5 WHERE Id = 6;

SELECT *
FROM tb_aluno INNER JOIN tb_materias
ON tb_aluno.materia_id = tb_materias.id;