CREATE DATABASE IF NOT EXISTS db_biblioteca;

USE db_biblioteca;

#CRIAÇÃO DAS TABELAS

CREATE TABLE IF NOT EXISTS tbl_autores (
	ID_Autor SMALLINT PRIMARY KEY AUTO_INCREMENT,
	Nome_Autor VARCHAR(50) NOT NULL,
	Sobrenome_Autor VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_categorias (
	ID_Categoria SMALLINT PRIMARY KEY AUTO_INCREMENT,
	Categoria VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_editoras (
	ID_Editora SMALLINT PRIMARY KEY AUTO_INCREMENT,
	Nome_Editora VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_livro (
	ID_Livro SMALLINT AUTO_INCREMENT PRIMARY KEY AUTO_INCREMENT,
	Nome_Livro VARCHAR(70) NOT NULL,
	ISBN13 CHAR(13),
	ISBN10 CHAR(10),
	ID_Categoria SMALLINT,
	ID_Autor SMALLINT NOT NULL,
    ID_Editora SMALLINT NOT NULL,
	Data_Pub DATE NOT NULL,
	Preco_Livro DECIMAL(6,2) NOT NULL,
    
    FOREIGN KEY(ID_Categoria) REFERENCES tbl_categorias(ID_Categoria),
    FOREIGN KEY(ID_Editora) REFERENCES tbl_editoras(ID_Editora),
    FOREIGN KEY(ID_Autor) REFERENCES tbl_autores(ID_Autor)
);

#INSERÇÃO DE DADOS
#CASO OS DADOS ABAIXO NÃO EXISTAM NA TABELA, DESCOMENTAR CÓDIGO ABAIXO
/*
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Prentice Hall');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('O´Reilly');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Microsoft Press');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Wiley');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('McGraw-Hill Education');

INSERT INTO tbl_autores (Nome_Autor, Sobrenome_Autor) VALUES
	('Daniel', 'Barret'),
	('Gerald', 'Carter'),
	('Mark', 'Sobell'),
	('William', 'Stanek'),
	('Richard', 'Blum'),
	('Jostein', 'Gaarder'),
	('Umberto', 'Eco'),
	('Neil', 'De Grasse Tyson'),
	('Stephen', 'Hawking'),
	('Stephen', 'Jay Gould'),
	('Charles', 'Darwin'),
	('Alan', 'Turing'),
	('Simon', 'Monk'),
	('Paul', 'Scherz');

INSERT INTO tbl_categorias VALUES
	(1, 'Tecnologia'),
	(2, 'História'),
	(3, 'Literatura'),
	(4, 'Astronomia'),
	(5, 'Botânica');

INSERT INTO tbl_livro (Nome_Livro, ISBN13, ISBN10, Data_Pub, Preco_Livro,
ID_Categoria, ID_Autor, ID_Editora) VALUES
	('Linux Command Line and Shell Scripting','9781118983843',
	'111898384X', '20150109', 68.35, 1, 5, 4),
	('SSH, the Secure Shell','9780596008956', '0596008953',
	'20050517', 58.30, 1, 1, 2),
	('Using Samba','9780596002565', '0596002564', '20031221',
	61.45, 1, 2, 2),
	('Fedora and Red Hat Linux', '9780133477436', '0133477436',
	'20140110', 62.24, 1, 3, 1),
	('Windows Server 2012 Inside Out','9780735666313',
	'0735666318', '20130125', 66.80, 1, 4, 3),
	('Microsoft Exchange Server 2010','9780735640610',
	'0735640610', '20101201', 45.30, 1, 4, 3),
	('Practical Electronics for Inventors', '9781259587542',
	'1259587541', '20160324', 67.80, 1, 13, 5);
*/
# EXIBIR DADOS DA TABELA

SELECT * FROM tbl_editoras;
SELECT * FROM tbl_autores;
SELECT * FROM tbl_categorias;
SELECT * FROM tbl_Livro;