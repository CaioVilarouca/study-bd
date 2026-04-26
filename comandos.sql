create database cadastro 
default character set utf8
default collate utf8_general_ci; 

use cadastro;

create table pessoas(
	id int not null auto_increment, -- (auto_increment) Gera automaticamente um número único e sequencial
	nome			varchar(30) 	not null,
    nascimento 		date,
    sexo			enum('M','F'),
    peso			decimal(5,2),-- 5 casa e 2 antes da vírgula
    altura			decimal(3,2),
    nacionalidade 	varchar(20) default 'brasil',
    primary key (id) -- Chave primary
)default charset = utf8;

insert into pessoas value  -- ADD registro na tabela
(default,'Caio Vilarouca','2004-10-02','M','65.2','1.80','Brasileiro'),
(default,'Emily Fonseca','2005-03-31','F','52.4','1.65','Brasileiro');

insert into pessoas value  -- ADD registro na tabela
(default,'Jair Guerra','1098-04-13','M','82.4','1.85',default);

alter table pessoas add profissao varchar(10); -- ADD coluna na tabela
alter table pessoas add profissao varchar(10) after nome; -- ADD coluna na tabela na posiçao antes de NOME
alter table pessoas add profissao varchar(10) first; -- ADD coluna na tabela na primeira posição

alter table pessoas modify profissao varchar(25); -- Aumentar o tipo primitivo espaço do varchar 

alter table pessoas drop profissao; -- Drop na coluna da tabela
drop table pessos; -- Drop na tabela 

alter table pessoas rename to people; -- troca o nome da tabela



describe pessoas;
select * from pessoas;

