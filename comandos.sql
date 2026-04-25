create database cadastro 
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas(
	id int not null auto_increment, -- not null (compo obrigatório) (auto_increment)gerar automaticamente um número único e sequencial a cada nova linha inserida em uma tabela
	nome			varchar(30) 	not null,
    nascimento 		date,
    sexo			enum('M','F'),
    peso			decimal(5,2), -- são cinco casa e dois pós vírgula
    altura			decimal(3,2),
    nacionalidade 	varchar(20) default 'brasil',
    primary key (id)
)default charset = utf8;

insert pessoas (id,nome,nascimento,sexo,peso,altura)
value
(default, 'Caio Vilarouca','2004-02-10','M','65.0','1.79'),
(default, 'Emily Fonseca','2005-03-31', 'F', '45.9','1.59');

insert pessoas value
(default, 'Herlon Junior','2004-02-10','M','65.0','1.79', 'Areal'),
(default, 'Larissa Alloano','2005-03-31', 'F', '45.9','1.59', 'Jardim Inga');

insert pessoas value
(default, 'Caio Junior','2004-02-10','M','65.0','1.79', default);

select * from pessoas;

