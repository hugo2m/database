/*Cadastre um cartão de milhagem para um cliente qualquer e logo após crie um gatilho que cadastre um cartão de milhagem para 
aquele cliente quando suas informações forem atualizadas. Veja e explique o que acontece quando esse procedimento for realizado.
*/

INSERT INTO milhas(cod_cliente, quantidade)
VALUES (1,  14);

# Criando o TRIGGER
CREATE TRIGGER addMileageCardWhenUpdatingCustomer AFTER
UPDATE ON cliente
FOR EACH ROW 
INSERT INTO milhas(cod_cliente, quantidade)
VALUES(OLD.codigo, 3) ;

# Atualizr código de cliente  = 1
UPDATE cliente SET endereco = "XXXXXXXXXXXXXXXXXX"
WHERE cliente.codigo = 1;
