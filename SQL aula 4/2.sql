use aula;

select *from cidade;
-- inserir registros na tabela cidade
insert into cidade values (4, 'Curitiba', 'PR'),
	(5, 'Bagé', 'RS'), (6, 'Videira', 'SC'), (7, 'Imperatriz' , 'MA'),
    (8, 'Belo Horizonte', 'MG'), (9, 'São Paulo', 'SP');
    
set SQL_SAFE_UPDATES = 0;

update cidade
	set uf = 'MA'
    where id = 3;
    
 -- Comando para riar updates    
update cidade 
set nome = 'Londrina',
uf = 'PR'
where id = 7;

delete from cidade where id = 7;
select *from cidade;

update cidade 
set nome = 'Teste';

delete from cidade; 