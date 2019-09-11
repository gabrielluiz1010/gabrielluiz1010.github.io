create table estado(
codigo varchar(2) primary key not null,
nome varchar(25) not null
);

create table cliente(
cliente_cpf varchar(11) primary key NOT NULL ,
rua varchar(30) not null,  
numero smallint(6) not null,
bairro varchar(20) not null,
cidade varchar(30) not null,
foreign key(codigo_estado) references estado (codigo),
telefone varchar(10)
);

create table pedido(
codigopedido smallint(11) primary key not null,
dataentrada date not null,
valortotal double not null,
dataembarque date ,
foreign key(codigocliente) references cliente(cliente_cpf) 
);

create table produto(
codigo int(11) primary key not null,
nome varchar(50) not null,
preco double not null
);

create table item_pedido(
FOREIGN KEY (codpedido) REFERENCES pedido (codpedido),
FOREIGN KEY (codproduto) REFERENCES produto 	(codproduto),
quantidade smallint(6) not null,
valorunitario double not null,
valortotal double not null
);


/*SELECT*/
select codigopedido,cliente_cpf,valortotal
from pedido,cliente
where cliente_cpf = 11432465787 and valortotal > 2000;

select*
from pedido
where valortotal <1000 or valortotal >3000;

select*
from pedido
where dataentrada=15/05/2016;

select*
from produtos
where nome(1)='N';

select*
from produtos
where nome like '%so%';

select*
from produtos
where nome like 'N%' or nome like 'I%' or nome like 'P%';


7. Selecionar todos os produtos cujo nome possua 13 caracteres,
onde as duas primeiras letras sejam iguais a ‘no’, independente do
conteúdo das 11 próximas letras.

 


