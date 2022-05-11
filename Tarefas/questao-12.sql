#12 Faça uma consulta que selecione o nome do projeto, data de início e fim do projeto, a descrição da atividade do projeto, data de início e fim da atividade.

SELECT p.nome, p.datainicio, p.datafim, a.descricao, a.datainicio, a.datafim
FROM atividade a, projeto p
WHERE a.codigo = a.codprojeto and p.codigo = a.codprojeto;
