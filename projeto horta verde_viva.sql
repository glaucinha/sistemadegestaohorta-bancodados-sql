DROP DATABASE IF EXISTS horta verde_viva
CREATE DATABASE horta verde_viva
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_0900_ai_ci;
  
  CREATE TABLE Voluntario (
  idvoluntario INT unsigned auto_increment primary key,
  nome varchar(100) NOT NULL,
  telefone varchar(20),
  email varchar (100),
  entrada_data date,
  cargo varchar(50)
  ) ENGINE=InnoDB DEFAULT CHARSET =utf8mb4;
  
  CREATE TABLE CANTEIRO (
idCanteiro INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  localizacao VARCHAR(100) NOT NULL,
  tamanho_m2 DECIMAL(5,2),
  tipo_solo VARCHAR(50),
  situacao ENUM('Em uso', 'Disponível', 'Em descanso') DEFAULT 'Em uso'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE ESPECIE_DE_PLANTA (
idEspecie INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nome_popular VARCHAR(100) NOT NULL,
  nome_cientifico VARCHAR(150),
  ciclo VARCHAR(50),
  tempo_medio_colheita_dias INT,
  observacoes TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE CULTIVO(
idCultivo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  idVoluntario INT UNSIGNED,
  idCanteiro INT UNSIGNED,
  idEspecie INT UNSIGNED,
  data_plantio DATE NOT NULL,
  quantidade_plantada DECIMAL(6,2),
  status ENUM('Em crescimento', 'Colhida', 'Encerrada') DEFAULT 'Em crescimento',
 FOREIGN KEY (idVoluntario) REFERENCES Voluntario(idVoluntario),
  FOREIGN KEY (idCanteiro) REFERENCES Canteiro(idCanteiro),
  FOREIGN KEY (idEspecie) REFERENCES Especie_De_Planta(idEspecie)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE COLHEITA (
idColheita INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  idCultivo INT UNSIGNED NOT NULL,
  data_colheita DATE NOT NULL,
  quantidade_colhida DECIMAL(6,2) NOT NULL,
  responsavel VARCHAR(100),

  FOREIGN KEY (idCultivo) REFERENCES Cultivo(idCultivo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE INSTITUICÃO (
idInstituicao INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  cnpj VARCHAR(18) UNIQUE,
  tipo_instituicao ENUM('ONG', 'Escola', 'Asilo', 'Hospital', 'Outro') DEFAULT 'Outro',
  responsavel VARCHAR(100),
  telefone VARCHAR(20),
  email VARCHAR(100),
  endereco VARCHAR(200),
  cidade VARCHAR(100),
  estado CHAR(2),
  status ENUM('Ativa', 'Inativa') DEFAULT 'Ativa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE DOACÃO (
idDoacao INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  idColheita INT UNSIGNED NOT NULL,
  idInstituicao INT UNSIGNED NOT NULL,
  data_doacao DATE NOT NULL,
  quantidade_doada DECIMAL(6,2) NOT NULL,
  responsavel_entrega VARCHAR(100),
  observacoes TEXT,
  FOREIGN KEY (idColheita) REFERENCES Colheita(idColheita),
  FOREIGN KEY (idInstituicao) REFERENCES Instituicao(idInstituicao)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;







  
  
