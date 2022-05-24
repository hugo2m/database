#Trigger
CREATE TRIGGER deleteTodosPassageiros BEFORE
DELETE on voo 
for each ROW 
DELETE FROM cliente_voo 
WHERE cliente_voo.cod_voo = OLD.codigo;
