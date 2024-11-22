CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes (
    id_estudante BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    nota_final DECIMAL NOT NULL,
    data_matricula DATE,
    PRIMARY KEY (id_estudante)
);

INSERT INTO estudantes (nome, idade, nota_final, data_matricula)
VALUES 
('João Pedro', 18, 8.5, '2023-01-15'),
('Maria Luciene', 19, 7.0, '2022-08-22'),
('Bruno Siqueira', 17, 6.5, '2023-03-10'),
('Ana Catarina', 20, 9.0, '2021-11-01'),
('Ingrid Marques', 18, 5.8, '2023-02-05'),
('Virginia Silva', 19, 7.5, '2023-04-12'),
('Gustavo Lima', 17, 10.0, '2023-03-20'),
('Silvio Santos', 21, 6.0, '2022-12-30');

SELECT * FROM estudantes WHERE nota_final > 7.0;

SELECT * FROM estudantes WHERE nota_final < 7.0;

UPDATE estudantes SET nota_final = 7.2 WHERE nome = 'Lucas Pereira';
