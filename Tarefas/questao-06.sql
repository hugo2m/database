# 6.	Faça uma consulta que selecione o nome, o salário dos funcionários e a descrição do departamento, mesmo que eles não tenham departamentos associados.

SELECT f.nome, f.salario, d.descricao 
from funcionario as f, departamento as d
WHERE f.codDepto = d.codigo

#Linha 3 seleciona o nome, salario e descrição da tabela funcionario
#Linha 4 chama a tabela funcionario de f e a departamento de d
#Linha 5 condição paara exibição onde codDepto tem que ser igual ao d.codigo
