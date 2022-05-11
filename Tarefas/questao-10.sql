#10.	Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto, o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.

SELECT p.nome as "nome", d.descricao as "departamento projeto", f.nome as "gerente", dg.descricao as "departamento gerente"
FROM projeto as p
JOIN departamento as d
ON p.coddepto = d.codigo
JOIN funcionario as f
ON p.codresponsavel = f.codigo
JOIN departamento as dg
ON f.coddepto = dg.codigo
