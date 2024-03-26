#drop database atv2_bd3_miguel;

create database atv2_bd3_miguel;
use atv2_bd3_miguel;

create table tbl_alunos(
cod_aluno int unsigned auto_increment primary key,
cod_turma int,
nome varchar(100),
cpf varchar(11),
rg varchar(9),
telefone_aluno varchar(11),
telefone_responsavel varchar(11),
email varchar(100),
data_nascimento timestamp
);
 
create table tbl_turma(
cod_turma int unsigned auto_increment primary key,
sigla varchar(10),
nome varchar(100)
);

create table tbl_disciplinas(
cod_disciplinas int unsigned auto_increment primary key,
cod_turma int,
sigla varchar(50)
);

create table tbl_frequencia(
cod_aluno int,
cod_disciplinas int,
data_chamada timestamp,
frequencia decimal(2,2)
);


### frequencia
alter table tbl_frequencia add constraint fk_cod_aluno
foreign key (cod_aluno)
references tbl_alunos (cod_aluno);

alter table tbl_frequencia add constraint fk_cod_disciplina
foreign key (cod_disciplinas)
references tbl_disciplinas (cod_disciplinas);


###disciplina
alter table tbl_disciplinas add constraint fk_cod_turma
foreign key (cod_turma)
references tbl_turma (cod_turma);

###Alunos
alter table tbl_alunos add constraint fk_cod_turma
foreign key (cod_turma)
references tbl_turma (cod_turma);
