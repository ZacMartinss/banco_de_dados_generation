USE db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(255),
    data_admissao DATE,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, departamento, data_admissao)
VALUES ("João Silva", "Analista de RH", 2500.00, "Recursos Humanos", "2022-03-10");

INSERT INTO tb_colaboradores(nome, cargo, salario, departamento, data_admissao)
VALUES ("Maria Santos", "Auxiliar Administrativo", 1800.00, "Administrativo", "2021-11-01");

INSERT INTO tb_colaboradores(nome, cargo, salario, departamento, data_admissao)
VALUES ("Isaac Martins", "Desenvolvedor Jr", 3200.00, "Tecnologia", "2023-01-20");

INSERT INTO tb_colaboradores(nome, cargo, salario, departamento, data_admissao)
VALUES ("Ana Pereira", "Estagiária", 1200.00, "Marketing", "2024-02-05");

INSERT INTO tb_colaboradores(nome, cargo, salario, departamento, data_admissao)
VALUES ("Fernanda Costa", "Gerente de Projetos", 5500.00, "Operações", "2020-05-15");

SELECT * FROM tb_colaboradores
WHERE salario > 2000;

SELECT * FROM tb_colaboradores
WHERE salario < 2000;

SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores
SET salario = 5500.00
WHERE id = 3;

SELECT * FROM tb_colaboradores;

