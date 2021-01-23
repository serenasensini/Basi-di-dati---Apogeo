-- Creazione delle tabelle
CREATE TABLE studente(
	matricola int not null AUTO_INCREMENT,
	nome varchar(50) not null,
	cognome varchar(50) not null,
	data_nascita date not null,
	anno_iscrizione int not null,
	PRIMARY KEY (matricola)
);

CREATE TABLE professore(
	matricola int not null AUTO_INCREMENT,
	nome varchar(50) not null,
	cognome varchar(50) not null,
	data_nascita date not null,
	email varchar(256),
	PRIMARY KEY (matricola)
);

CREATE TABLE corso(
		codice int,
    nome varchar(256) not null,
    descrizione text not null,
    cfu int not null,
    matricola_professore int,
    periodo_da date,
    periodo_a date,
		PRIMARY KEY (codice),
		FOREIGN KEY (matricola_professore) REFERENCES professore(matricola)
);

CREATE TABLE esame(
		codice int not null,
		data_esame date,
		codice_corso int not null,
    matricola_studente int,
		votazione int not null,
		PRIMARY KEY (codice),
		FOREIGN KEY (matricola_studente) REFERENCES studente(matricola),
		FOREIGN KEY (codice_corso) REFERENCES corso(codice)
);

-- Inserimento dei record

INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Leonardo','Fontana','1960-03-24','leonardo.fontana@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Francesco','Bianchi','1954-12-21','francesco.bianchi@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Alessandro','Martinelli','1973-09-26','alessandro.martinelli@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Mattia','Rossetti','1951-12-17','mattia.rossetti@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Lorenzo','Grassi','1950-10-24','lorenzo.grassi@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Gabriele','Ferrir','1980-07-03','gabriele.ferrir@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Riccardo','Caruso','1969-10-01','riccardo.caruso@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Francesca','Farina','1969-12-29','francesca.farina@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Giulia','Moretti','1957-10-20','giulia.moretti@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Alessandra','Marino','1956-01-20','alessandra.marino@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Alice','Greco','1969-10-28','alice.greco@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Alessia','Barbieri','1959-06-01','alessia.barbieri@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Arianna','Ferrari','1977-07-08','arianna.ferrari@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Giulia','Marchetti','1959-04-24','giulia.marchetti@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Beatrice','Galli','1971-06-10','beatrice.galli@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Nicoletta','Gatti','1975-08-25','nicoletta.gatti@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Francesca','Romano','1970-03-26','francesca.romano@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Gaia','Longo','1975-01-24','gaia.longo@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Marta','Conte','1970-01-15','marta.conte@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Lucia','Serra','1977-05-18','lucia.serra@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Laura','Martini','1950-04-02','laura.martini@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Patrizia','Santoro','1958-09-26','patrizia.santoro@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Rebecca','Colombi','1959-05-18','rebecca.colombi@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Roberta','Giordani','1972-04-12','roberta.giordani@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Sara','Testa','1965-01-28','sara.testa@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Serena','Ferrero','1955-04-16','serena.ferrero@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Camilla','Mesina','1979-09-04','camilla.mesina@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Caterina','Innocenti','1951-03-19','caterina.innocenti@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Elisabetta','Boscolo','1973-08-23','elisabetta.boscolo@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Elisabetta','Vianello','1955-06-17','elisabetta.vianello@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Vittoria','Zanella','1980-02-23','vittoria.zanella@gmail.com');
INSERT INTO professore(nome,cognome,data_nascita,email) VALUES ('Veronica','Mancini','1978-12-19','veronica.mancini@gmail.com');


INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Andrea','Rossi','1991-01-08',2014);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Luca','Bianchi','1997-12-06',2002);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Giuseppe','Fascilla','1994-02-12',2006);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Mirko','Marchetti','1996-12-02',2020);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Giorgio','Neri','1995-12-31',2017);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Francesco','De Lucia','1991-07-15',2002);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Eleonora','Martini','1991-06-25',2003);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Francesca','Marini','1990-02-28',2001);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Giulia','De Domis','1997-02-18',2017);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Elena','Conti','1990-09-15',2009);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Aurora','Stizza','1997-09-07',2016);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Martina','Ricci','1996-07-22',2005);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Aurora','Ferrari','1990-08-31',2009);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Giuli','Rossi','1998-03-18',2009);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Emma','Russo','1998-06-02',2003);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Giorgia','Bianchi','1995-11-01',2008);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Sofia','Romano','1990-06-18',2008);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Ginevra','Gallo','1995-06-21',2004);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Francesca','Costa','1997-03-05',2006);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Anna','Fontana','1999-07-28',2019);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Adelaide','Rizzo','1992-11-02',2012);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Agnese','Longo','1998-05-02',2005);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Celeste','Leone','1990-12-19',2020);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Alexia','Mancini','1998-09-16',2010);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Alice','Colombo','1999-11-13',2007);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Allegra','Giordano','1993-05-03',2013);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Carla','Mazza','1992-07-26',2014);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Costanza','Rizzi','2000-08-16',2004);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Bruna','Teste','2000-12-26',2014);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Fiorella','Pellegrini','1992-04-13',2012);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Fortunata','Gentile','1997-05-30',2008);
INSERT INTO studente(nome,cognome,data_nascita,anno_iscrizione) VALUES ('Federica','Caruso','1999-03-09',2008);

INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (50443,'Analisi I','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',12,27,'2018-06-13','2018-12-03');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (67624,'Elettronica','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',4,8,'2018-06-02','2018-09-05');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (50548,'Chimica','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',11,18,'2018-03-13','2018-12-11');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (56447,'Fisica II','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',7,32,'2018-03-31','2018-08-05');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (61240,'Geometria','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',14,24,'2018-01-15','2018-08-29');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (62943,'Analisi II','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',8,5,'2018-02-15','2018-11-02');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (55633,'Fondamenti di informaticas','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',3,15,'2018-03-02','2018-10-04');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (66005,'Inglese','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',3,26,'2018-04-05','2018-07-25');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (61905,'Basi di dati I','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',3,13,'2018-06-01','2018-10-20');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (64925,'Ricerca operativa I','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',8,10,'2018-01-09','2018-07-12');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (51175,'Ricerca operativa II','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',4,13,'2018-03-07','2018-08-21');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (59317,'Machine Learning','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',9,23,'2018-04-21','2018-11-28');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (51330,'Intelligenza Artificiale','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',13,25,'2018-06-06','2018-11-19');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (58418,'Visualizzazione delle informazioni','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',6,17,'2018-04-22','2018-09-21');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (58907,'Telecomunicazioni','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',5,27,'2018-06-21','2018-10-14');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (68199,'Telecomunicazioni Wireless','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',3,1,'2018-02-20','2018-07-18');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (58286,'Cybersecurity','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',14,9,'2018-01-27','2018-08-25');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (65283,'Probabilità e scienza dei dati','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',9,12,'2018-06-29','2018-08-01');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (50176,'Fisica II','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',8,6,'2018-01-06','2018-07-11');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (63427,'Sistemi operativi','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',10,15,'2018-06-26','2018-12-22');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (53021,'Calcolatori elettronici','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',14,23,'2018-06-16','2018-10-21');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (69104,'Economia','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',12,24,'2018-01-16','2018-11-30');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (62381,'Sistemi di controllo digitali','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',13,19,'2018-04-15','2018-07-06');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (50800,'Sistemi wireless','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',3,6,'2018-02-12','2018-09-07');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (52554,'Reti di calcolatori','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',12,20,'2018-01-01','2018-09-20');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (56572,'Ingegneria del software','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',6,11,'2018-01-30','2018-09-02');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (67785,'Grafica computerizzata','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',8,26,'2018-01-26','2018-09-12');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (59587,'Teoria dei sistemi','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',5,5,'2018-04-10','2018-07-08');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (52859,'Controlli automatici','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',8,20,'2018-01-09','2018-07-13');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (59993,'Automazione','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',9,10,'2018-06-28','2018-11-28');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (58394,'Applicazione dell''automatica','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',5,25,'2018-04-29','2018-08-29');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (59950,'Modellistica e simulazione','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',6,4,'2018-03-05','2018-09-16');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (61923,'Analisi I','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',5,1,'2019-01-26','2019-10-02');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (53916,'Elettronica','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',12,15,'2019-01-10','2019-11-14');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (62194,'Chimica','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',5,6,'2019-02-05','2019-11-02');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (62012,'Fisica II','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',13,11,'2019-06-08','2019-11-15');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (65842,'Geometria','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',11,29,'2019-03-11','2019-07-05');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (65114,'Analisi II','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',12,2,'2019-05-13','2019-07-24');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (50256,'Fondamenti di informaticas','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',7,24,'2019-02-02','2019-12-03');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (55943,'Inglese','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',9,9,'2019-03-08','2019-10-25');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (53997,'Basi di dati I','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',12,23,'2019-05-12','2019-12-07');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (52948,'Ricerca operativa I','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',14,6,'2019-05-23','2019-08-19');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (55656,'Ricerca operativa II','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',15,27,'2019-03-19','2019-10-21');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (55973,'Machine Learning','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',12,14,'2019-05-08','2019-12-26');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (59943,'Intelligenza Artificiale','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',15,24,'2019-03-03','2019-11-29');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (58319,'Visualizzazione delle informazioni','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',5,11,'2019-06-07','2019-10-16');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (57953,'Telecomunicazioni','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',9,10,'2019-04-12','2019-11-02');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (68938,'Telecomunicazioni Wireless','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',10,23,'2019-06-26','2019-12-20');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (65212,'Cybersecurity','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',11,1,'2019-01-13','2019-07-29');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (56545,'Probabilità e scienza dei dati','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',10,1,'2019-01-12','2019-12-16');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (53103,'Fisica II','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',11,2,'2019-03-05','2019-07-06');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (53802,'Sistemi operativi','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',12,23,'2019-02-24','2019-12-24');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (56950,'Calcolatori elettronici','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',10,17,'2019-02-26','2019-11-25');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (55380,'Economia','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',13,8,'2019-06-23','2019-08-07');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (51439,'Sistemi di controllo digitali','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',5,19,'2019-06-07','2019-07-06');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (55883,'Sistemi wireless','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',4,21,'2019-01-03','2019-07-25');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (52819,'Reti di calcolatori','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',6,22,'2019-02-01','2019-10-18');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (60323,'Ingegneria del software','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',5,32,'2019-04-30','2019-10-05');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (51277,'Grafica computerizzata','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',8,20,'2019-04-03','2019-10-19');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (63614,'Teoria dei sistemi','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',3,1,'2019-06-20','2019-09-09');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (67029,'Controlli automatici','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',14,26,'2019-04-21','2019-10-28');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (66035,'Automazione','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',7,9,'2019-04-01','2019-07-24');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (67182,'Applicazione dell''automatica','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',5,2,'2019-03-14','2019-09-09');
INSERT INTO corso(codice,nome,descrizione,cfu,matricola_professore,periodo_da,periodo_a) VALUES (58217,'Modellistica e simulazione','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus molestie metus in sem pulvinar egestas. Donec in ante nibh. Vivamus tincidunt tincidunt eros, sed vestibulum dui vestibulum nec.',10,6,'2019-03-29','2019-09-13');


INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80000,'2018-06-02',50176,26,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80001,'2018-05-19',50256,31,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80002,'2018-02-05',50443,23,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80003,'2018-04-04',50548,12,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80004,'2018-04-23',50800,9,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80005,'2018-02-02',51175,27,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80006,'2018-04-04',51277,16,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80007,'2018-06-25',51330,1,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80008,'2018-06-01',51439,19,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80009,'2018-01-21',52554,24,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80010,'2018-05-18',52819,22,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80011,'2018-06-06',52859,10,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80012,'2018-01-20',52948,12,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80013,'2018-01-27',53021,30,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80014,'2018-06-01',53103,10,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80015,'2018-06-30',53802,12,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80016,'2018-06-06',53916,11,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80017,'2018-04-06',53997,16,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80018,'2018-03-15',55380,13,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80019,'2018-02-27',55633,30,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80020,'2018-03-09',55656,30,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80021,'2018-02-09',55883,31,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80022,'2018-05-05',55943,22,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80023,'2018-03-19',55973,6,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80024,'2018-06-15',56447,4,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80025,'2018-01-17',56545,9,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80026,'2018-04-20',56572,14,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80027,'2018-01-03',56950,27,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80028,'2018-06-16',57953,12,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80029,'2018-04-05',58217,28,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80030,'2018-01-21',58286,18,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80031,'2018-06-03',58319,29,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80032,'2018-01-02',58394,2,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80033,'2018-05-21',58418,16,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80034,'2018-04-18',58907,30,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80035,'2018-03-03',59317,8,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80036,'2018-02-06',59587,20,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80037,'2018-06-20',59943,12,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80038,'2018-03-08',59950,9,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80039,'2018-06-19',59993,25,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80040,'2018-06-14',60323,10,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80041,'2018-06-01',61240,17,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80042,'2018-02-27',61905,28,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80043,'2018-01-15',61923,26,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80044,'2018-02-07',62012,16,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80045,'2018-03-04',62194,13,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80046,'2018-01-10',62381,22,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80047,'2018-03-17',62943,4,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80048,'2018-03-25',63427,13,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80049,'2018-04-14',63614,1,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80050,'2018-06-04',64925,1,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80051,'2018-03-15',65114,15,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80052,'2018-06-22',65212,26,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80053,'2018-05-29',65283,7,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80054,'2018-05-11',65842,5,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80055,'2018-04-04',66005,2,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80056,'2018-04-24',66035,2,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80057,'2018-02-16',67029,13,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80058,'2018-02-17',67182,12,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80059,'2018-06-15',67624,26,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80060,'2018-02-14',67785,15,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80061,'2018-06-03',68199,5,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80062,'2018-05-10',68938,6,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80063,'2018-06-20',69104,17,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80064,'2018-02-08',50176,31,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80065,'2018-04-12',50256,29,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80066,'2018-03-11',50443,20,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80067,'2018-03-13',50548,2,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80068,'2018-02-20',50800,2,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80069,'2018-04-30',51175,6,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80070,'2018-02-06',51277,29,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80071,'2018-03-28',51330,19,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80072,'2018-03-28',51439,19,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80073,'2018-03-12',52554,5,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80074,'2018-03-17',52819,9,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80075,'2018-01-08',52859,23,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80076,'2018-02-18',52948,4,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80077,'2018-03-03',53021,1,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80078,'2018-02-25',53103,9,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80079,'2018-04-21',53802,16,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80080,'2018-06-04',53916,16,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80081,'2018-02-17',53997,19,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80082,'2018-03-07',55380,23,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80083,'2018-02-27',55633,28,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80084,'2018-06-25',55656,17,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80085,'2018-05-11',55883,1,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80086,'2018-01-30',55943,15,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80087,'2018-01-24',55973,5,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80088,'2018-06-30',56447,8,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80089,'2018-05-29',56545,23,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80090,'2018-01-18',56572,2,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80091,'2018-03-09',56950,21,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80092,'2018-06-28',57953,20,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80093,'2018-04-18',58217,3,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80094,'2018-04-10',58286,1,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80095,'2018-06-30',58319,5,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80096,'2018-05-15',58394,7,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80097,'2018-03-07',58418,10,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80098,'2018-01-23',58907,24,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80099,'2018-02-11',59317,5,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80100,'2018-03-18',59587,9,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80101,'2018-06-15',59943,16,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80102,'2018-06-12',59950,16,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80103,'2018-05-06',59993,12,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80104,'2018-02-12',60323,11,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80105,'2018-01-01',61240,21,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80106,'2018-05-24',61905,6,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80107,'2018-04-03',61923,24,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80108,'2018-02-04',62012,27,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80109,'2018-03-16',62194,23,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80110,'2018-01-09',62381,29,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80111,'2018-01-05',62943,4,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80112,'2018-04-30',63427,23,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80113,'2018-03-18',63614,6,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80114,'2018-01-28',64925,27,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80115,'2018-04-21',65114,24,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80116,'2018-06-21',65212,4,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80117,'2018-04-03',65283,21,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80118,'2018-03-26',65842,9,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80119,'2018-04-12',66005,28,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80120,'2018-02-28',66035,12,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80121,'2018-03-07',67029,11,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80122,'2018-04-02',67182,32,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80123,'2018-01-16',67624,16,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80124,'2018-04-11',67785,9,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80125,'2018-03-09',68199,2,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80126,'2018-06-14',68938,20,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80127,'2018-01-20',69104,31,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80128,'2018-06-02',50176,4,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80129,'2018-03-28',50256,24,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80130,'2018-02-15',50443,18,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80131,'2018-02-21',50548,21,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80132,'2018-02-04',50800,13,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80133,'2018-03-15',51175,20,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80134,'2018-05-01',51277,23,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80135,'2018-04-03',51330,22,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80136,'2018-06-23',51439,6,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80137,'2018-02-06',52554,6,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80138,'2018-03-05',52819,19,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80139,'2018-05-05',52859,12,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80140,'2018-03-25',52948,14,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80141,'2018-06-26',53021,13,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80142,'2018-01-04',53103,15,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80143,'2018-04-23',53802,3,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80144,'2018-04-18',53916,22,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80145,'2018-04-30',53997,8,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80146,'2018-04-13',55380,21,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80147,'2018-02-06',55633,29,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80148,'2018-04-28',55656,25,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80149,'2018-02-26',55883,32,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80150,'2018-06-14',55943,26,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80151,'2018-03-18',55973,28,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80152,'2018-01-30',56447,3,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80153,'2018-06-15',56545,28,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80154,'2018-06-08',56572,28,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80155,'2018-01-25',56950,15,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80156,'2018-04-23',57953,13,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80157,'2018-01-05',58217,9,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80158,'2018-04-25',58286,10,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80159,'2018-06-02',58319,7,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80160,'2018-03-31',58394,13,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80161,'2018-05-06',58418,18,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80162,'2018-05-13',58907,7,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80163,'2018-02-20',59317,20,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80164,'2018-04-08',59587,29,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80165,'2018-04-07',59943,13,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80166,'2018-05-03',59950,19,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80167,'2018-05-14',59993,7,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80168,'2018-06-21',60323,28,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80169,'2018-04-04',61240,6,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80170,'2018-02-13',61905,23,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80171,'2018-06-16',61923,29,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80172,'2018-01-29',62012,12,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80173,'2018-02-03',62194,19,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80174,'2018-02-27',62381,30,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80175,'2018-01-07',62943,8,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80176,'2018-06-22',63427,8,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80177,'2018-01-17',63614,14,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80178,'2018-04-26',64925,23,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80179,'2018-04-16',65114,26,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80180,'2018-05-22',65212,12,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80181,'2018-02-19',65283,32,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80182,'2018-06-26',65842,10,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80183,'2018-02-17',66005,20,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80184,'2018-01-21',66035,9,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80185,'2018-06-30',67029,19,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80186,'2018-01-24',67182,27,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80187,'2018-03-06',67624,31,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80188,'2018-05-11',67785,13,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80189,'2018-01-29',68199,18,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80190,'2018-05-07',68938,11,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80191,'2018-04-28',69104,4,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80192,'2018-05-20',50176,18,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80193,'2018-02-26',50256,6,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80194,'2018-02-21',50443,31,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80195,'2018-01-14',50548,20,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80196,'2018-06-24',50800,24,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80197,'2018-02-22',51175,5,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80198,'2018-05-23',51277,12,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80199,'2018-04-21',51330,15,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80200,'2018-04-18',51439,32,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80201,'2018-05-23',52554,8,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80202,'2018-05-08',52819,3,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80203,'2018-06-01',52859,2,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80204,'2018-04-30',52948,9,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80205,'2018-02-08',53021,21,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80206,'2018-01-01',53103,28,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80207,'2018-06-02',53802,24,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80208,'2018-03-14',53916,31,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80209,'2018-05-21',53997,18,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80210,'2018-01-04',55380,13,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80211,'2018-03-05',55633,13,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80212,'2018-05-15',55656,21,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80213,'2018-04-17',55883,30,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80214,'2018-06-03',55943,31,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80215,'2018-04-24',55973,1,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80216,'2018-03-12',56447,12,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80217,'2018-01-16',56545,14,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80218,'2018-03-12',56572,4,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80219,'2018-01-13',56950,23,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80220,'2018-02-19',57953,27,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80221,'2018-06-26',58217,24,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80222,'2018-05-04',58286,5,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80223,'2018-06-15',58319,17,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80224,'2018-04-07',58394,17,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80225,'2018-01-11',58418,20,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80226,'2018-02-08',58907,18,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80227,'2018-01-03',59317,4,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80228,'2018-02-19',59587,15,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80229,'2018-02-28',59943,8,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80230,'2018-04-02',59950,29,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80231,'2018-01-07',59993,11,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80232,'2018-01-31',60323,29,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80233,'2018-04-08',61240,6,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80234,'2018-03-26',61905,11,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80235,'2018-04-14',61923,1,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80236,'2018-04-09',62012,16,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80237,'2018-03-20',62194,11,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80238,'2018-04-19',62381,11,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80239,'2018-01-21',62943,17,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80240,'2018-05-16',63427,5,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80241,'2018-03-28',63614,27,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80242,'2018-05-31',64925,7,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80243,'2018-01-14',65114,2,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80244,'2018-05-18',65212,24,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80245,'2018-05-15',65283,28,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80246,'2018-06-27',65842,32,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80247,'2018-01-16',66005,2,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80248,'2018-04-24',66035,7,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80249,'2018-04-23',67029,15,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80250,'2018-03-21',67182,5,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80251,'2018-06-10',67624,14,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80252,'2018-03-12',67785,30,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80253,'2018-02-18',68199,6,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80254,'2018-02-11',68938,25,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80255,'2018-04-16',69104,23,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80256,'2018-06-07',50176,26,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80257,'2018-06-09',50256,14,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80258,'2018-04-06',50443,31,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80259,'2018-02-17',50548,28,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80260,'2018-03-08',50800,14,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80261,'2018-02-19',51175,2,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80262,'2018-05-20',51277,8,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80263,'2018-04-13',51330,13,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80264,'2018-04-01',51439,6,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80265,'2018-03-25',52554,1,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80266,'2018-03-15',52819,1,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80267,'2018-04-19',52859,28,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80268,'2018-02-27',52948,4,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80269,'2018-05-20',53021,28,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80270,'2018-03-06',53103,18,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80271,'2018-01-27',53802,30,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80272,'2018-01-13',53916,21,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80273,'2018-06-12',53997,8,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80274,'2018-01-07',55380,6,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80275,'2018-04-06',55633,24,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80276,'2018-06-29',55656,31,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80277,'2018-05-11',55883,17,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80278,'2018-05-01',55943,2,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80279,'2018-06-14',55973,31,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80280,'2018-01-26',56447,22,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80281,'2018-05-30',56545,7,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80282,'2018-02-15',56572,13,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80283,'2018-01-10',56950,29,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80284,'2018-03-14',57953,31,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80285,'2018-06-03',58217,9,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80286,'2018-05-16',58286,20,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80287,'2018-04-19',58319,28,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80288,'2018-01-14',58394,32,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80289,'2018-01-27',58418,11,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80290,'2018-06-24',58907,2,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80291,'2018-06-08',59317,19,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80292,'2018-04-28',59587,12,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80293,'2018-06-06',59943,27,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80294,'2018-05-13',59950,18,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80295,'2018-04-26',59993,1,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80296,'2018-03-19',60323,24,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80297,'2018-05-30',61240,12,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80298,'2018-02-28',61905,3,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80299,'2018-01-10',61923,27,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80300,'2018-01-19',62012,4,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80301,'2018-01-13',62194,30,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80302,'2018-03-20',62381,23,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80303,'2018-02-20',62943,30,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80304,'2018-06-01',63427,5,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80305,'2018-01-14',63614,3,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80306,'2018-02-02',64925,24,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80307,'2018-02-13',65114,3,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80308,'2018-05-21',65212,27,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80309,'2018-06-11',65283,11,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80310,'2018-06-29',65842,26,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80311,'2018-05-25',66005,16,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80312,'2018-04-27',66035,9,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80313,'2018-02-16',67029,31,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80314,'2018-05-05',67182,13,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80315,'2018-01-31',67624,5,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80316,'2018-03-26',67785,17,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80317,'2018-03-13',68199,26,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80318,'2018-02-10',68938,11,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80319,'2018-06-21',69104,2,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80320,'2018-06-12',50176,6,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80321,'2018-02-03',50256,17,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80322,'2018-06-15',50443,2,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80323,'2018-03-14',50548,21,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80324,'2018-04-01',50800,6,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80325,'2018-05-01',51175,20,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80326,'2018-03-01',51277,13,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80327,'2018-05-06',51330,7,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80328,'2018-03-31',51439,19,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80329,'2018-06-07',52554,13,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80330,'2018-01-10',52819,3,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80331,'2018-04-01',52859,11,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80332,'2018-05-27',52948,8,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80333,'2018-06-22',53021,16,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80334,'2018-02-09',53103,12,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80335,'2018-06-27',53802,24,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80336,'2018-05-08',53916,24,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80337,'2018-03-11',53997,13,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80338,'2018-01-30',55380,14,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80339,'2018-04-18',55633,22,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80340,'2018-01-29',55656,8,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80341,'2018-01-15',55883,6,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80342,'2018-02-10',55943,25,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80343,'2018-03-08',55973,31,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80344,'2018-03-22',56447,6,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80345,'2018-04-24',56545,23,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80346,'2018-06-19',56572,6,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80347,'2018-03-05',56950,8,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80348,'2018-01-24',57953,21,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80349,'2018-01-27',58217,20,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80350,'2018-05-02',58286,30,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80351,'2018-01-31',58319,30,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80352,'2018-02-10',58394,28,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80353,'2018-03-10',58418,5,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80354,'2018-01-25',58907,12,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80355,'2018-06-21',59317,26,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80356,'2018-01-25',59587,16,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80357,'2018-04-14',59943,13,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80358,'2018-01-31',59950,20,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80359,'2018-06-25',59993,19,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80360,'2018-06-30',60323,22,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80361,'2018-03-03',61240,29,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80362,'2018-01-13',61905,17,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80363,'2018-06-14',61923,20,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80364,'2018-06-15',62012,16,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80365,'2018-06-28',62194,8,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80366,'2018-03-16',62381,3,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80367,'2018-05-07',62943,31,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80368,'2018-02-09',63427,28,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80369,'2018-06-05',63614,24,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80370,'2018-04-29',64925,27,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80371,'2018-06-12',65114,1,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80372,'2018-04-16',65212,9,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80373,'2018-03-21',65283,31,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80374,'2018-04-14',65842,27,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80375,'2018-01-07',66005,9,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80376,'2018-01-01',66035,25,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80377,'2018-04-20',67029,11,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80378,'2018-04-09',67182,26,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80379,'2018-04-18',67624,8,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80380,'2018-05-08',67785,10,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80381,'2018-02-01',68199,6,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80382,'2018-02-28',68938,24,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80383,'2018-01-24',69104,6,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80384,'2018-01-27',50176,21,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80385,'2018-02-26',50256,29,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80386,'2018-02-13',50443,7,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80387,'2018-05-03',50548,8,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80388,'2018-03-17',50800,9,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80389,'2018-03-19',51175,16,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80390,'2018-01-14',51277,17,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80391,'2018-01-01',51330,28,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80392,'2018-01-03',51439,28,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80393,'2018-06-18',52554,2,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80394,'2018-01-09',52819,6,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80395,'2018-03-06',52859,26,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80396,'2018-06-28',52948,14,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80397,'2018-06-10',53021,14,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80398,'2018-04-26',53103,10,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80399,'2018-03-29',53802,17,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80400,'2018-04-27',53916,16,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80401,'2018-05-31',53997,4,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80402,'2018-03-08',55380,23,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80403,'2018-06-16',55633,31,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80404,'2018-03-19',55656,19,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80405,'2018-03-15',55883,29,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80406,'2018-03-09',55943,32,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80407,'2018-04-27',55973,29,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80408,'2018-01-05',56447,18,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80409,'2018-04-29',56545,24,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80410,'2018-05-20',56572,1,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80411,'2018-02-11',56950,26,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80412,'2018-02-19',57953,6,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80413,'2018-06-18',58217,11,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80414,'2018-06-10',58286,11,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80415,'2018-01-26',58319,26,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80416,'2018-06-03',58394,28,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80417,'2018-05-23',58418,12,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80418,'2018-04-01',58907,21,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80419,'2018-06-25',59317,17,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80420,'2018-01-14',59587,10,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80421,'2018-06-06',59943,4,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80422,'2018-03-06',59950,19,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80423,'2018-02-19',59993,3,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80424,'2018-05-07',60323,25,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80425,'2018-05-10',61240,21,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80426,'2018-06-21',61905,27,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80427,'2018-03-25',61923,30,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80428,'2018-01-04',62012,20,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80429,'2018-06-29',62194,14,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80430,'2018-01-13',62381,32,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80431,'2018-04-13',62943,11,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80432,'2018-03-17',63427,27,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80433,'2018-05-04',63614,15,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80434,'2018-06-09',64925,17,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80435,'2018-04-24',65114,9,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80436,'2018-01-16',65212,24,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80437,'2018-04-15',65283,13,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80438,'2018-01-23',65842,32,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80439,'2018-02-03',66005,1,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80440,'2018-01-09',66035,22,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80441,'2018-02-08',67029,9,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80442,'2018-03-28',67182,23,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80443,'2018-01-23',67624,14,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80444,'2018-05-31',67785,22,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80445,'2018-06-23',68199,6,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80446,'2018-02-03',68938,21,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80447,'2018-05-28',69104,11,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80448,'2018-01-26',50176,8,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80449,'2018-05-08',50256,30,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80450,'2018-04-18',50443,9,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80451,'2018-02-18',50548,20,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80452,'2018-06-08',50800,2,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80453,'2018-03-08',51175,1,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80454,'2018-05-01',51277,16,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80455,'2018-05-16',51330,19,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80456,'2018-06-07',51439,27,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80457,'2018-05-25',52554,8,30);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80458,'2018-05-16',52819,11,28);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80459,'2018-01-04',52859,22,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80460,'2018-04-26',52948,5,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80461,'2018-01-29',53021,1,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80462,'2018-05-18',53103,6,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80463,'2018-01-07',53802,9,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80464,'2018-02-18',53916,3,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80465,'2018-05-15',53997,26,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80466,'2018-02-01',55380,5,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80467,'2018-01-23',55633,6,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80468,'2018-02-06',55656,25,29);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80469,'2018-01-01',55883,2,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80470,'2018-01-15',55943,22,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80471,'2018-03-25',55973,30,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80472,'2018-05-06',56447,19,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80473,'2018-05-14',56545,17,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80474,'2018-05-24',56572,25,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80475,'2018-01-18',56950,14,17);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80476,'2018-03-15',57953,5,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80477,'2018-04-26',58217,23,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80478,'2018-02-04',58286,6,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80479,'2018-04-14',58319,25,18);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80480,'2018-04-03',58394,31,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80481,'2018-06-21',58418,11,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80482,'2018-02-21',58907,32,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80483,'2018-06-28',59317,27,21);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80484,'2018-05-03',59587,24,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80485,'2018-05-06',59943,22,26);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80486,'2018-03-29',59950,6,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80487,'2018-03-29',59993,13,27);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80488,'2018-04-23',60323,4,24);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80489,'2018-04-30',61240,29,31);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80490,'2018-03-20',61905,25,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80491,'2018-01-23',61923,24,22);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80492,'2018-05-03',62012,9,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80493,'2018-01-29',62194,7,20);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80494,'2018-06-22',62381,19,19);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80495,'2018-01-10',62943,17,23);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80496,'2018-04-04',63427,23,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80497,'2018-06-29',63614,29,25);
INSERT INTO esame(codice,data_esame,codice_corso,matricola_studente,votazione) VALUES (80498,'2018-06-25',64925,1,26);

-- Media dei voti di un dato corso in un certo periodo
SELECT c.nome, AVG(e.votazione)
FROM esame AS e LEFT JOIN corso AS c ON e.codice_corso = c.codice
WHERE c.codice = 50256
AND e.data_esame BETWEEN '2018-01-01' AND '2018-12-31'
GROUP BY c.nome

-- Media dei voti in un certo periodo per ogni corso
SELECT c.nome, AVG(e.votazione)
FROM esame AS e LEFT JOIN corso AS c ON e.codice_corso = c.codice
WHERE e.data_esame BETWEEN '2018-01-01' AND '2018-12-31'
GROUP BY c.nome

-- Stored procedure per la media dei voti in un certo periodo per ogni corso
DELIMITER //

CREATE PROCEDURE GetAvgVotazione(
	IN codiceCorso int,
    IN periodoDa date,
    IN periodoA date
)
BEGIN
	SELECT c.nome, AVG(e.votazione)
	FROM esame AS e LEFT JOIN corso AS c ON e.codice_corso = c.codice
	WHERE c.codice = codiceCorso
    AND e.data_esame BETWEEN periodoDa AND periodoA
	GROUP BY c.nome;
END //

DELIMITER ;

-- Esecuzione della stored procedure
CALL GetAvgVotazione(50548, '2018-01-01', '2020-12-31');


-- Calcolare il numero di studenti che non hanno superato l’esame, il periodo di riferimento del corso e il professore
SELECT c.codice AS "Codice corso", CONCAT(p.cognome, " ", p.nome) AS "Docente", c.nome AS "Nome corso", CONCAT(c.periodo_da, "/", c.periodo_a) AS "Periodo", COUNT(*) AS "Studenti bocciati"
FROM esame e
JOIN corso c ON e.codice_corso = c.codice
JOIN professore p ON c.matricola_professore = p.matricola
WHERE e.votazione < 18
GROUP BY c.codice


-- Vista
CREATE VIEW numero_bocciati
AS
SELECT c.codice AS "Codice corso", CONCAT(p.cognome, " ", p.nome) AS "Docente", c.nome AS "Nome corso", CONCAT(c.periodo_da, "/", c.periodo_a) AS "Periodo", COUNT(*) AS "Studenti bocciati"
FROM esame e
JOIN corso c ON e.codice_corso = c.codice
JOIN professore p ON c.matricola_professore = p.matricola
WHERE e.votazione < 18
GROUP BY c.codice


-- Verificare la presenza di eccellenze nel dipartimento, ossia degli studenti con una media superiore al 28 che abbiano conseguito almeno 3 votazioni pari a 30 e lode
SELECT s.matricola AS "Matricola", CONCAT(s.cognome, " ", s.nome) AS "Studente", AVG(e.votazione) AS "Media"
FROM studente s
LEFT JOIN esame e ON s.matricola = e.matricola_studente
LEFT JOIN corso c ON e.codice_corso = c.codice
GROUP BY s.matricola
HAVING AVG(e.votazione) >= 28 AND s.matricola IN (
	SELECT s.matricola
    FROM studente s
	LEFT JOIN esame e ON s.matricola = e.matricola_studente
    WHERE e.votazione = 31
    GROUP BY s.matricola
    HAVING COUNT(*) >= 3
    )


-- Il numero di crediti di un dato studente, fornendo la sua matricola
SELECT SUM(c.cfu) AS "Crediti totali"
FROM studente s
LEFT JOIN esame e ON s.matricola = e.matricola_studente
LEFT JOIN corso c ON e.codice_corso = c.codice
WHERE s.matricola = 4

-- Stored procedure
DELIMITER //

CREATE PROCEDURE GetTotCrediti(
	IN matricola int
)
BEGIN
	SELECT SUM(c.cfu) AS "Crediti totali"
FROM studente s
LEFT JOIN esame e ON s.matricola = e.matricola_studente
LEFT JOIN corso c ON e.codice_corso = c.codice
WHERE s.matricola = matricola

END //

DELIMITER ;


-- Esecuzione della stored procedure
CALL GetTotCrediti(20);

-- Calcolare il numero di iscritti per ogni corso in modo dinamico
CREATE VIEW numero_iscritti_corso
AS
SELECT c.nome AS "Corso", COUNT(s.matricola) AS "Totale studenti"
FROM studente s
LEFT JOIN esame e ON s.matricola = e.matricola_studente
LEFT JOIN corso c ON e.codice_corso = c.codice
GROUP BY c.nome

-- Esecuzione della vista
SELECT * FROM numero_iscritti_corso