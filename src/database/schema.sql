CREATE DATABASE carrosdb;

\c carrosdb;

-- Criacao da tabela Personagens
CREATE TABLE Personagens (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    imagem_url VARCHAR(255),
    filmes TEXT,
    curiosidades TEXT
);

-- Criacao da tabela Favoritos sem usuario_id
CREATE TABLE Favoritos (
    id SERIAL PRIMARY KEY,
    personagem_id INT NOT NULL,
    FOREIGN KEY (personagem_id) REFERENCES Personagens(id)
);

-- Inserts na tabela Personagens
INSERT INTO Personagens (nome, descricao, imagem_url, filmes, curiosidades) VALUES
('Relampago McQueen', 'Carro de corrida vermelho e protagonista da serie Carros.', 'https://exemplo.com/mcqueen.jpg', 'Carros, Carros 2, Carros 3', 'Tem o numero 95, inspirado no ano de lancamento do Toy Story.'),
('Mate', 'Caminhao guincho azul e melhor amigo do Relampago McQueen.', 'https://exemplo.com/mate.jpg', 'Carros, Carros 2, Carros 3', 'E conhecido por sua personalidade engracada e coracao grande.'),
('Sally Carrera', 'Porsche azul e interesse amoroso do Relampago McQueen.', 'https://exemplo.com/sally.jpg', 'Carros, Carros 2, Carros 3', 'Era advogada antes de se mudar para Radiator Springs.'),
('Doc Hudson', 'Carro medico e mentor do Relampago McQueen.', 'https://exemplo.com/doc.jpg', 'Carros', 'Foi um famoso corredor conhecido como "Hudson Hornet".'),
('Luigi', 'Fiat 500 amarelo que e dono da loja de pneus.', 'https://exemplo.com/luigi.jpg', 'Carros, Carros 2, Carros 3', 'Apaixonado por pneus italianos.'),
('Guido', 'Pequeno empilhadeira azul e ajudante do Luigi.', 'https://exemplo.com/guido.jpg', 'Carros, Carros 2, Carros 3', 'E muito rapido na troca de pneus.'),
('Flo', 'Dona do posto de gasolina e restaurante em Radiator Springs.', 'https://exemplo.com/flo.jpg', 'Carros, Carros 2, Carros 3', 'Tem um estilo retro dos anos 50.'),
('Ramone', 'Carro pintor e dono da loja de customizacao.', 'https://exemplo.com/ramone.jpg', 'Carros, Carros 2, Carros 3', 'Adora pintar carros com designs unicos.'),
('Sheriff', 'Carro policial que mantem a ordem em Radiator Springs.', 'https://exemplo.com/sheriff.jpg', 'Carros, Carros 2, Carros 3', 'E muito rigoroso com as regras de transito.'),
('Mack', 'Caminhao que transporta o Relampago McQueen para as corridas.', 'https://exemplo.com/mack.jpg', 'Carros, Carros 2, Carros 3', 'E leal e sempre apoia o McQueen.'),
('Chick Hicks', 'Rival do Relampago McQueen nas corridas.', 'https://exemplo.com/chick.jpg', 'Carros', 'Conhecido por usar taticas sujas para vencer.'),
('Fillmore', 'Furgao hippie que vende combustiveis alternativos.', 'https://exemplo.com/fillmore.jpg', 'Carros, Carros 2, Carros 3', 'Ama a cultura dos anos 60 e ecologia.'),
('Sarge', 'Jeep militar que e amigo de Fillmore.', 'https://exemplo.com/sarge.jpg', 'Carros, Carros 2, Carros 3', 'Tem uma personalidade rigida e disciplinada.'),
('Lizzie', 'Carro antigo que e dona da loja de souvenirs.', 'https://exemplo.com/lizzie.jpg', 'Carros', 'E a viuva do fundador de Radiator Springs.'),
('Tia e Mia', 'Irmas gemeas que sao fans do Relampago McQueen.', 'https://exemplo.com/tia_mia.jpg', 'Carros, Carros 2, Carros 3', 'Sao muito animadas e adoram corridas.');

-- Inserts na tabela Favoritos (somente personagem_id)
INSERT INTO Favoritos (personagem_id) VALUES
(1),
(2),
(3),
(1),
(5),
(7),
(10),
(4),
(6),
(8);
