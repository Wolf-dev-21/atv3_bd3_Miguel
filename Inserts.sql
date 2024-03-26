#Turma
insert into tbl_turma (cod_turma, nome, sigla)
values (1, 'fundamental', 'A');

insert into tbl_turma (cod_turma, nome, sigla)
values (2, 'medio', 'B');

#Alunos
insert into tbl_alunos (cod_aluno, cod_turma, nome, cpf, rg, telefone_aluno, telefone_responsavel, email, data_nascimento)
VALUES (1, 1, "Aluno 1", "83168016511", "672006612", "11958741551", "11988741334", "aluno1@gmail.com", "952908885"),
(2, 1, "Aluno 2", "95499397022", "134139349", "11923456789", "11988741444", "josivaldo01@gmail.com", "152903997"),
(3, 1, "Aluno 3", "98730507333", "950809946", "119786947654", "11988741596", "josivaldo02@gmail.com", "922903997"),
(4, 1, "Aluno 4", "95050200444", "196119262", "11958741231", "11985541357", "josivaldo10@gmail.com", "852903997"),
(5, 1, "Aluno 5", "82251783255", "940845142", "11958741231", "11944741331", "josivaldo9@gmail.com", "482903997"),
(6, 2, "Aluno 6", "38084399066", "360099127", "11958741231", "11989971784", "josivaldo55@gmail.com", "582903997"),
(7, 2, "Aluno 7", "1537017477", "677009666", "11958741231", "11984741556", "alerquino@gmail.com", "332903997"),
(8, 2, "Aluno 8", "54863333788", "573574062", "11958741231", "11988743966", "oliveiro@gmail.com", "882903887"),
(9, 2, "Aluno 9", "10997326399", "718313259", "11958741231", "11944741888", "oliveira01@gmail.com", "777903557"),
(10, 2, "Aluno 10", "19843300410", "843873012", "11958741231", "11966758333", "linux@gmail.com", "662903991");

#Disciplina
insert into tbl_disciplinas ( cod_disciplina, cod_turma, sigla)
values (1, 1, "PT"), (2, 1, "MT"), (3, 1, "ART"), (4, 1, "HIS"),
		(1, 2, "PT"), (2, 2, "MT"), (3, 2, "ART"), (4, 2, "HIS");