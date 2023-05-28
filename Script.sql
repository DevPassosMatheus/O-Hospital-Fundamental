create database if NOT EXISTS HospitalDB;

use HospitalDB;

create table if not exists PACIENTES (
ID_PAC int(09) primary key not null auto_increment,
ID_CONV int(09),
NOME varchar(255),
CPF int(11),
RG int(09),
email varchar(255), 
date_nasc date,
endereco varchar(255),
FOREIGN KEY (ID_CONV) REFERENCES CONVENIOS(ID_CONV)
);

create table if not exists CONVENIOS (
ID_CONV int(09) PRIMARY KEY not null auto_increment,
Nome_Conv varchar(30),
TempCaren_Meses varchar(03)
); 

create table if not exists MEDICAMENTOS (
ID_MEDICAMENTO int(09) PRIMARY KEY not null auto_increment,
NomeMedicamento varchar(255)
);

create table if not exists RECEITAS (
ID_RECEITA int(09) PRIMARY KEY not null auto_increment,
ID_MEDICAMENTO int (09),
dose_medicamento varchar(255),
inst_uso varchar(300),
ID_PAC int(09),
ID_CONSULTA int (09),
ID_MEDC int(09),
FOREIGN KEY (ID_MEDICAMENTO) references MEDICAMENTOS(ID_MEDICAMENTO),
FOREIGN KEY (ID_CONSULTA) references CONSULTAS(ID_CONSULTA),
FOREIGN KEY (ID_PAC) references PACIENTES(ID_PAC),
FOREIGN KEY (ID_MEDC) references MEDICOS(ID_MEDC)
);

create table if not exists ESPECIALIDADES (
ID_ESP int (09) PRIMARY KEY not null auto_increment,
Nom_esp varchar(100)
);

create table if not exists MED_ESP (
ID_MED_ESP int(09) PRIMARY KEY not null auto_increment,
ID_ESP int(09),
ID_MEDC int(09),
FOREIGN KEY (ID_ESP) references MED_ESP(ID_ESP),
FOREIGN KEY (ID_MEDC) references MEDICOS(ID_MEDC)
); 

create table if not exists CONSULTAS (
ID_CONSULTA int(09) PRIMARY KEY not null auto_increment,
ID_PAC int(09),
ID_MEDC int(09),
ID_ESP int(09),
ID_CONV int(09),
valor_cons decimal(4, 2), 
hor_cons time,
FOREIGN KEY (ID_PAC) references PACIENTES(ID_PAC),
FOREIGN KEY (ID_MEDC) references MEDICOS(ID_MEDC),
FOREIGN KEY (ID_ESP) references ESPECIALIDADES(ID_ESP),
FOREIGN KEY (ID_CONV) references CONVENIOS(ID_CONV)
);

create table if not exists INTERNACOES (
ID_INTERNACAO int(09) PRIMARY KEY not null auto_increment,
ID_MEDC int(09),
ID_QUARTO int(09),
ID_PAC int(09),
ID_ENFxMED int(09),
dt_inter date,
dt_prev_alta date,
dt_alta date ,
procedimento varchar (255),
FOREIGN KEY (ID_MEDC) references MEDICOS(ID_MEDC),
FOREIGN KEY (ID_QUARTO) references QUARTOS(ID_QUARTO),
FOREIGN KEY (ID_PAC) references PACIENTES(ID_PAC),
FOREIGN KEY (ID_ENFxMED) references ENF_x_inter(ID_ENFxMED)
);

create table if not exists MEDICOS (
ID_MEDC int(09) PRIMARY KEY not null auto_increment,
nomeExp_Med varchar(100),
CRM int(06),
nome varchar(255),
CPF int(11),
RG int(11),
email varchar(255),
date_nasc date,
endereço varchar(255)
);

create table if not exists ENFERMEIROS (
ID_ENF int(09),
nome varchar(255),
CRE varchar(08)
);

create table if not exists Enf_x_inter (
ID_ENFxMED int(09) PRIMARY KEY not null auto_increment,
ID_INTERNACAO int(09),
ID_ENF int(09),
FOREIGN KEY (ID_INTERNACAO) references INTERNACOES(ID_INTERNACAO),
FOREIGN KEY (ID_ENF) references ENFERMEIROS(ID_ENF)
);

create table if not exists QUARTOS (
ID_QUARTO int(09) PRIMARY KEY not null auto_increment,
ID_TipQuarto int(09),
Num_quarto int(3),
FOREIGN KEY (ID_TipoQuarto) references TIPO_QUARTO(ID_TipoQuarto)
);

create table if not exists TIPO_QUARTO (
ID_TipoQuarto int(09),
Tipo_Quarto int(09),
descricao_quarto int(09)
);

show tables;



