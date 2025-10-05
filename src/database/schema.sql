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

-- Criacao da tabela Favoritos 
CREATE TABLE Favoritos (
    id SERIAL PRIMARY KEY,
    personagem_id INT NOT NULL,
    FOREIGN KEY (personagem_id) REFERENCES Personagens(id)
);

INSERT INTO Personagens (nome, descricao, imagem_url, filmes, curiosidades) VALUES
('Relampago McQueen', 'Carro de corrida vermelho e protagonista da serie Carros.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14102229/relampago-mcqueen.png', 'Carros, Carros 2, Carros 3', 'Tem o numero 95, inspirado no ano de lancamento do Toy Story.'),
('Mate', 'Caminhao guincho azul e melhor amigo do Relampago McQueen.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14102436/Mate.png', 'Carros, Carros 2, Carros 3', 'E conhecido por sua personalidade engracada e coracao grande.'),
('Sally Carrera', 'Porsche azul e interesse amoroso do Relampago McQueen.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14102548/Sally.png', 'Carros, Carros 2, Carros 3', 'Era advogada antes de se mudar para Radiator Springs.'),
('Doc Hudson', 'Carro medico e mentor do Relampago McQueen.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14103548/doc-hudson.png', 'Carros', 'Foi um famoso corredor conhecido como "Hudson Hornet".'),
('Luigi', 'Fiat 500 amarelo que e dono da loja de pneus.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14103932/Luigi.png', 'Carros, Carros 2, Carros 3', 'Apaixonado por pneus italianos.'),
('Guido', 'Pequeno empilhadeira azul e ajudante do Luigi.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14104039/Guido.png', 'Carros, Carros 2, Carros 3', 'E muito rapido na troca de pneus.'),
('Flo', 'Dona do posto de gasolina e restaurante em Radiator Springs.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14103424/Flo.png', 'Carros, Carros 2, Carros 3', 'Tem um estilo retro dos anos 50.'),
('Ramone', 'Carro pintor e dono da loja de customizacao.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14103242/Ramone.png', 'Carros, Carros 2, Carros 3', 'Adora pintar carros com designs unicos.'),
('Sheriff', 'Carro policial que mantem a ordem em Radiator Springs.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14103816/xerife.png', 'Carros, Carros 2, Carros 3', 'E muito rigoroso com as regras de transito.'),
('Mack', 'Caminhao que transporta o Relampago McQueen para as corridas.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14102915/Mack.png', 'Carros, Carros 2, Carros 3', 'E leal e sempre apoia o McQueen.'),
('Chick Hicks', 'Rival do Relampago McQueen nas corridas.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14103027/Chick-Hicks.png', 'Carros', 'Conhecido por usar taticas sujas para vencer.'),
('Fillmore', 'Furgao hippie que vende combustiveis alternativos.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14103710/fillmore.png', 'Carros, Carros 2, Carros 3', 'Ama a cultura dos anos 60 e ecologia.'),
('Sarge', 'Jeep militar que e amigo de Fillmore.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14104340/sargento.png', 'Carros, Carros 2, Carros 3', 'Tem uma personalidade rigida e disciplinada.'),
('Lizzie', 'Carro antigo que e dona da loja de souvenirs.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14104137/Lizzie.png', 'Carros', 'E a viuva do fundador de Radiator Springs.'),
('Tia e Mia', 'Irmas gemeas que sao fans do Relampago McQueen.', 'https://a-static.mlcdn.com.br/420x420/disney-pixar-carros-fas-tia-e-mia/gh2store/rmcqfans/6c5d11c5b09436c2c39baab9c9b833d0.jpeg', 'Carros, Carros 2, Carros 3', 'Sao muito animadas e adoram corridas.'),
('Finn McMissile', 'Um mestre espiao britanico que confunde Mate com um agente secreto.', 'https://i.ytimg.com/vi/13XPufB8VZQ/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAqMKq3V8qB2F8bx7BlV0obxAW0pA', 'Carros 2', 'Seu design e uma homenagem a varios carros de espionagem classicos.'),
('Holley Shiftwell', 'Uma agente secreta britanica em treinamento, especialista em tecnologia.', 'https://i.pinimg.com/564x/ca/8c/41/ca8c41b51110e38c09e32ed7d2575704.jpg', 'Carros 2', 'E equipada com armas ocultas, como eletrochoques e um gancho.'),
('Cruz Ramirez', 'Uma treinadora de corridas otimista que se torna a pupila de McQueen.', 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b17c6a45-2163-483a-99a1-d0bbe0fbc00e/dgkwf3h-503c83d1-ee1a-4497-9dfb-39091c011348.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi9iMTdjNmE0NS0yMTYzLTQ4M2EtOTlhMS1kMGJiZTBmYmMwMGUvZGdrd2YzaC01MDNjODNkMS1lZTFhLTQ0OTctOWRmYi0zOTA5MWMwMTEzNDguanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ug4pauZzEUNoqCZ4J76ZTB_R2UxnzUizNO4cOW4Arh0', 'Carros 3', 'Seu numero de corrida e 51, uma referencia ao numero de Doc Hudson.'),
('Jackson Storm', 'Um carro de corrida de alta tecnologia e o principal rival de McQueen em Carros 3.', 'https://preview.redd.it/jackson-storms-design-v0-svozhmwvrclc1.jpeg?auto=webp&s=6b09164d7335dd924e89b5c2e1037b762cbc141d', 'Carros 3', 'Representa a nova geracao de pilotos que utilizam tecnologia e dados para vencer.'),
('Strip "O Rei" Weathers', 'Uma lenda das corridas e sete vezes campeao da Copa Pistao.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14102752/Strip-Weathers.png', 'Carros, Carros 3', 'E baseado no Plymouth Superbird de Richard Petty.'),
('Francesco Bernoulli', 'Um arrogante carro de Formula 1 italiano e rival de McQueen no Grand Prix Mundial.', 'https://m.media-amazon.com/images/M/MV5BZjM1ZGU4NzItMzljNi00NTdhLTgzM2UtOTI1NjYzYTgxN2FmXkEyXkFqcGdeQVRoaXJkUGFydHlJbmdlc3Rpb25Xb3JrZmxvdw@@._V1_FMjpg_UX1000_.jpg', 'Carros 2', 'Refere-se a si mesmo na terceira pessoa e e extremamente confiante.'),
('Professor Z', 'O principal vilao de Carros 2, um designer de armas alemao.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKbGP2sA_0Elvk7A14fsDZw1wxvXASzY39Ag&s', 'Carros 2', 'Seu modelo e um Zundapp Janus, um microcarro alemao muito raro.'),
('Smokey', 'O antigo mecanico e chefe de equipe de Doc Hudson.', 'https://i.pinimg.com/564x/0d/de/78/0dde78b5aa8620c6640b870010ce12a4.jpg', 'Carros 3', 'O personagem foi inspirado na lenda da vida real da NASCAR, Henry "Smokey" Yunick.'),
('Sterling', 'Um bilionario e o novo dono do centro de corridas Rust-eze em Carros 3.', 'https://preview.redd.it/uxp73ugds4k31.jpg?width=1080&crop=smart&auto=webp&s=ec510c4bc143f16ead405351cc43f41f7a812c92', 'Carros 3', 'Ele admira McQueen como uma marca, mas nao acredita mais em seu potencial nas pistas.'),
('Miss Fritter', 'Um onibus escolar assustador que participa da corrida de demolicao em Thunder Hollow.', 'https://a-static.mlcdn.com.br/%7Bw%7Dx%7Bh%7D/disney-pixar-carros-miss-fritter-maria-busao/gh2store/msfritter/38c9fe34572961470a0deb4847c9e6a0.jpeg', 'Carros 3', 'Sua placa de licenca "FRITR" e uma referencia ao seu nome e sua natureza destruidora.'),
('Darrell Cartrip', 'Um ex-corredor da Copa Pistao e comentarista de corridas.', 'https://static.wikia.nocookie.net/carsvideogames/images/6/6f/Darrel_Cartrip_Artwork.jpg/revision/latest?cb=20160223080359', 'Carros, Carros 2, Carros 3', 'E dublado pelo ex-piloto da NASCAR Darrell Waltrip na versao original.'),
('Bob Cutlass', 'O principal locutor das corridas da Copa Pistao, parceiro de Darrell.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN0aVh1SrRHg_UTVlU-A5My-OO-AuR8kyj_w&s', 'Carros, Carros 2, Carros 3', 'Seu nome e uma brincadeira com o famoso locutor esportivo Bob Costas.'),
('Red', 'Um caminhao de bombeiros timido e emocional de Radiator Springs.', 'https://s3.amazonaws.com/blog.dentrodahistoria.com.br/wp-content/uploads/2022/09/14104447/Ruivo-1.png', 'Carros, Carros 2, Carros 3', 'Ele raramente fala e e conhecido por chorar com facilidade, usando sua mangueira para regar as plantas.'),
('Tex Dinoco', 'O bilionario proprietario da equipe de corrida Dinoco.', 'https://toppng.com/uploads/preview/cars-movie-mattel-pixar-cars-tex-dinoco-11563242091ywgyf5clzm.png', 'Carros, Carros 3', 'E um Cadillac Coupe de Ville de 1975 com enormes chifres de touro na frente.'),
('Grem e Acer', 'Dois capangas ineptos do Professor Z no filme Carros 2.', 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhx-g4iHatcIAYUzF9S8hneFQsFaW-N4TqgcPLDwafenenC7j9Tb_LT74BaozrEVkqlouIXpZT0EQp3g4FWj1-KBTv-UcAB_sZsWbRxC3gDhL8QJg1MMgqx_fGVnzDcq33ZlkY_gzs-Z7E/s1600/Screen+Shot+2015-09-04+at+11.29.05+PM.png', 'Carros 2', 'Sao modelos de carros considerados "latas-velhas": um AMC Gremlin e um AMC Pacer.');

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