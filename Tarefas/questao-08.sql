#8.	Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o número de projetos de cada departamento. Deve aparecer os departamentos sem gerente e sem projetos. Crie e use views na consulta, se necessário.

CREATE VIEW InformacaoDepartamento(departamento, gerente, qtdprojetos) 
AS SELECT d.descricao, f.nome, COUNT(p.coddepto)				
From departamento as d
LEFT JOIN projeto as p 											
oN d.codigo = p.coddepto										
LEFT JOIN funcionario as f
ON f.codigo = p.codresponsavel
GROUP BY d.descricao;											
SELECT * FROM InformacaoDepartamento								

#Linha 03 Cria uma tabela virtual cujo conteúdo é definido por uma consulta.
#Linha 04 Utilizada para determinar o valor total de registros que atenda a uma condição específica. 
#Linha 06 Permite obter não apenas os dados relacionados de duas tabelas, mas também os dados não relacionados encontrados na tabela à esquerda da cláusula JOIN
#Linha 10 Agrupa linhas baseado em semelhanças entre elas
#Linha 11 Faz uma busca geral * na tabela 
