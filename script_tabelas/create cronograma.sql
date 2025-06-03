drop DATABASE cronograma;
CREATE DATABASE Cronograma;
USE Cronograma;

create table usuario (
id INT NOT NULL AUTO_INCREMENT,
login VARCHAR(20) NOT NULL,
senha VARCHAR (10) NOT NULL,
ultimo_login DATETIME NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE Aluno
 (
  id INT NOT NULL auto_increment,
  Numero_Matricula BIGINT NOT NULL,
  CPF BIGINT NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  RG BIGINT NOT NULL,
  Data_de_Nascimento DATETIME NOT NULL,
  Telefone BIGINT NOT NULL,
  Endereco VARCHAR(7000) NOT NULL,
  usuario_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (usuario_id) REFERENCES usuario (id)
    
   );
   
    CREATE TABLE MateriasFaceis
 (
   id INT NOT NULL auto_increment,
   materias VARCHAR(255) NULL,
   Aluno_id INT NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (Aluno_id)
   REFERENCES Aluno(id)
  );
  
   CREATE TABLE MateriasDificeis
(
   id INT NOT NULL auto_increment,
   Materias VARCHAR(7000) NOT NULL,
   aluno_id INT NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (aluno_id)
   REFERENCES aluno(id)
    );
    
    CREATE TABLE Cronograma
 (
   id INT NOT NULL auto_increment,
   Hora_de_Entrada TIME NOT NULL,
   Intervalo VARCHAR(7000) NOT NULL,
   Planejamento_deveres VARCHAR(255) NOT NULL,
   Hora_de_Saida TIME NOT NULL,
   MateriasFaceis_id INT NOT NULL,
   materiasdificeis_id INT NOT NULL,
   aluno_id INT NOT NULL,
   PRIMARY KEY (id),
   foreign key (MateriasFaceis_id)
   REFERENCES  MateriasFaceis(id),
   foreign key (materiasdificeis_id)
   REFERENCES materiasdificeis(id),
   FOREIGN KEY  (aluno_id)
   REFERENCES aluno(id)
  );
    
CREATE TABLE Produtividade
 (
   id INT NOT NULL auto_increment,
   Progresso VARCHAR(255) NULL,
   Tempo_Gasto TIME NULL,
   Dias_que_nao_renderam VARCHAR(255) NULL,
   Atraso VARCHAR(255) NULL,
   aluno_id INT NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY  (aluno_id)
   REFERENCES aluno(id)
  );
  
  CREATE TABLE Conteudos_Concluidos
 (
   id INT NOT NULL auto_increment,
   Conteudos VARCHAR(255) NULL,
   Produtividade_id INT NOT NULL,
   aluno_id INT NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (Produtividade_id)
   REFERENCES Produtividade (id),
   FOREIGN KEY  (aluno_id)
   REFERENCES aluno(id)
   );
  
CREATE TABLE Rotina
 (
   id INT NOT NULL auto_increment,
   Procedimento LONGTEXT NOT NULL,
   Cronograma_id INT NOT NULL,
   aluno_id INT NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (Cronograma_id)
   REFERENCES Cronograma (id),
   FOREIGN KEY  (aluno_id)
   REFERENCES aluno(id)
 );

