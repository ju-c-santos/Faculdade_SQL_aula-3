create table estado (
id int primary key auto_increment,
nome varchar(120) not null,
cidade int unsigned zerofill);


alter table estado
add dddd char(05);
describe estado;

alter table  estado
change dddd ddd char(05);

alter table estado
modify ddd char(03);

alter table estado
change cidade cepgeral int unsigned zerofill;

insert into estado (nome, cepgeral, ddd) 
values ('Rio de Janeiro', 27521, 024);

select *from estado;

/*insert into estado (nome, cepgeral, ddd)
values ('São Paulo', -79839, 89);*/

insert into estado (nome, cepgeral, ddd)
values ('São Paulo', 96664, 89);

alter table estado
drop cepgeral;
describe estado;

