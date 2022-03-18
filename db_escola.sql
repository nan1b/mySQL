CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    turma VARCHAR(255) NOT NULL,
    idade INT,
    nota DOUBLE,
    email VARCHAR(255) NOT NULL,

    PRIMARY KEY(id)
);

INSERT INTO tb_estudante (nome, turma, idade, nota, email) VALUES ("João", "9º Ano", 14, 8.0, "joaoaluno@hotmail.com");
INSERT INTO tb_estudante (nome, turma, idade, nota, email) VALUES ("Marina", "8º Ano", 13, 9.0, "marinaaluno@hotmail.com");
INSERT INTO tb_estudante (nome, turma, idade, nota, email) VALUES ("Bernardo", "7º Ano", 13, 5.9, "bernardoaluno@hotmail.com");
INSERT INTO tb_estudante (nome, turma, idade, nota, email) VALUES ("Letícia", "7º Ano", 12, 4.7, "leticiaaluno@hotmail.com");
INSERT INTO tb_estudante (nome, turma, idade, nota, email) VALUES ("Gabriel", "9º Ano", 15, 7.5, "gabrielaluno@hotmail.com");
INSERT INTO tb_estudante (nome, turma, idade, nota, email) VALUES ("Laura", "8º Ano", 14, 5.0, "lauraaluno@hotmail.com");
INSERT INTO tb_estudante (nome, turma, idade, nota, email) VALUES ("Paola", "6º Ano", 11, 3.0, "paolaaluno@hotmail.com");
INSERT INTO tb_estudante (nome, turma, idade, nota, email) VALUES ("Daniel", "7º Ano", 13, 9.0, "danielaluno@hotmail.com");

SELECT * FROM tb_estudante;

SELECT * FROM tb_estudante WHERE nota > 7;
SELECT * FROM tb_estudante WHERE nota < 7;

UPDATE tb_estudante SET nota = 8.5 WHERE id = 1;