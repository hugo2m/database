# 4.	Faça uma consulta que selecione o nome, o salário e o departamento dos funcionários que não são gerentes, ordenando pelo Código do Departamento.

SELECT f.nome, f.salario, f.coddepto
from funcionario as f
WHERE f.codigo NOT IN (SELECT codgerente from departamento) 
ORDER BY f.codigo

#Linha 3 seleciona o nome, salario e codigo do departamento
#Linha 4 associa a seleção da linha acima com a tabela funcionario e define ela como f
#Linha 5 condição do f.codigo nao ser do codgerente da tabela departamento
#Linha 6 ordena a exibição por cádigo
