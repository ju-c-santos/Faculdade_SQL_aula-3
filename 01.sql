-- comando para mostrar os banco de dados --
/*
show databases;
create database aula;
use aula;
select database();
*/
/*create table exemplo (
	id int, 
    nome varchar(100)
);
show tables;
insert into exemplo (id, nome) values(1 , 'Ana');
select *from exemplo
insert into exemplo (id, nome) value(5502, 'Gabriel');
*/
create table cidade (
	id int primary key,
    nome varchar(100),
    sigla char(03) unique);
insert into cidade (id, nome, sigla) values (1, 'Curitiba', 'CWB');
insert into cidade (id, nome, sigla) values (2, 'Amapá', 'AM');
select *from cidade;

create table cliente(
id int primary key,
nome varchar(100),
idcidade int,
constraint fkclienteCidade foreign key(idcidade)
references cidade(id));
    
insert into cliente values (1, 'Mariana', 1);
insert into cliente values  (5502, 'Gabrieela', 2);
select *from cliente