CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    id_pizza INT PRIMARY KEY,
    nome_pizza VARCHAR(255) NOT NULL,
    valor DECIMAL(6, 2),
    ingredientes VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias 
(id_categoria, nome_categoria, descricao_categoria) 
VALUES
(1, "Salgada", "Pizza com recheio salgado"),
(2, "Doce", "Pizzas com recheios doces"),
(3, "Vegana", "Pizza com recheio vegano"),
(4, "Broto Salgada", "Pizza broto com recheio salgado"),
(5, "Broto Doce", "Pizza broto com recheio doce"),
(6, "Vegana Brotinho", "Pizza broto com recheio vegano");

INSERT INTO tb_pizzas 
(id_pizza, nome_pizza, valor, ingredientes, id_categoria) 
VALUES
(1, "Mussarela", 40.00, "Molho de tomate, mussarela", 1),
(2, "Calabresa", 55.00, "Molho de tomate, calabresa, cebola, mussarela", 1),
(3, "Frango com Catupiry", 48.00, "Molho de tomate, frango desfiado, catupiry", 1),
(4, "Chocolate", 65.00, "Molho de tomate, mussarela, provolone, parmesão, gorgonzola", 2),
(5, "Vegana", 100.00, "Molho de tomate, legumes", 3),
(6, "Mussarela Brotinho", 40.00, "Molho de tomate, mussarela", 4),
(7, "Calabresa Brotinho", 55.00, "Molho de tomate, calabresa, cebola, mussarela", 4),
(8, "Frango com Catupiry Brotinho", 48.00, "Molho de tomate, frango desfiado, catupiry", 4),
(9, "Chocolate Brotinho", 65.00, "Molho de tomate, mussarela, provolone, parmesão, gorgonzola", 5),
(10, "Vegana Brotinho", 100.00, "Molho de tomate, legumes", 6);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria LIKE "%Doce%";