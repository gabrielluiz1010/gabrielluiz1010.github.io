create table CLIENTE(
codigoCliente int not null primary key,
nome_cliente char(50),
endereco char(100),
cidade char(30),
CEP int(8) not null,
UF char(2),
cpf int(15) not null,
id int not null
);
create table VENDEDOR(
codigoVendedor int not null primary key,
nome_vendedor char(50),
salario_fixo float,
faixa_comissao float
);
create table PEDIDO(
numPedido int not null primary key,
prazo_entrega date,
foreign key (codigo_cliente) references CLIENTE (codigoCliente),
foreign key (codigo_vendedor) references VENDEDOR (codigoVendedor)
);
create table PRODUTO(
codigoProduto int not null primary key,
unidade int,
descrição char(30),
val_unit date
);
create table ITEM_DO_PEDIDO(
foreign key (numpedido) references PEDIDO (numPedido), 
foreign key (codigoProduto) references PRODUTO (codigoProduto),
quantidade int
);

INSERT INTO CLIENTE VALUES(1,"Carlos","Rua Chuva de Prata",
							"Rio de Janeiro", 20121485, "RJ",
                            32253741051,1);
INSERT INTO VENDEDOR values(2,"Joao","Rua Barão de Petrópolis","Rio de Janeiro",
							20251061, "RJ", 32126545327,2);
                            
alter table CLIENTE change id rg int;
alter table PRODUTO add tipo char(255) not null after val_unit;
rename table PRODUTO to PRODUTOSBRABOS;
