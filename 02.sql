create table aluno (
id int primary key,
nome varchar(130) not null,
genero char(01), -- F ou M --
estadoCivil char(01) check(estadoCivil in ('S', 'C', 'V')),
renda decimal(10,2) default 0
);
insert into aluno (id, nome, genero,estadoCivil,renda)
values (1, 'Manuella', 'F', 'S', 8500.10);
insert into aluno values (2, 'Amanda', 'M', 'V', null);
insert into aluno values (3, 'Sabrina', 'F', 'C', default);
insert into aluno values (4, 'null', 'F', 'C', 1000);
 
select *from aluno
describe aluno;