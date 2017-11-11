create database EssencialPI
use EssencialPI

create table Mensagem(
codMensagem int not null PRIMARY KEY identity (1,1),
emailUsuario varchar(100),
mensagem varchar(8000),
nomeUsuario varchar (50),
telefoneUsuario varchar(13)
)

select * from Mensagem

drop table Mensagem