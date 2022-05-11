#16 16.	Faça uma consulta que selecione o nome dos responsáveis de projeto que também são gerentes de departamento ou que ganham mais que o gerente de seu departamento. Use views se necessário.

CREATE VIEW vwResponsaveis(responsavel)
AS SELECT f.codigo 
from funcionario as f
WHERE f.codigo IN (SELECT codresponsavel from projeto)
SELECT f.nome
from funcionario as f 
JOIN vwResponsaveis as vr
ON f.codigo = vr.responsavel 
and f.codigo in (SELECt codgerente from departamento)
or f.codigo = vr.responsavel 
AND f.salario > (SELECT f.salario from funcionario as f, departamento as d 
WHERE f.codigo = f.codDepto
group by f.salario)
