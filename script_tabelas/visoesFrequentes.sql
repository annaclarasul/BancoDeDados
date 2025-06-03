              
CREATE VIEW situaçao_curricular AS
SELECT 
a.id as id_aluno,
a.Numero_Matricula,
a.nome,
u.login,
p.atraso,
p.progresso,
cc.conteudos as conteudos_concluidos
FROM
aluno as a
INNER JOIN produtividade as p on a.id = p.aluno_id
INNER JOIN usuario as u ON a.usuario_id = u.id
INNER JOIN conteudos_concluidos as cc ON a.id = cc.aluno_id
;

SELECT * FROM situaçao_curricular;

CREATE VIEW planejamento_diario AS
SELECT 
a.id as id_aluno,
a.Numero_Matricula,
a.nome,
u.login,
c.planejamento_deveres,
r.procedimento
FROM
aluno as a
INNER JOIN produtividade as p on a.id = p.aluno_id
INNER JOIN usuario as u ON a.usuario_id = u.id
INNER JOIN cronograma as c ON a.id = c.aluno_id
INNER JOIN rotina as r ON a.id = r.aluno_id
;


SELECT * FROM planejamento_diario;





              
