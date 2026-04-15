create table aluno (
id int,
nome varchar(100) not null,
genero char (01),
nascimento date,
estadoCivil char(01) check (estadoCivil in ('C', 'S', 'V', 'O')),
salario decimal(10,2) unsigned default 0,
email varchar(120) unique
);
 -- unsigned = apenas números positivos --
drop table aluno;

insert into aluno values 
(1, 'Helena Magalhaes' , 'F', '200-01-01', 'C' , 12500.99, 'helena.magalhaes@gmail.com'),
(2, 'Nicolas Oliveira', 'M', '2001-12-10', 'S', 2500.00, 'nicolas.oliveira@gnail.com'),
(3, 'Amanda de Souza', 'F', '2001-03-23', 'V', 1500.00,'amanda.souza@gmail.com');
select *from aluno;
