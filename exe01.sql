CREATE DATABASE rh_empresa;

USE rh_empresa;

CREATE TABLE colaboradores (
    id_colaborador BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    salario DECIMAL NOT NULL,
    data_admissao DATE,
    PRIMARY KEY (id_colaborador)
);

INSERT INTO colaboradores (nome, cargo, salario, data_admissao)
VALUES 
('Laura Ferreira', 'Analista de TI', 2500.00, '2021-10-21'),
('Maria Luciene Jesus', 'Gerente de RH', 3500.00, '2022-10-10'),
('Bruno Siqueira', 'Assistente Administrativo', 1800.00, '2022-08-05'),
('Fernanda Lima', 'Analista de Marketing', 2200.00, '2019-08-29'),
('João Pedro Santos', 'Desenvolvedor mobile junior', 3000.00, '2018-07-12');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores
SET salario = 2000.00
WHERE nome = 'Bruno Siqueira';

