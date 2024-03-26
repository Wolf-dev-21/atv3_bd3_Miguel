use atv3_bd3_miguel;

delimiter $

create trigger trg_delete_aluno before delete on tbl_alunos

for each row  	
begin

insert into tbl_paciente_bkp
set

cod_aluno = old.cod_aluno,
cod_turma = old.cod_turma,
nome = old.nome,
cpf = old.cpf,
rg = old.rg,
telefone_aluno = old.telefone_aluno,
telefone_responsavel = old.telefone_responsavel,
email = old.email,
data_nascimento = old.data_nascimento,
date_delete = now();
end
$