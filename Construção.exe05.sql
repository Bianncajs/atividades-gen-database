CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;


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
    quantidade_estoque INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Elétricos', 'Produtos elétricos, como fiação, tomadas e dijuntores'),
    ('Hidráulicos', 'Produtos para sistemas hidráulicos, como canos e conexões'),
    ('Ferragens', 'Produtos metálicos, como pregos, parafusos e ferramentas'),
    ('Tintas', 'Produtos para pintura, como tintas e pincéis'),
    ('Construção', 'Produtos para construção, como cimento, areia e tijolos');


INSERT INTO tb_produtos (nome_produto, valor, fornecedor, quantidade_estoque, id_categoria)
VALUES
    ('Fio Elétrico 2mm', 80.00, 'Elétrica Fácil', 150, 1),
    ('Disjuntor 15A', 50.00, 'Elétrica Fácil', 200, 1),
    ('Cano PVC 1.5"', 40.00, 'Construlândia', 300, 2),
    ('Registro de Gaveta 1"', 60.00, 'Construlândia', 180, 2),
    ('Parafuso 6x50', 5.00, 'Ferragens São Jorge', 1000, 3),
    ('Martelo de Unha', 25.00, 'Ferragens São Jorge', 500, 3),
    ('Tinta Acrílica Branca', 120.00, 'Tinta Color', 100, 4),
    ('Pincel para Pintura', 15.00, 'Tinta Color', 350, 4),
    ('Cimento CP32', 30.00, 'Cimento Forte', 1000, 5),
    ('Areia Grossa', 70.00, 'Construção Local', 800, 5),
    ('Tijolo Comum', 2.00, 'Construção Local', 5000, 5),
    ('Argamassa ACIII', 45.00, 'Construção Fácil', 600, 5);


SELECT * FROM tb_produtos WHERE valor