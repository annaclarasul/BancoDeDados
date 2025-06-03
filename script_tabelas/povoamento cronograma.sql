use cronograma;

 INSERT INTO usuario (login, senha,ultimo_login )
 VALUES ("@jp.aluno.gmailcom","12345", '2023-10-16 08:00:00'),
        ("@gui.aluno.gmail.com","12345",'2023-10-14 13:00:10'),
        ("@ada.aluno.gmail.com","12345", '2023-10-15 17:00:00');

INSERT INTO aluno(Numero_Matricula,CPF,Nome,RG,Data_de_Nascimento,Telefone,Endereco, usuario_id)
VALUES (1710993992-8,19720647035,"Joao Pedro Mendonça",446880127,'2004-11-20',984302259,"Rua Norberto Finamore Marques,Bairro Centro de Japeri,RJ",1),
       (1911623923-0,60248201000,"Guilherme Machado",390842564,'2004-04-10',986947094,"Avenida Deputado Pinheiro Machado,Bairro Rodoviária,PI",2),
       (1911418184-3,63871856029,"Amanda Alves Rodrigues",398274757,'2004-07-30',97878453,"Rua Norberto Lima da Rosa,Bairro Balneário de Ilhas (Hercílio Luz),SC",3);
SELECT * FROM aluno;
  
 INSERT INTO materiasfaceis (materias,Aluno_id)
 VALUES ("Educaçao Fisica,Espanhol,Geografia,Historia",1),
        ("geometria,Quimica,Fisica,matematica",2),
        ("biologia,genetica, ecologia",3);
 SELECT * FROM materiasfaceis; 
 
 INSERT INTO materiasdificeis(Materias,aluno_id)
VALUES ("Ingles,Geometria,Fisica,Biologia",1),
       ("Geografia,Historia,Matematica,Lingua Portuguesa",2),
       ("Sociologia,Educaçao Fisica,Filosofia,Quimica",3);
SELECT * FROM materiasdificeis; 

INSERT INTO cronograma(Hora_de_Entrada,Intervalo,Planejamento_deveres,Hora_de_Saida,MateriasFaceis_id,materiasdificeis_id,aluno_id)
VALUES ("13:00:00","a cada uma hora dez minutos de intervalo","SEGUNDA:ingles|TERÇA:geometria|QUARTA:fisica|QUINTA:biologia|SEXTA:historia|SABADO:geografia|DOMINGO:descanço",        "18:00:00",1,1,1),
	   ("14:00:00","a cada uma hora cinco minutos de intervalo","SEGUNDA:geografia|TERÇA:historia|QUARTA:matematica| 
       QUINTA:lingua portuguesa|SEXTA:sociologia|SABADO:quimica|DOMINGO:descanço","18:00:00",2,2,2),
       ("12:00:00","a cada uma hora cinco minutos de intervalo", "SEGUNDA:sociologia|TERÇA:geometria| 
       QUARTA:Educaçao Fisica|QUINTA:filosofia|SEXTA:quimica|SABADO:matematica e geometria|DOMINGO:descanço","18:00:00",3,3,3);
 SELECT * FROM cronograma;

 INSERT INTO produtividade(Progresso,Tempo_Gasto,Dias_que_nao_renderam,Atraso,aluno_id)
 VALUES ("Todas as atividades das materias mais dificeis terminadas",'20:00:00'," 4 dias","leitura de conteúdos",1),
        ("Todos os capitulos de todas as materias de humanas e biologicas terminados",'25:00:00',"2 dias","atividades",2),
        ("Todas as atividades e conteudos das materias de exatas terminados",'35:00:00',"1 hora ","sem atrasos",3);
 SELECT * FROM produtividade;    
   
 INSERT INTO conteudos_concluidos(Conteudos,Produtividade_id,aluno_id)
VALUES ("Adjetivos comparativos- ingles",1,1),
       ("Genetica- Biologia",2,2),
       ("Trigonometria- Geometria",3,3);
SELECT * FROM conteudos_concluidos; 
 
 INSERT INTO rotina (Procedimento,Cronograma_id,aluno_id)
 VALUES ("Escola de manhã e cursinho de noite",1,1),
        ("cursinho de manhã e trabalho de noite",2,2),
        ("trabalho de manha e cursinho de noite",3,3);
 SELECT * FROM rotina;       
 
 
 