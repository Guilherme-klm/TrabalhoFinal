create database biblioteca;

use biblioteca;

create table aluno (
	idAluno int not null primary key,
    nomeAluno varchar(45) not null);
    
create table atendente (
	idAtendente int not null primary key,
    nomeAtendente varchar(45) not null);
    
create table livro (
	idLivro int not null primary key,
    nomeLivro varchar(100) not null,
    disponibilidade boolean not null);
    
create table retirada (
	idRetirada int not null primary key,
    dataRetirada date not null,
    tempoFicarComLivro int not null,
    Aluno_idAluno int not null,
    Atendente_idAtendente int not null,
    Livro_idLivro int not null,
    foreign key (Aluno_idAluno) references aluno(idAluno),
    foreign key (Atendente_idAtendente) references atendente(idAtendente),
    foreign key (Livro_idLivro) references livro(idLivro));
    
insert into aluno values 
(1,"José da Silva"),
(2,"Guilherme"),
(3,"Felipe"),
(4,"Maiara"),
(5,"Fabine"),
(6,"Paloma"),
(7,"José"),
(8,"Daniel"),
(9,"Edson"),
(10,"Regina");

insert into livro values 
(1,"Javascript Ninja", 0), 
(2,"JQuery in Action", 0), 
(3,"500 Dias Sem Você", 0), 
(4,"O Milagre Da Manhã", 0), 
(5,"Do Luto Ao Nascimento", 0), 
(6,"As Coisas Que Você Só Vê Quando Desacelera", 0), 
(7,"O Poder do Agora", 0), 
(8,"Nunca Foi Sorte", 0), 
(9,"A Morte é Um Dia Que Vale A Pena Viver", 0), 
(10,"A Coragem de Ser Imperfeito", 0),
(11,"O Poder da Ação", 0 ), 
(12,"Quem Pensa Enriquece", 0), 
(13,"o Poder da Autorresponsabilidade", 0), 
(14,"O Homem Mais Rico da Babilônia", 0), 
(15,"Do Mil Ao Milhão", 0), 
(16,"Os 7 Hábitos Das Pessoas Altamente Eficazes", 0), 
(17,"Essencialismo - A Disciplinada Busca Por Menos", 0), 
(18,"Enfodere-Se!", 0), 
(19,"Ponto De Inflexão", 0), 
(20,"Negocie Como Se Sua Vida Dependesse Disso", 0),
(21,"Um Sonho de Liberdade", 1),
(22,"Conta Comigo", 1);

insert into atendente values 
(1,"Tim"),
(2,"Maria Joaquina");

insert into retirada values 
(1,'2018-11-03', 7, 1, 1, 1), 	 	(2,'2018-11-04', 7, 1, 1, 2), 	  	(3,'2018-11-07', 10, 1, 1, 3), 		(4,'2018-11-10', 11, 1, 1, 4), 	 	(5,'2019-11-23', 11, 1, 1, 5), 
(6,'2019-11-24', 7, 2, 1, 6), 	 	(7,'2019-11-24', 8, 2, 1, 7), 	  	(8,'2019-11-24', 7, 2, 1, 8),		(9,'2019-11-24', 7, 2, 1, 9), 	 	(10,'2019-12-24', 10, 2, 1, 10), 
(11,'2019-11-25', 5, 3, 1, 11),  	(12,'2019-11-25', 5, 3, 1, 12),  	(13,'2019-11-25', 10, 3, 1, 13), 	(14,'2019-11-25', 6, 3, 1, 14),  	(15,'2019-11-25', 5, 3, 1, 15), 
(16,'2019-11-26', 7, 4, 1, 16), 	(17,'2019-11-26', 7, 4, 1, 17), 	(18,'2019-11-26', 7, 4, 1, 18), 	(19,'2019-11-26', 7, 4, 1, 19), 	(20,'2019-11-26', 7, 4, 1, 20),
(21,'2019-11-27' , 7, 5, 1, 1), 	(22,'2019-11-27', 7, 5, 1, 2), 		(23,'2019-11-27', 10, 5, 1, 3), 	(24,'2019-11-27', 11, 5, 1, 4), 	(25,'2019-11-27', 11, 5, 1, 5), 
(26,'2019-11-28', 7, 6, 2, 6), 		(27,'2019-11-28', 8, 6, 2, 7), 		(28,'2019-11-28', 7, 6, 2, 8), 		(29,'2019-11-28', 7, 6, 2, 9), 		(30,'2019-11-28', 10, 6, 2, 10),
(31,'2019-11-29', 5, 7, 2, 11), 	(32,'2019-11-29', 5, 7, 2, 12), 	(33,'2019-11-29',10 , 7, 2, 13), 	(34,'2019-11-29', 6, 7, 2, 14), 	(35,'2019-11-29', 5, 7, 2, 15), 
(36,'2019-11-30', 7, 8, 2, 16), 	(37,'2019-11-30', 7, 8, 2, 17), 	(38,'2019-11-30', 7, 8, 2, 18), 	(39,'2019-11-30', 7, 8, 2, 19), 	(40,'2019-11-30', 7, 8, 2, 20),
(41,'2019-12-01', 7, 9, 2, 1), 		(42,'2019-12-01', 7, 9, 2, 2), 		(43,'2019-12-01', 10, 9, 2, 3), 	(44,'2019-12-01', 11, 9, 2, 4), 	(45,'2019-12-01', 11, 9, 2, 5), 
(46,'2019-12-02', 7, 10, 2, 6), 	(47,'2019-12-02', 8, 10, 2, 7), 	(48,'2019-12-02', 7, 10, 2, 8), 	(49,'2019-12-02', 7, 10, 2, 9), 	(50,'2019-12-02', 10, 10, 2, 10);

-- Problema A: "José da Silva é aluno de uma escola, e gostaria de saber a data para devolução do livro "Javascript Ninja" que ele pegou na biblioteca semana passada, pois ele não lembra o prazo nem o dia que retirou." --
select dataRetirada as 'Data de Retirada', tempoFicarComLivro as 'Prazo', dataRetirada + tempoFicarComLivro as 'Data de Entrega'  
from retirada
inner join aluno 
on aluno.idAluno = Aluno_idAluno
inner join atendente
on atendente.idAtendente = Atendente_idAtendente
inner join livro
on livro.idLivro = Livro_idLivro
where nomeLivro = 'Javascript Ninja' and nomeAluno = 'José da Silva';

-- Problema B: "Um aluno deseja consultar se o livro "JQuery in Action" está disponível no momento" --
select disponibilidade 
from livro
where nomeLivro = 'JQuery in Action';

-- Problema C: "Maria Joaquina atende no balcão da biblioteca, ela precisa de uma lista de todos os livros que ela entregou ou recebeu ontem" --
select nomeLivro   
from retirada
inner join aluno 
on aluno.idAluno = Aluno_idAluno
inner join atendente
on atendente.idAtendente = Atendente_idAtendente
inner join livro
on livro.idLivro = Livro_idLivro
where dataRetirada = '2019-11-23';

-- Problema D: "O diretor da escola deseja saber quais os 5 livros mais retirados pelos alunos, para que possa comprar mais livros parecidos" --
select nomeLivro as 'Nome do Livro', count(nomeLivro) as 'Número de vezes Retirados'   
from retirada
inner join aluno 
on aluno.idAluno = Aluno_idAluno
inner join atendente
on atendente.idAtendente = Atendente_idAtendente
inner join livro
on livro.idLivro = Livro_idLivro
group by nomeLivro
limit 5;

-- Problema E: "O diretor da escola deseja saber quais livros não são retirados a mais de 1 ano, para que estes sejam doados ou descartados" --
select nomeLivro as 'Nome do Livro' 
from retirada
inner join aluno 
on aluno.idAluno = Aluno_idAluno
inner join atendente
on atendente.idAtendente = Atendente_idAtendente
inner join livro
on livro.idLivro = Livro_idLivro;

-- Problema F: "O Diretor da escola deseja cobrar multa por dias de atraso na entrega dos livros". --
delimiter //
create function multarPorDiasDeAtraso (livro varchar(100), dataEntrega date) returns double
begin
declare multaTotal, multaDia, diasDeMulta double;
declare dataDeRetirada date;

select  from retirada 
inner join aluno on aluno.idAluno = Aluno_idAluno 
inner join atendente on atendente.idAtendente = Atendente_idAtendente 
inner join livro on livro.idLivro = Livro_idLivro
where nomeLivro = livro;

set multaDia = 0.5;
set diasDeMulta =  (dataDeRetirada + tempoLivro) - dataEntrega;
set multaTotal = multaDia * diasDeMulta;
return multaTotal;
end //
delimiter ;
select multarPorDiasDeAtraso ('Javascript Ninja', '2018-11-23');
drop function multarPorDiasDeAtraso;

-- Problema G: "A escola recebeu uma doação de livros e será necessário verificar se já existe esse livro no acervo, caso exista deve ser informado o número de exemplares, caso contrário deve ser cadastrado um novo livro" --


-- Criar uma Função que retorne se um livro especifico está disponível ou não. --
delimiter //
create function verificarLivroDisponivel(nome varchar(100)) returns varchar(100)
begin
declare disponivel varchar(10);
select disponibilidade into disponivel from livro where nomeLivro = nome;
return disponivel;
end //
delimiter ;
select verificarLivroDisponivel ('Conta Comigo');

-- Criar uma Procedure que faça a reserva do livro --
delimiter //
create procedure fazerReserva ( in livro varchar(100))
begin
declare idDoLivro int;
select idLivro into idDoLivro from livro where nomeLivro = livro;
insert into retirada values (51, '2019-12-17', 7, 9, 2, idDoLivro);
end //
delimiter ;
set @livro = 'Um Sonho de Liberdade';
call fazerReserva (@livro);

-- Criar uma procedure para inserir um novo aluno --
delimiter //
create procedure inserirNovoAluno (inout id int, inout nome varchar(45))
begin
insert into aluno values (id, nome);
end //
delimiter ;
set @id = 11;
set @nome = 'Roberto';
call inserirNovoAluno (@id, @nome);
select @id, @nome;

-- Criar uma View que retorne todos os livros que estão disponíveis --
create view retorarLivrosDisponiveis as select nomeLivro from livro where disponibilidade = 1;
