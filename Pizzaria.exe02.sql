CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY, 
    nome_categoria VARCHAR(255) NOT NULL, 
    descricao_categoria VARCHAR(255) 
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY, 
    nome_pizza VARCHAR(255) NOT NULL, 
    valor DECIMAL(10, 2) NOT NULL, 
    tamanho VARCHAR(255), 
    ingredientes VARCHAR(255), 
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria) 
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Tradicionais', 'Pizzas clássicas com ingredientes tradicionais'),
    ('Vegetariana', 'Pizzas sem carne, com vegetais variados'),
    ('Doce', 'Pizzas doces para sobremesa'),
    ('Especiais', 'Pizzas especiais e diferenciadas'),
    ('Fitness', 'Pizzas com ingredientes saudáveis e baixos em calorias');
    
INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, ingredientes, id_categoria)
VALUES
    ('Pizza Marguerita', 45.00, 'Média', 'Mussarela, tomate, manjericão', 1), 
    ('Pizza Calabresa acebolada', 48.00, 'Grande', 'Calabresa, cebola, azeitona', 1), 
    ('Pizza Vegetariana', 42.00, 'Média', 'Tomate, cogumelos, pimentão, cebola', 2), 
    ('Pizza Nutella', 55.00, 'Pequena', 'Nutella, morango', 3), 
    ('Pizza Frango com Catupiry', 50.00, 'Grande', 'Frango desfiado, catupiry, milho', 1), 
    ('Pizza Portuguesa', 60.00, 'Média', 'Presunto, ovos, cebola, azeitona, pimentão', 1), 
    ('Pizza de Trufas', 100.00, 'Média', 'Trufas, cogumelos, molho branco', 4), 
    ('Pizza Fitness', 55.00, 'Grande', 'Frango grelhado, queijo light, tomate', 5); 
    
SELECT * FROM tb_pizzas
WHERE valor > 45.00;

SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT p.id_pizza, p.nome_pizza, p.valor, p.tamanho, p.ingredientes, c.nome_categoria FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.id_pizza, p.nome_pizza, p.valor, p.tamanho, p.ingredientes, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';

