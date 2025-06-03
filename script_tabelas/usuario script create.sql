use cronograma;
create table usuario (
id INT NOT NULL AUTO_INCREMENT,
login VARCHAR(20) NOT NULL,
senha VARCHAR (10) NOT NULL,
ultimo_login DATETIME NOT NULL,
aluno_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (aluno_id) REFERENCES aluno (idAluno)
);