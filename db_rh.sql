CREATE DATABASE db_rh;

USE db_rh;
CREATE TABLE tb_funcionario(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    genero VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    
    PRIMARY KEY(id)
);
ALTER TABLE tb_funcionario ADD aumento BOOLEAN NOT NULL;
INSERT INTO tb_funcionario (nome, genero, cargo, salario, aumento) VALUES ("Dayane", "Feminino", "Diretora", 10000.00, false);
INSERT INTO tb_funcionario (nome, genero, cargo, salario, aumento) VALUES ("Roberto", "Masculino", "Gerente", 4000.00, false);
INSERT INTO tb_funcionario (nome, genero, cargo, salario, aumento) VALUES ("Joana", "Feminino", "Secretária", 1500.00, true);
INSERT INTO tb_funcionario (nome, genero, cargo, salario, aumento) VALUES ("Felix", "Masculino", "Coordenador", 6000.00, false);
INSERT INTO tb_funcionario (nome, genero, cargo, salario, aumento) VALUES ("Oliver", "Masculino", "Auxiliar Administrativo", 1300.00, false);

SELECT * FROM tb_funcionario;
SELECT * FROM tb_funcionario WHERE salario > 2000;
SELECT * FROM tb_funcionario WHERE salario < 2000.00;

UPDATE tb_funcionario SET aumento = TRUE WHERE id = 1;