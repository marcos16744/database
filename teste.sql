DROP TABLE IF EXISTS pedidos CASCADE;
DROP TABLE IF EXISTS usuarios CASCADE;

CREATE TABLE usuarios(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE pedidos(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(70) NOT NULL,
    preco INT,
    usuario_id INT,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

INSERT INTO usuarios (nome, idade)
VALUES
('marcos',22),
('henrique',19),
('jose',44);

INSERT INTO pedidos (nome, preco, usuario_id)
VALUES
('playstation',3000,1),
('boneco',40,2),
('carro',50000,3);