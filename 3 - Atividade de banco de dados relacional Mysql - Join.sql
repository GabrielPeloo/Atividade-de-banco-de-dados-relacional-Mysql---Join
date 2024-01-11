CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    valor DECIMAL(6, 2),
    descricao_produto VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias 
(id_categoria, nome_categoria, descricao_categoria) 
VALUES
(1, "Ferramentas", "Construção e manutenção"),
(2, "Elétrica", "Instalações"),
(3, "Hidráulica", "Materiais hidráulicos"),
(4, "Reforma", "Produtos para acabamentos"),
(5, "Segurança", "Itens de segurança");

INSERT INTO tb_produtos 
(id_produto, nome_produto, valor, id_categoria) 
VALUES
(1, "Martelo", 15.00, 1),
(2, "Fio", 120.00, 2),
(3, "Torneira", 45.00, 3),
(4, "Tinta", 80.00, 4),
(5, "Corda", 35.00, 5),
(6, "Chave de Fenda", 10.00, 1),
(7, "Luminária", 150.00, 2),
(8, "Cimento", 25.00, 4);

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Hidráulica";