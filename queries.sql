SELECT 
    a.nome,
    p.nome_plano
FROM alunos a
INNER JOIN planos p
ON a.id_plano = p.id_plano;
-------------------------------
SELECT 
    id_plano,
    COUNT(*) AS total_alunos
FROM alunos
GROUP BY id_plano;
-------------------------------
SELECT SUM(valor)
FROM pagamentos;