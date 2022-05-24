/* Crie um gatilho que ao se adicionar um voo, seja adicionado +1 voo para o piloto daquele voo.
 */
CREATE TRIGGER adicionarVooPiloto AFTER 
INSERT ON voo 
FOR EACH ROW 
UPDATE piloto SET num_voos = num_voos + 1 
WHERE codigo = NEW.cod_piloto; 

# Inserir piloto
INSERT INTO piloto(nome, num_voos)
VALUES ("XXXXXX XXXXXX XXXXX", 7);

# Inserir voo
INSERT INTO voo(tipo, cod_piloto, num_passageiros, distancia)
VALUES ("Comercial", 1, 630, 1700.0);
