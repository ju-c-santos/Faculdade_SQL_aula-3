/*create database aula;*/
use aula;
create table cidade ( 
	id int, 
    nome varchar (50),
    sigla char(02),
    primary key (id)
);
create table cliente (
	id int auto_increment,
    nome varchar(100),
    cidadeId int not null,
    constraint pkcliente primary key (id),
    constraint fcClienteCidade foreign key (cidadeId) references cidade(id)
);
-- sintaxe completa 
insert into cidade (id, nome, sigla) values (1, 'Resende', 'RJ');

-- sintaxe redizida 
insert into cidade values (2, 'Paraíba', 'PI');

-- insert de algumas colunas
insert into cidade (id, nome) values (3, 'Maranhão');

select *from cliente;

insert into cliente values (1, 'Juliana', 1);
insert into cliente (nome, cidadeid) values ('Maria', 3);
insert into cliente (nome, cidadeid) values ('Nicolas',2), ('Helena', 1), ('Kamyla', 3);


alter table cidade
change sigla uf char(02);

create table funcionario (
	id int,
    nome varchar(100),
    cidadeId int not null,
    constraint fcFuncionarioCidade foreign key (cidadeId) references cidade(id)
);


insert into funcionario (id, nome, cidadeid)
	select id, nome, cidadeid from cliente; -- inseri dados de uma tabela para outra!!

select * from funcionario;