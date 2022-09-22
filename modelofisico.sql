/* Lógico_2: */

CREATE TABLE orgao (
    cod_orgao int PRIMARY KEY,
    tipo_orgao varchar(50),
    orgao varchar(50),
    origem_orgao varchar(50),
    fk_usuario_cod_usuario int
);

CREATE TABLE instituicoes (
    cod_instituicao int PRIMARY KEY,
    nome varchar(100),
    telefone varchar(15),
    cidade varchar(50),
    cep char(8)
);

CREATE TABLE usuario (
    cod_usuario int PRIMARY KEY,
    nome varchar(50),
    data_nascimento date,
    telefone varchar(15),
    cidade varchar(100),
    cep char(8),
    doador char(3),
    receptor char(3)
);

CREATE TABLE recebe (
    fk_instituicoes_cod_instituicao int,
    fk_orgao_cod_orgao int
);

CREATE TABLE forum (
    topico varchar(255),
    comentario varchar(255)
);

CREATE TABLE admin (
    login varchar(50),
    senha varchar(255)
);
 
ALTER TABLE orgao ADD CONSTRAINT FK_orgao_2
    FOREIGN KEY (fk_usuario_cod_usuario)
    REFERENCES usuario (cod_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE recebe ADD CONSTRAINT FK_recebe_1
    FOREIGN KEY (fk_instituicoes_cod_instituicao)
    REFERENCES instituicoes (cod_instituicao)
    ON DELETE RESTRICT;
 
ALTER TABLE recebe ADD CONSTRAINT FK_recebe_2
    FOREIGN KEY (fk_orgao_cod_orgao)
    REFERENCES orgao (cod_orgao)
    ON DELETE RESTRICT;