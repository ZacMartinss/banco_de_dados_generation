-- APAGA O BANCO (caso já exista)
DROP DATABASE IF EXISTS db_generation_game_online;

-- CRIA O BANCO DE DADOS
CREATE DATABASE db_generation_game_online;

-- SELECIONA O BANCO
USE db_generation_game_online;

-- CRIAÇÃO DA TABELA CLASSES
CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

-- CRIAÇÃO DA TABELA PERSONAGENS
CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    classeid BIGINT,
    FOREIGN KEY (classeid) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
("Guerreiro", "Especialista em combate corpo a corpo"),
("Arqueiro", "Especialista em ataques à distância"),
("Mago", "Usuário de magias poderosas"),
("Cavaleiro", "Alta defesa e montaria"),
("Assassino", "Ataques rápidos e furtivos");

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classeid) VALUES
("Thorim", 3000, 2500, 50, 1), 
("Legolia", 1800, 1200, 40, 2), 
("Merlina", 5000, 800, 60, 3), 
("Darkrider", 2200, 3200, 55, 4),
("Shadow", 2800, 1500, 47, 5),
("RangerX", 1600, 1100, 33, 2),
("Blazemage", 4100, 900, 52, 3),
("GuardianZ", 2000, 3500, 48, 1);

SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE "%c%" OR nome LIKE "%C%";

SELECT tb_personagens.nome,
       tb_personagens.poder_ataque,
       tb_personagens.poder_defesa,
       tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT tb_personagens.nome,
       tb_personagens.poder_ataque,
       tb_personagens.poder_defesa,
       tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.nome = "Arqueiro";


