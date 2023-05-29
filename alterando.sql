alter table pacientes
modify column CPF bigint(11) not null unique,
modify column RG bigint(09) not null unique,
modify column nome varchar(255) not null,
modify column date_nasc date not null;

alter table CONVENIOS
modify column Nome_Conv varchar(30) not null;

alter table MEDICAMENTOS 
modify column NomeMedicamento varchar(255) not null,
add dose_medicamentos varchar(255) not null after NomeMedicamento,
add inst_uso varchar(255) not null after NomeMedicamento;

alter table RECEITAS 
drop column dose_medicamento,
drop column inst_uso;

alter table ESPECIALIDADES
modify column Nom_Esp varchar(100) not null;

alter table CONSULTAS
add column date_cons date;

alter table medicos
change column endereço endereco varchar(255),
add atividade varchar(12);

update medicos set atividade="ativo";
update medicos set atividade="inativo" where id_medc=4;
update medicos set atividade="inativo" where id_medc=6;

alter table ENFERMEIROS
modify column ID_ENF int(09) auto_increment primary key,
modify column CRE int(09) not null unique,
modify nome varchar(255) not null;


alter table Tipo_Quarto
modify column ID_TipoQuarto int(09) auto_increment primary key,
modify column descricao_quarto varchar(255),
modify column Tipo_Quarto varchar(255);

alter table medico add atividade varchar(12);