CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao_categoria VARCHAR(255)
);


CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    fabricante VARCHAR(255),
    validade DATE,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Medicamentos', 'Produtos utilizados para o tratamento de doenças e condições de saúde'),
    ('Cosméticos', 'Produtos de cuidados pessoais, como cremes e perfumes'),
    ('Higiene', 'Produtos de higiene pessoal e limpeza'),
    ('Suplementos', 'Produtos para complementação alimentar e bem-estar'),
    ('Produtos Naturais', 'Produtos de origem natural para cuidados de saúde');


INSERT INTO tb_produtos (nome_produto, valor, fabricante, validade, id_categoria)
VALUES
    ('Paracetamol 500mg', 12.50, 'Farmacêutica X', '2025-12-31', 1),
    ('Ibuprofeno 200mg', 15.80, 'Laboratório Y', '2025-11-30', 1),
    ('Shampoo Antiqueda', 25.90, 'BelezaCare', '2026-05-15', 2),
    ('Perfume Floral', 59.99, 'Essência de Luxo', '2027-08-01', 2),
    ('Sabonete Líquido', 10.99, 'CleanCo', '2025-10-10', 3),
    ('Pasta de Dente', 8.00, 'HigieneMax', '2026-01-01', 3),
    ('Vitamina C 1000mg', 40.00, 'NutriHealth', '2026-12-31', 4),
    ('Proteína Whey', 120.00, 'ProteinPlus', '2027-03-01', 4);


SELECT * FROM tb_produtos WHERE valor > 50.00;


SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;


SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';


SELECT p.id_produto, p.nome_produto, p.valor, p.fabricante, p.validade, c.nome_categoria  FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;