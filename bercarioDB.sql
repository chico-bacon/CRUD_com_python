create database Bercario;
use Bercario;

create table maes(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
endereco VARCHAR(80),
telefone VARCHAR(50),
data_nascimento DATE
);

CREATE TABLE especialidades(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45)
);

create table medicos(
id INT PRIMARY KEY AUTO_INCREMENT,
crm VARCHAR(50),
nome VARCHAR(45),
telefone VARCHAR(45),
id_especialidade INT,
FOREIGN KEY(id_especialidade) REFERENCES especialidades(id)
);

create table bebes(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
data_nascimento DATE,
peso_nascimento FLOAT,
altura FLOAT,
id_mae INT,
id_medico INT,
FOREIGN KEY(id_mae) REFERENCES maes(id),
FOREIGN KEY(id_medico) REFERENCES medicos(id)
);