DROP DATABASE db_quitanda;

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");


INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ("outros");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT, 
dtvalidade DATE NULL,
preco DECIMAL(6, 2),
categoria_id BIGINT, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);

INSERT INTO Tb_produtos (nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);

INSERT INTO Tb_produtos (nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO Tb_produtos (nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO Tb_produtos (nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO Tb_produtos(nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO Tb_produtos(nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO TB_produtos(noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES("CEnoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO TB_produtos (noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES ("PImenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO TB_produtos (noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES ("ALecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO TB_produtos (noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES ("MAnga", 200, "2022-03-07", 5.49, 1);

INSERT INTO TB_produtos (noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES ("LAranja", 3000, "2022-03-13", 10.00, 1);

INSERT INTO TB_produtos (noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES ("COuve", 100, "2022-03-12", 1.50, 2);

INSERT INTO TB_produtos(noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES("TOmate", 1105, "2022-03-15", 3.00, 3);

INSERT INTO TB_produtos(noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES("RAbanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO TB_produtos(noMe, qUantidade, pReco)
VALUES("SAcola Cinza", 1118, 0.50);

INSERT INTO TB_produtos(noMe, qUantidade, pReco)
VALUES("SAcola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM TB_produtos;