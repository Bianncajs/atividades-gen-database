CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(255)
);


CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    fornecedor VARCHAR(255),
    validade DATE,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Carnes', 'Produtos de carne bovina, suína, aves, entre outros'),
    ('Vegetais', 'Produtos de hortaliças e legumes frescos'),
    ('Frutas', 'Produtos frescos, como frutas tropicais e regionais'),
    ('Laticínios', 'Produtos derivados do leite, como queijos e iogurtes'),
    ('Temperos', 'Ervas e condimentos para temperar alimentos');


INSERT INTO tb_produtos (nome_produto, valor, fornecedor, validade, id_categoria)
VALUES
    ('Alcatra Bovina', 45.00, 'Carnes do Sul', '2025-12-31', 1),
    ('Frango Congelado', 25.50, 'Avícola do Norte', '2025-11-30', 1),
    ('Pernil Suíno', 55.00, 'Carnes do Sul', '2025-09-20', 1),
    ('Cenoura', 3.50, 'Hortifruti Boa Colheita', '2026-02-15', 2),
    ('Alface', 4.00, 'Hortifruti Boa Colheita', '2026-03-10', 2),
    ('Maçã Gala', 7.00, 'Frutalândia', '2025-07-10', 3),
    ('Banana Prata', 5.50, 'Frutalândia', '2025-10-01', 3),
    ('Queijo Mussarela', 15.00, 'Laticínios do Sertão', '2026-05-25', 4);


SELECT * FROM tb_produtos WHERE valor > 50.00;


SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;


SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.id_produto, p.nome_produto, p.valor, p.fornecedor, p.validade, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;