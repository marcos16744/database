# Projeto SQL — Usuários e Pedidos

Projeto simples utilizando PostgreSQL para praticar conceitos fundamentais de banco de dados relacional.

## 📚 Conceitos praticados

* CREATE TABLE
* PRIMARY KEY
* FOREIGN KEY
* Relacionamentos entre tabelas
* INSERT INTO
* SELECT
* JOIN
* DROP TABLE
* CASCADE

---

# 🛠 Tecnologias

* PostgreSQL
* SQL
* Git/GitHub

---

# 📂 Estrutura do projeto

O projeto possui duas tabelas:

## usuarios

Armazena informações dos usuários.

| Coluna       | Tipo               |
| ------------ | ------------------ |
| id           | SERIAL PRIMARY KEY |
| nome         | VARCHAR(50)        |
| idade        | INT                |
| data_criacao | TIMESTAMP          |

---

## pedidos

Armazena os pedidos vinculados aos usuários.

| Coluna       | Tipo               |
| ------------ | ------------------ |
| id           | SERIAL PRIMARY KEY |
| nome         | VARCHAR(70)        |
| preco        | INT                |
| usuario_id   | INT                |
| data_criacao | TIMESTAMP          |

---

# 🔗 Relacionamento

A tabela `pedidos` possui uma chave estrangeira:

```sql
FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
```

Isso cria um relacionamento entre usuários e pedidos.

---

# ▶ Como executar o projeto

## 1. Criar o banco de dados

```bash
psql -U postgres -d postgres -c "CREATE DATABASE cadastro_pedido;"
```

---

## 2. Executar o arquivo SQL

```bash
psql -U postgres -d cadastro_pedido -f teste.sql
```

---

# 📌 Exemplo de JOIN

```sql
SELECT
    usuarios.nome,
    pedidos.nome,
    pedidos.preco
FROM usuarios
JOIN pedidos
ON usuarios.id = pedidos.usuario_id;
```

---

# 🎯 Objetivo

Praticar modelagem relacional e operações básicas em SQL utilizando PostgreSQL.
