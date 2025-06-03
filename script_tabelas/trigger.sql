
DELIMITER //
CREATE TRIGGER NOVO_LOGIN before insert on usuario
FOR EACH ROW 
BEGIN 
 
SET NEW.senha = MD5(NEW.senha);
END//
DELIMITER ;

DROP TRIGGER NOVO_LOGIN;

INSERT INTO usuario (id,login,senha,ultimo_login)
values (4,"@rj.aluno.gmailcom",'12345','2023-10-16 08:00:00')
