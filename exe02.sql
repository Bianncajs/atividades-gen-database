CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos (
    id_produto BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    categoria VARCHAR(255),
    preco DECIMAL NOT NULL,
    estoque INT,
    PRIMARY KEY (id_produto)
);

INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES 
('Smartphone Samsung Galaxy', 'Eletrônicos', 1200.00, 50),
('Camiseta Nike', 'Roupas', 120.00, 200),
('Cafeteira Elétrica', 'Eletrodomésticos', 350.00, 30),
('Fone de Ouvido JBL', 'Eletrônicos', 450.00, 100),
('Notebook Dell', 'Eletrônicos', 3500.00, 20),
('Camiseta Adidas', 'Roupas', 150.00, 150),
('Lamina Philips', 'Eletrodomésticos', 600.00, 25),
('Tênis Puma', 'Calçados', 350.00, 80);

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 480.00 WHERE nome = 'Fone de Ouvido JBL'
