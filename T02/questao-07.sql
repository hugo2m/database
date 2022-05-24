/* Crie um gatilho que adicione mais um passageiro a um voo sempre que um cliente entre em um voo. 
*/
# Criando o TRIGGER
CREATE TRIGGER addPassengerOnFlight AFTER
INSERT ON cliente_voo
FOR EACH ROW
UPDATE voo SET num_passageiros = num_passageiros + 1
WHERE codigo = new.cod_voo;

# Inserir cliente
INSERT INTO cliente(nome, endereco)
VALUES("XXXXX XXXXXX XXXXXXX", "XXXXX XXXXXXXXX");

# Inserir voo
INSERT INTO voo(tipo, cod_piloto, num_passageiros, distancia)
VALUES ("Comercial", 7, 560, 1500.00);

# Inserir passageiro no voo
INSERT INTO cliente_voo(cod_cliente, cod_voo, classe)
VALUES (6, 4, "Econômica");
