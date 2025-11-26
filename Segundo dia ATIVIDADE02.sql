CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- CRIAÇÃO DA TABELA CATEGORIAS
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

-- CRIAÇÃO DA TABELA PIZZAS
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    borda VARCHAR(50) NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
("Salgada", "Pizzas tradicionais salgadas"),
("Doce", "Pizzas com recheios doces"),
("Vegana", "Pizzas sem ingredientes de origem animal"),
("Premium", "Pizzas especiais e sofisticadas"),
("Calzone", "Pizzas fechadas estilo calzone");

INSERT INTO tb_pizzas (nome, tamanho, valor, borda, categoriaid) VALUES
("Calabresa", "Grande", 55.00, "Catupiry", 1),
("Frango com Catupiry", "Grande", 62.00, "Cheddar", 1),
("Margherita", "Média", 48.00, "Sem borda", 1),
("Nutella", "Grande", 85.00, "Chocolate", 2),
("Prestígio", "Média", 70.00, "Chocolate", 2),
("Vegana Verde", "Grande", 90.00, "Vegana", 3),
("Quatro Queijos Premium", "Grande", 120.00, "Catupiry", 4),
("Calzone Especial", "Média", 75.00, "Sem borda", 5);

SELECT * FROM tb_pizzas
WHERE valor > 45.00;

SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome LIKE "%m%" OR nome LIKE "%M%";

SELECT tb_pizzas.nome,
       tb_pizzas.valor,
       tb_pizzas.tamanho,
       tb_categorias.nome AS categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT tb_pizzas.nome,
       tb_pizzas.valor,
       tb_pizzas.tamanho,
       tb_categorias.nome AS categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.nome = "Doce";


