-- Criando a tabela refeições que será responsavel por juntar as outras tabelas
CREATE TABLE refeicao (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo_refeicao VARCHAR(20)
)

-- Inserindo dados na tabela refeicoes
INSERT INTO refeicao (tipo_refeicao) VALUES ("Café da manhã");
INSERT INTO refeicao (tipo_refeicao) VALUES ("Almoço");
INSERT INTO refeicao (tipo_refeicao) VALUES ("Lanche");
INSERT INTO refeicao (tipo_refeicao) VALUES ("Jantar");

CREATE TABLE alimentos (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20),
    fk_refeicao INT NOT NULL
)

INSERT INTO alimentos (nome, fk_refeicao) VALUES ("Pão de queijo", 1);
INSERT INTO alimentos (nome, fk_refeicao) VALUES ("Pastel", 1);
INSERT INTO alimentos (nome, fk_refeicao) VALUES ("Miojo", 2);
INSERT INTO alimentos (nome, fk_refeicao) VALUES ("Marmita", 2);
INSERT INTO alimentos (nome, fk_refeicao) VALUES ("Bolacha", 3);
INSERT INTO alimentos (nome, fk_refeicao) VALUES ("Brigadeiro", 3);
INSERT INTO alimentos (nome, fk_refeicao) VALUES ("Pizza", 4);
INSERT INTO alimentos (nome, fk_refeicao) VALUES ("Xis", 4)

-- Opções disponíveis no menu
SELECT alimentos.nome, refeicao.tipo_refeicao FROM refeicao
JOIN alimentos ON refeicao.id = alimentos.fk_refeicao;

-- Cafés da manhã disponíveis
SELECT refeicao.tipo_refeicao, alimentos.nome FROM refeicao 
JOIN alimentos ON refeicao.id = alimentos.fk_refeicao  WHERE refeicao.id=1;

-- Almoços disponíveis
SELECT refeicao.tipo_refeicao, alimentos.nome FROM refeicao 
JOIN alimentos ON refeicao.id = alimentos.fk_refeicao  WHERE refeicao.id=2;

-- Lanches disponíveis
SELECT refeicao.tipo_refeicao, alimentos.nome FROM refeicao 
JOIN alimentos ON refeicao.id = alimentos.fk_refeicao  WHERE refeicao.id=3;

-- Jantares disponíveis
SELECT refeicao.tipo_refeicao, alimentos.nome FROM refeicao 
JOIN alimentos ON refeicao.id = alimentos.fk_refeicao  WHERE refeicao.id=4;

