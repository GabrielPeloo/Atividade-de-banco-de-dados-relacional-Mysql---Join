CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe BIGINT PRIMARY KEY,
    nome_classe VARCHAR(255) NOT NULL,
    arma VARCHAR(255)
);

CREATE TABLE tb_personagens (
    id_personagem BIGINT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ataque INT,
    defesa INT,
    id_classe BIGINT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes 
(id_classe, nome_classe, arma) 
VALUES
(1, "Guerreiro", "Espada"),
(2, "Mago", "Catalisador"),
(3, "Arqueiro", "Arco"),
(4, "Ladrão", "Adaga"),
(5, "Cavaleiro", "Espadão");

INSERT INTO tb_personagens 
(id_personagem, nome, ataque, defesa, id_classe) 
VALUES
(1, "Gabriel", 2500, 1200, 1),
(2, "João", 1800, 800, 2),
(3, "César", 3000, 1500, 3),
(4, "Jeff", 1600, 600, 4),
(5, "GG", 2200, 1800, 5),
(6, "Erick", 2100, 1100, 1),
(7, "Bgeno", 1500, 700, 2),
(8, "Rafa", 2800, 1300, 3);

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome_classe = 'Arqueiro';