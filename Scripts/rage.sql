CREATE TABLE patient(
cin int ,
nom VARCHAR(15) ,
prenom VARCHAR(15) ,
numero VARCHAR(15) ,
PRIMARY KEY(cin) ) ;

CREATE TABLE vaccin(
numero_lot VARCHAR(40) ,
quantite VARCHAR(40) ,
dlc_vaccin DATETIME,
PRIMARY KEY(numero_lot) ) ;

CREATE TABLE serum(
numero_lot VARCHAR(30) ,
quantite varchar(30) ,
dlc_serum DATETIME,
type_serum VARCHAR(20) ,
PRIMARY KEY(numero_lot) ) ;

CREATE TABLE serotherapie(
dose_total int ,
date_administration DATETIME ,
quantite_local int , 
quantite_generale int , 
cin int ,
numero_lot varchar(30) ,
PRIMARY KEY(dose_total) ,
CONSTRAINT FOREIGN KEY(cin)REFERENCES patient (cin)ON DELETE CASCADE ON UPDATE CASCADE ,
CONSTRAINT FOREIGN KEY(numero_lot) REFERENCES serum(numero_lot) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE vaccination( 
date_vaccination DATETIME ,
cin int , 
numero_lot varchar(30) ,
nombre_dose int ,
PRIMARY KEY (date_vaccination) ,
CONSTRAINT FOREIGN KEY(cin)REFERENCES patient (cin)ON DELETE CASCADE ON UPDATE CASCADE ,
CONSTRAINT FOREIGN KEY(numero_lot) REFERENCES vaccin(numero_lot) ON DELETE CASCADE ON UPDATE CASCADE);
