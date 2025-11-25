USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    data_cadastro DATE,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, categoria, preco, estoque, data_cadastro)
VALUES ("Smartphone X10", "Eletrônicos", 1500.00, 25, "2024-01-10");

INSERT INTO tb_produtos(nome, categoria, preco, estoque, data_cadastro)
VALUES ("Headset Gamer", "Acessórios", 350.00, 40, "2024-02-01");

INSERT INTO tb_produtos(nome, categoria, preco, estoque, data_cadastro)
VALUES ("Notebook Pro", "Eletrônicos", 4200.00, 10, "2024-01-20");

INSERT INTO tb_produtos(nome, categoria, preco, estoque, data_cadastro)
VALUES ("Mouse Wireless", "Acessórios", 120.00, 80, "2024-03-05");

INSERT INTO tb_produtos(nome, categoria, preco, estoque, data_cadastro)
VALUES ("Cadeira Gamer", "Móveis", 890.00, 15, "2024-01-15");

INSERT INTO tb_produtos(nome, categoria, preco, estoque, data_cadastro)
VALUES ("Monitor 27 Polegadas", "Eletronicos", 1300.00, 20, "2024-02-10");

INSERT INTO tb_produtos(nome, categoria, preco, estoque, data_cadastro)
VALUES ("Teclado Mecânico", "Acessórios", 450.00, 50, "2024-02-25");

INSERT INTO tb_produtos(nome, categoria, preco, estoque, data_cadastro)
VALUES ("Webcam Full HD", "Acessórios", 230.00, 60, "2024-03-02");

SELECT * FROM tb_produtos
WHERE preco > 500;

SELECT * FROM tb_produtos
WHERE preco < 500;

UPDATE tb_produtos
SET preco = 380.00
WHERE id = 2;

SELECT * FROM tb_produtos;


