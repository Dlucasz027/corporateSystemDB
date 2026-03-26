DROP DATABASE IF EXISTS Empresa;
CREATE DATABASE Empresa CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE Empresa;

CREATE TABLE Tecnico (
    idTecnico INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    dataAdmissao DATE NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    dataCadastro DATE NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Finalizacao (
    idFinalizacao INT PRIMARY KEY,
    dataFinalizacao DATETIME NOT NULL,
    dataEntrega DATE NOT NULL,
    valorTotal DECIMAL(7,2) NOT NULL,
    formaPagamento ENUM('Dinheiro', 'Pix', 'Cartão') NOT NULL,
    garantiaDias INT NOT NULL,
    observacao VARCHAR(200) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE OrdemServico (
    idOrdem INT PRIMARY KEY,
    dataAbertura DATETIME NOT NULL,
    equipamento VARCHAR(50) NOT NULL,
    problema VARCHAR(100) NOT NULL,
    observacao VARCHAR(200) NOT NULL,
    prioridade ENUM('Baixa', 'Média', 'Alta') NOT NULL,
    estado ENUM('Aberta', 'Em execução', 'Concluída') NOT NULL,
    idCliente INT NOT NULL,
    idTecnico INT NOT NULL,
    idFinalizacao INT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idTecnico) REFERENCES Tecnico(idTecnico),
    FOREIGN KEY (idFinalizacao) REFERENCES Finalizacao(idFinalizacao)
) ENGINE=InnoDB;

CREATE TABLE Servico (
    idServico INT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valorPadrao DECIMAL(7,2) NOT NULL,
    tempoEstimado TIME NOT NULL
) ENGINE=InnoDB;

CREATE TABLE OrdemServico_Servico (
    idOrdem INT,
    idServico INT,
    quantidade INT NOT NULL,
    valorUnitario DECIMAL(7,2) NOT NULL,
    PRIMARY KEY (idOrdem, idServico),
    FOREIGN KEY (idOrdem) REFERENCES OrdemServico(idOrdem),
    FOREIGN KEY (idServico) REFERENCES Servico(idServico)
) ENGINE=InnoDB;