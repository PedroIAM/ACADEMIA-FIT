\# 🏋️ Sistema Academia PostgreSQL



Projeto completo de modelagem e gerenciamento de banco de dados para uma academia desenvolvido utilizando PostgreSQL e SQL relacional.



O sistema simula o funcionamento real de uma academia, contendo gerenciamento de alunos, matrículas, planos, pagamentos, treinos e relacionamento entre entidades através de chaves primárias e estrangeiras.



\---



\# 📌 Objetivo do Projeto



Este projeto foi desenvolvido com foco em:



\- Praticar modelagem relacional

\- Aprender SQL na prática

\- Trabalhar com relacionamentos entre tabelas

\- Utilizar consultas reais de sistemas corporativos

\- Simular cenários próximos do mercado

\- Desenvolver base para Engenharia de Dados e Banco de Dados



\---



\# 🧠 Conceitos Utilizados



O projeto utiliza diversos conceitos fundamentais e avançados de SQL:



\## 🔗 Relacionamentos



\- PRIMARY KEY

\- FOREIGN KEY

\- REFERENCES

\- Relacionamentos 1:N



\---



\## 📊 Consultas SQL



\- SELECT

\- WHERE

\- ORDER BY

\- GROUP BY

\- HAVING

\- COUNT()

\- SUM()

\- AVG()

\- INNER JOIN

\- LEFT JOIN



\---



\## 🏗️ Modelagem de Dados



\- Modelagem relacional

\- Normalização

\- Integridade referencial

\- Estruturação de entidades

\- Organização de tabelas



\---



\# 🗂️ Estrutura do Banco



O sistema contém tabelas relacionadas para simular um ambiente real de academia.



\## 👤 Alunos



Responsável pelo cadastro dos alunos.



Exemplos de dados:



\- Nome

\- Email

\- Data de nascimento

\- Matrícula



\---



\## 💳 Planos



Tabela contendo os planos disponíveis da academia.



Exemplos:



\- Mensal

\- Trimestral

\- Semestral

\- Anual



\---



\## 💰 Pagamentos



Controle de pagamentos realizados pelos alunos.



Informações como:



\- Valor

\- Data de pagamento

\- Status

\- Plano contratado



\---



\## 🏋️ Treinos



Tabela contendo os treinos cadastrados para os alunos.



\---



\## 📦 Relacionamentos



As tabelas se conectam através de FOREIGN KEYs para garantir integridade e consistência dos dados.



\---



\# ⚙️ Tecnologias Utilizadas



\- PostgreSQL

\- SQL

\- pgAdmin

\- Git

\- GitHub



\---



\# 🚀 Exemplos de Consultas



\## INNER JOIN



```sql

SELECT 

&#x20;   alunos.nome,

&#x20;   planos.nome\_plano

FROM alunos

INNER JOIN planos

ON alunos.id\_plano = planos.id\_plano;

