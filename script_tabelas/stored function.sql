
DELIMITER //
CREATE FUNCTION tipo_DE_aluno (id_aluno INT) RETURNS char(45) DETERMINISTIC
BEGIN
DECLARE materias VARCHAR(255);
DECLARE exibir VARCHAR(45);
 
select mf.materias INTO materias
from materiasfaceis as mf inner join aluno as a on mf.aluno_id = a.id
where a.id = id_aluno;

IF materias like "%geometria%" or "%matematica%" or "%fisica%" or "%quimica%"  THEN
set exibir := "Exatas";
ELSEIF materias like "%Biologia%" or "%genetica%" or "%ecologia%" or "%morfologia%" THEN
set exibir := "biologicas";
ELSE 
SET exibir := "humanas"; 
END IF;
 
RETURN exibir; 
END
// DELIMITER ;

select tipo_DE_aluno(1);
