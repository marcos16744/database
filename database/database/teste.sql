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
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO usuarios (nome, idade)
VALUES
('marcos',22),
('henrique',19),
('jose',44);


INSERT INTO pedidos (nome ,preco)
VALUES 
('playstation',3000),
('boneco',40),
('carro',50000);
