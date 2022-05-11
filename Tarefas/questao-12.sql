
SELECT p.nome, p.datainicio, p.datafim, a.descricao, a.datainicio, a.datafim
FROM atividade a, projeto p
WHERE a.codigo = a.codprojeto and p.codigo = a.codprojeto;
