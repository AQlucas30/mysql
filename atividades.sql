create DATABASE atividade_sql;
use atividade_sql;

CREATE TABLE pessoa(
nome varchar (100),
idade int,
telefone varchar (100),
endereço varchar (100),
email varchar (100)
);

desc pessoa;

INSERT into pessoa (nome, idade, telefone, endereço, email) values ("Lucas", 24, 983109461, "Ituiutaba - MG", "qlucas06@gmail.com"),
("Nei Kuster Peres", 50, 996977168, " Brasília - DF", "nei.peres@geradornv.com.br"),
("Fernanda Germano Barellos", 20, 992888772, "Londrina - PR", "fernanda.barellos@geradornv.com.br"),
("Ivalter Uchôa Geraldo", 35, 989456154, "São Luís - MA", "ivalter.geraldo@geradornv.com.br"),
("Dyego Gualberto de Arruda", 85, 974045781, "Maceió - AL", "dyego.arruda@geradornv.com.br"),
("Raimundo Monteiro Furtunato", 18, 969769902, "Brasília - DF", "raimundo.furtunato@geradornv.com.br"),
("Bernardo da Conceição Fernandes", 50, 41760453, "Teresina - PI", "bernardo.fernandes@geradornv.com.br"),
("Edmilson de Oliveira Aguiar", 22, 35832703, "Guarapari -  ES", "edmilson.aguiar@geradornv.com.br"),
("Helenice Simoes Filho", 30, 13786203, "Timon - MA", "helenice.filho@geradornv.com.br"),
("Domingos Palmas Cosme", 24, 46568867, "Franca - SP", "domingos.cosme@geradornv.com.br");


SELECT * FROM pessoa;

#Esse comando seleciona todas as colunas da tabela "pessoa" onde o endereço
#contém a substring "Brasília - DF" e a idade é maior que 18
select * from pessoa where endereço like "%Brasília - DF%" and idade > 18;

#Esse comando conta o número de registros na tabela "pessoa" onde o 
# endereço contém a substring "DF" e retorna o resultado com o alias "Quantidades".
select Count(*) as Quantidades from pessoa where endereço like "%DF";

#Esse comando seleciona todas as colunas
# da tabela "pessoa" onde a idade é maior que 30.
select * from pessoa where idade > 30;

#Esse comando conta o número de registros na tabela "pessoa" onde a idade é maior 
# que 15 para cada valor único na coluna "nome". O resultado inclui as colunas "quantidade" e "nome".
select count(*) as quantidade, nome from pessoa  where  idade > 15 group by nome;

#Esse comando seleciona o nome das pessoas da tabela "pessoa" onde o campo "email" é nulo.
select nome from pessoa where email is null;

#Esse comando desabilita o modo de atualização segura (safe update mode), permitindo atualizações sem 
#uma cláusula WHERE que utiliza uma coluna chave. No entanto, é importante lembrar que isso pode ter implicações de segurança e deve ser usado com cuidado.
set SQL_SAFE_UPDATES = 0;

#Esse comando atualiza a coluna "email" na tabela "pessoa" com o valor 'meuemail@gmail.com' 
#para os registros onde o campo "email" é nulo e o nome é igual a "Alves".
update pessoa set email = 'meuemail@gmail.com' where email is null and nome = "Alves";

#Esse comando seleciona o nome e o email da tabela "pessoa" onde o nome é igual a "Lucas".
select nome, email from pessoa where nome = "Lucas";

#Esse comando seleciona todas as colunas da tabela "pessoa" e ordena os resultados 
#em ordem ascendente com base na coluna "nome".
select * from pessoa order by nome asc;

create table produto(
nome_do_produto varchar (30),
preço double
);

alter table produto add quantidade int;

desc produto;

alter table produtp modify column preço;



