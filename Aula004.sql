DROP DATABASE IF EXISTS USUARIO; 
CREATE DATABASE USUARIO; 
USE USUARIO; 

CREATE TABLE clientes ( 
    id_Clientes INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100), 
    email VARCHAR(100), 
    cpf VARCHAR(14) 
); 

CREATE TABLE pedidos( 
    id_Pedidos INT PRIMARY KEY AUTO_INCREMENT, 
    id_Clientes INT, 
    data_pedido DATE, 
    valor_total DECIMAL(10,2), 
    FOREIGN KEY(id_Clientes) REFERENCES clientes(id_Clientes) 
); 

ALTER TABLE clientes ADD telefone VARCHAR(20); 

INSERT INTO clientes(nome, email, cpf, telefone) VALUES ('Arthur', 'athur.d.rocha@ba.estudante.senai', '123.123.456-04', '69554556'); 
INSERT INTO clientes(nome, email, cpf, telefone) VALUES ('Matheus', 'methues@ba.estudante.senai', '111.222.333-04', '6955556'); 
INSERT INTO clientes(nome, email, cpf, telefone) VALUES ('Erick', 'erick@ba.estudante.senai', '222.333.444-04', '6554556'); 
INSERT INTO clientes(nome, email, cpf,telefone) VALUES ('Luan', 'luan@ba.estudante.senai', '333.444.555-04',''); 

INSERT INTO pedidos(id_Clientes, data_pedido, valor_total) VALUES (1, '2026-09-01', 99.00); 
INSERT INTO pedidos(id_Clientes, data_pedido, valor_total) VALUES (2, '2026-09-01', 14.50); 
INSERT INTO pedidos(id_Clientes, data_pedido, valor_total) VALUES (3, '2026-09-01', 9.99); 
INSERT INTO pedidos(id_Clientes, data_pedido, valor_total) VALUES (4, '2026-09-01', 14.00); 

UPDATE clientes SET nome = 'pedro', email = 'pedrodev@gmail.com'
WHERE id_Clientes = 3; 

DELETE FROM clientes 
WHERE telefone is null;

DELETE FROM pedidos
WHERE id_Clientes = 1;

SHOW TABLES; 
SELECT * FROM clientes;

-- DROP TABLE clientes;
-- DROP TABLE pedidos;