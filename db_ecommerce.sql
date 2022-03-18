CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    preco_produto DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(255),
    quantidade INT,
    
    PRIMARY KEY(id)
);

INSERT INTO tb_produto (nome_produto, preco_produto, categoria, quantidade) VALUES ("Base Matte", 140.00, "Maquiagem", 100);
INSERT INTO tb_produto (nome_produto, preco_produto, categoria, quantidade) VALUES ("Perfume Carolina Herrera", 360.00, "Cosméticos", 80);
INSERT INTO tb_produto (nome_produto, preco_produto, categoria, quantidade) VALUES ("Esponja Foreo", 800.00, "Skincare", 56);
INSERT INTO tb_produto (nome_produto, preco_produto, categoria, quantidade) VALUES ("Rímel Lancôme", 125.00, "Maquiagem", 34);
INSERT INTO tb_produto (nome_produto, preco_produto, categoria, quantidade) VALUES ("Perfume Dolce e Gabbana", 850.00, "Cosméticos", 77);
INSERT INTO tb_produto (nome_produto, preco_produto, categoria, quantidade) VALUES ("Perfume Lancôme", 635.90, "Cosméticos", 83);
INSERT INTO tb_produto (nome_produto, preco_produto, categoria, quantidade) VALUES ("Kit Perfume e Hidratante Diesel", 700.00, "Cosméticos", 30);
INSERT INTO tb_produto (nome_produto, preco_produto, categoria, quantidade) VALUES ("Kit Anastasia Beverly Hills", 821.00, "Maquiagem", 25);

DELETE FROM tb_produto WHERE id = 2;
SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco_produto > 500;
SELECT * FROM tb_produto WHERE preco_produto < 500;

ALTER TABLE tb_produto ADD promocao BOOLEAN NOT NULL;
UPDATE tb_produto SET promocao = TRUE WHERE id = 2;