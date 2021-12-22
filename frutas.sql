-- Criando a tabela
CREATE TABLE frutas (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(10) NOT NULL,
    cor VARCHAR(10) NOT NULL
)

-- Inserindo dados
INSERT INTO frutas (nome, cor) VALUES ("banana", "amarelo");
INSERT INTO frutas (nome, cor) VALUES ("maca", "vermelho");
INSERT INTO frutas (nome, cor) VALUES ("uva", "roxo");
INSERT INTO frutas (nome, cor) VALUES ("mamao", "amarelo");
INSERT INTO frutas (nome, cor) VALUES ("melao", "azul");
INSERT INTO frutas (nome, cor) VALUES ("melancia", "verde");
INSERT INTO frutas (nome, cor) VALUES ("tomate", "vermelho")

-- Alterações
UPDATE frutas SET cor="amarelo" WHERE id=5;
DELETE FROM frutas WHERE id=7;

-- Contando quantas frutas são da cor amarela
SELECT COUNT(id) cor FROM frutas GROUP BY cor;

-- Criando uma nova coluna
ALTER TABLE frutas ADD tamanho VARCHAR(10) NOT NULL AFTER cor;

-- Inserindo dados na nova coluna
UPDATE frutas SET tamanho="medio" WHERE id=1;
UPDATE frutas SET tamanho="medio" WHERE id=2;
UPDATE frutas SET tamanho="pequeno" WHERE id=3;
UPDATE frutas SET tamanho="grande" WHERE id=4;
UPDATE frutas SET tamanho="grande" WHERE id=5;
UPDATE frutas SET tamanho="enorme" WHERE id=6;
