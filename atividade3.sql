CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    serie VARCHAR(50),
    nota DECIMAL(3,1),
    data_matricula DATE,
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, idade, serie, nota, data_matricula)
VALUES ("Mariana Lopes", 15, "9º Ano", 8.5, "2023-02-10");

INSERT INTO tb_estudantes (nome, idade, serie, nota, data_matricula)
VALUES ("Isaac Martins", 17, "3º Ano", 9.2, "2022-01-25");

INSERT INTO tb_estudantes (nome, idade, serie, nota, data_matricula)
VALUES ("Carlos Henrique", 14, "8º Ano", 6.7, "2024-03-05");

INSERT INTO tb_estudantes (nome, idade, serie, nota, data_matricula)
VALUES ("Ana Beatriz", 16, "2º Ano", 7.8, "2023-09-18");

INSERT INTO tb_estudantes (nome, idade, serie, nota, data_matricula)
VALUES ("Fernanda Souza", 13, "7º Ano", 5.9, "2024-02-12");

INSERT INTO tb_estudantes (nome, idade, serie, nota, data_matricula)
VALUES ("Ricardo Alves", 17, "3º Ano", 8.1, "2022-08-11");

INSERT INTO tb_estudantes (nome, idade, serie, nota, data_matricula)
VALUES ("Juliana Mendes", 15, "9º Ano", 6.5, "2023-05-22");

INSERT INTO tb_estudantes (nome, idade, serie, nota, data_matricula)
VALUES ("Paulo Sérgio", 14, "8º Ano", 7.3, "2024-01-10");

SELECT * FROM tb_estudantes
WHERE nota > 7.0;

SELECT * FROM tb_estudantes
WHERE nota < 7.0;

UPDATE tb_estudantes
SET nota = 8.9
WHERE nome = "Ana Beatriz";

UPDATE tb_estudantes
SET nota = 10
WHERE id = 2;

SELECT * FROM tb_estudantes;




