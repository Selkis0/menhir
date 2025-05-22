CREATE DATABASE project_base 
;

CREATE TABLE Users
	(
	rowid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nom VARCHAR(100),
	password VARCHAR(255),
	email VARCHAR(255)
	)
;

CREATE TABLE Events
	(
	rowid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	date_veillee DATE,
	places INT
	)
;

CREATE TABLE Orders
	(
	rowid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	date_commande DATE,
	fk_user INT NOT NULL,
	fk_event INT NOT NULL,
	FOREIGN KEY (fk_user) REFERENCES Users(rowid),
	FOREIGN KEY (fk_event) REFERENCES Events(rowid)
	)
;

INSERT INTO Users VALUES (1, 'jmichel', 'jmichmich', 'jean.michel@yahoo.com') ;
INSERT INTO Users VALUES (2, 'bruno44', 'password', 'brunopeltier@orange.fr') ;
INSERT INTO Users VALUES (3, 'davdouillet', 'judo', 'pieces_jaunes@gmail.com') ;

INSERT INTO Events VALUES (1, '01/07/2024', 5) ;
INSERT INTO Events VALUES (2, '08/07/2024', 8) ;

INSERT INTO Orders VALUES (1, '06/06/2024', 1, 1) ;
INSERT INTO Orders VALUES (2, '06/06/2024', 1, 2) ;
INSERT INTO Orders VALUES (3, '07/06/2024', 2, 1) ;
INSERT INTO Orders VALUES (4, '08/06/2024', 3, 1) ;
INSERT INTO Orders VALUES (5, '08/06/2024', 3, 2) ;
