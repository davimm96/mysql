CREATE TABLE pessoas (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(10) NOT NULL,
	nascimento DATE
)

INSERT INTO pessoas (nome, nascimento) VALUES ("Davi", "1996/03/12");
INSERT INTO pessoas (nome, nascimento) VALUES ("Pedro", "1995/07/17");
INSERT INTO pessoas (nome, nascimento) VALUES ("Marcela", "2000/04/05")