create view aluno_turma as (
	select nome as nome_aluno, telefone_aluno, telefone_responsavel, email,
    turma as nome_turma, sigla
	from tbl_aluno 
	inner join tbl_turma on cod_turma = cod_turma
);

create view disciplina_turma as (
	select nome, sigla as sigla_turma,
    sigla as sigla_disciplina
	from tbl_disciplina as a
	inner join tbl_turma on cod_turma = cod_turma
);

create view aluno_turma_disciplina as (
	select nome as nome_aluno, telefone_aluno, telefone_responsavel, email, 
    nome as nome_turma, sigla as sigla_turma,
    sigla as sigla_disciplina
    from tbl_aluno as a
    inner join  tbl_turma on cod_turma = cod_turma
    inner join  tbl_disciplina on cod_turma = cod_turma
);