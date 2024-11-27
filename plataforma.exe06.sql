CREATE DATABASE db_curso_da_minha_vida;


USE db_curso_da_minha_vida;


CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao_categoria VARCHAR(255)
);


CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    duracao INT NOT NULL,
    instrutor VARCHAR(100),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Programação', 'Cursos relacionados ao desenvolvimento de software e programação'),
    ('Marketing', 'Cursos sobre estratégias de marketing e publicidade'),
    ('Design', 'Cursos de design gráfico e design de interfaces'),
    ('Gestão', 'Cursos sobre gestão de empresas e liderança'),
    ('Saúde', 'Cursos relacionados a áreas de saúde e bem-estar');


INSERT INTO tb_cursos (nome_curso, valor, duracao, instrutor, id_categoria)
VALUES
    ('Curso de Java Básico', 450.00, 40, 'Carlos Silva', 1),
    ('Curso de Marketing Digital', 600.00, 60, 'Patrícia Souza', 2),
    ('Curso de Photoshop para Iniciantes', 350.00, 30, 'José Almeida', 3),
    ('Curso de Liderança Empresarial', 500.00, 35, 'Mariana Costa', 4),
    ('Curso de Alimentação Saudável', 400.00, 20, 'Luciana Oliveira', 5),
    ('Curso de Python para Iniciantes', 700.00, 50, 'Ricardo Mendes', 1),
    ('Curso de Estratégias de SEO', 750.00, 40, 'Ana Costa', 2),
    ('Curso de UX/UI Design', 850.00, 45, 'Lucas Silva', 3);


SELECT * FROM tb_cursos WHERE valor > 500.00;


SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;


SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';


SELECT c.id_curso, c.nome_curso, c.valor, c.duracao, c.instrutor, cat.nome_categoria FROM tb_cursos c INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria;


SELECT c.id_curso, c.nome_curso, c.valor, c.duracao, c.instrutor, cat.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria
WHERE cat.nome_categoria = 'Programação';