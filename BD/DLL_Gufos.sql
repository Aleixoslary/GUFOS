CREATE DATABASE Gufos

USE Gufos


CREATE TABLE Tipo_usuario(
Tipo_usuario_id INT IDENTITY PRIMARY KEY,
Titulo VARCHAR(255) UNIQUE NOT NULL,	
);

CREATE TABLE Usuario(
Usuario_Id INT IDENTITY PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Email VARCHAR(255) UNIQUE NOT NULL,
Senha VARCHAR(255) NOT NULL, 
Tipo_usuario_id INT FOREIGN KEY REFERENCES Tipo_usuario(Tipo_usuario_id)
);
CREATE TABLE Localizacao(
Localizacao_id INT IDENTITY PRIMARY KEY,
CNPJ CHAR(14) UNIQUE NOT NULL,
Razao_social VARCHAR(255) UNIQUE NOT NULL,
Endereco VARCHAR(255) NOT NULL,
);

CREATE TABLE Categoria(
Categoria_id INT IDENTITY PRIMARY KEY,
Titulo VARCHAR(255) UNIQUE NOT NULL,
);


CREATE TABLE Eventos(
Eventos_id INT IDENTITY PRIMARY KEY, 
Titulo VARCHAR(255) NOT NULL,
Categoria_id INT FOREIGN KEY REFERENCES Categoria(Categoria_id),
Acesso_livre bit DEFAULT(1) NOT NULL,
Data_evento DATETIME NOT NULL, 
Localizacao_id INT FOREIGN KEY REFERENCES Localizacao(Localizacao_id)
);


CREATE TABLE Presenca(
Presenca_id INT IDENTITY PRIMARY KEY,
Evento_id INT FOREIGN KEY REFERENCES Eventos(Eventos_id),
Usuario_id INT FOREIGN KEY REFERENCES Usuario(Usuario_id),
Presenca_status VARCHAR(255) NOT NULL
);