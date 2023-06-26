# 1 - Para se criar um banco de dados no mysql deve executar primeiramente o codigo
# "CREATE DATABASE" + o nome do banco. é usado para armzazenar e organizar os dados. Logo depois se executa
# o "USE" que seleciona o banco de dados especifico para uso. E depois para criar uma tabela 
# usamos o "CREATE TABLE" + nome da tabela para se criar uma nova tabela em um banco de dados, é uma tabela estruturada  
# que organiza os dados em linhas e colunas, permitindo o armazenamento e a manipulação dos dados. 
#  Ao criar a tabela, entre os colchetes se coloca os dados da tabela, como nome, idade, peso, sexo
# e etc. E depois para inserir os dados de cada coluna usamos o "INSERT INTO" + nome da tabela + values. Para consultar algum
# dado da tabela se usa o codigo "SELECT" para mostrar alguma informação especifica de uma tabela ou
# combinar dados de varias tabelas. Para se selecionar todas as colunas da tabela, pode se usar 
# o (*). Para realizaer a consulta da tabela usamos o comando SELECT * FROM + NOME DA TABELA.
#
# Esse comando seleciona todas as colunas da tabela "pessoa" onde o endereço
# contém a substring "Brasília - DF" e a idade é maior que 18
# select * from pessoa where endereço like "%Brasília - DF%" and idade > 18;
#
# Esse comando conta o número de registros na tabela "pessoa" onde o 
# endereço contém a substring "DF" e retorna o resultado com o alias "Quantidades".
# select Count(*) as Quantidades from pessoa where endereço like "%DF";
#
# Esse comando seleciona todas as colunas da tabela "pessoa" e ordena os resultados 
# em ordem ascendente com base na coluna "nome".
# select * from pessoa order by nome asc;
#
# Esse comando seleciona o nome e o email da tabela "pessoa" onde o nome é igual a "Lucas".
# select nome, email from pessoa where nome = "Lucas";

create database padaria_lucas;
use padaria_lucas;

CREATE TABLE padaria(
quantidade int,
produto varchar(250),
promocao varchar (100),
valor double,
unidadeDeMedida varchar (10)
);

INSERT INTO padaria (quantidade,produto, promocao, valor, unidadeDeMedida) values 
(100,"Pão Frances","Comprando dez leve uma margarina de 200g", 10.50,"KG"),
(500,"Pão de Queiijo","Comprando 50 leva um litro de leite", 9.50,"Und"),
(100,"Leite","Comprando a caixa leva um achocolatado", 7,"Lt"),
(70,"Queijo Minas","Comprando 5 unidade leva um mel de abelha ", 25.90, "KG"),
(50,"Presunto", "Não há promoção para este item", 15.99,"KG");


select * from padaria;
DESCRIBE padaria;
SHOW TABLES LIKE 'padaria';
DROP TABLE padaria;

SELECT CONCAT('Há ', quantidade, ' ', produto, ' no estoque, com valor unitário de ', valor, ' reais') AS mensagem
FROM padaria
WHERE produto = 'Pão Frances';