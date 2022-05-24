/*Crie um gatilho que delete todos os clientes de um voo sempre que aquele voo for deletado e 
mais um gatilho para deletar o piloto. (Para efeito de informação, considere que o avião caiu).
*/

#Trigger
CREATE TRIGGER deleteTodosPassageiros BEFORE
DELETE on voo 
for each ROW 
DELETE FROM cliente_voo 
WHERE cliente_voo.cod_voo = OLD.codigo;
