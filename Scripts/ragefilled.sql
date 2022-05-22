CREATE TABLE patient(
patient_id int auto_increment NOT NULL PRIMARY KEY,
cin int  NOT NULL ,
nom VARCHAR(15) NOT NULL ,
prenom VARCHAR(15) NOT NULL,
numero VARCHAR(15) 
);

CREATE TABLE vaccin(
numero_lot VARCHAR(40) NOT NULL,
quantite VARCHAR(40) ,
dlc_vaccin DATETIME NOT NULL,
PRIMARY KEY(numero_lot) ) ;

CREATE TABLE serum(
numero_lot VARCHAR(30) NOT NULL ,
quantite varchar(30) ,
dlc_serum DATETIME NOT NULL,
type_serum VARCHAR(20) NOT NULL,
PRIMARY KEY(numero_lot) ) ;

CREATE TABLE serotherapie(
dose_id int auto_increment NOT NULL PRIMARY KEY ,
dose_total int ,
date_administration DATETIME ,
quantite_local int , 
quantite_generale int , 
patient_id int ,
numero_lot varchar(30)  ,
CONSTRAINT FOREIGN KEY(patient_id)REFERENCES patient (patient_id)ON DELETE CASCADE ON UPDATE CASCADE ,
CONSTRAINT FOREIGN KEY(numero_lot) REFERENCES serum(numero_lot) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE vaccination( 
vaccination_id int auto_increment NOT NULL PRIMARY KEY ,
date_vaccination DATETIME NOT NULL,
patient_id int , 
numero_lot varchar(30) ,
nombre_dose int ,
etat tinyint ,
CONSTRAINT FOREIGN KEY(patient_id)REFERENCES patient (patient_id)ON DELETE CASCADE ON UPDATE CASCADE ,
CONSTRAINT FOREIGN KEY(numero_lot) REFERENCES vaccin(numero_lot) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO patient(cin , nom , prenom , numero) VALUES (11376378,"ben_ammar", "wael", 24497997);
INSERT INTO vaccin (numero_lot, quantite, dlc_vaccin) VALUES (1,100,"2021-11-25") ;
INSERT INTO vaccin (numero_lot, quantite, dlc_vaccin) VALUES (2,0,"2021-12-25") ;
INSERT INTO vaccin (numero_lot, quantite, dlc_vaccin) VALUES (3,100,"2020-10-20") ;

INSERT INTO serum(numero_lot, quantite, dlc_serum,type_serum) VALUES (1,0,"2019-10-10","equirab") ;
INSERT INTO serum(numero_lot, quantite, dlc_serum,type_serum) VALUES (2,100,"2021-12-10","equirab") ;
INSERT INTO serum(numero_lot, quantite, dlc_serum,type_serum) VALUES (3,10000,"2022-10-10","gammarab") ;
INSERT INTO serum(numero_lot, quantite, dlc_serum,type_serum) VALUES (4,10000,"2022-10-10","gammarab") ;

INSERT INTO serotherapie(dose_total,date_administration,quantite_local,quantite_generale) VALUES (30,"2121-10-16",20,15) ;
INSERT INTO serotherapie(dose_total,date_administration,quantite_local,quantite_generale) VALUES (30,"2121-10-16",20,15) ;

SELECT * FROM serum ;
SET autocommit=True ;
SELECT patient.patient_id,patient.cin,patient.prenom,vaccination.etat,vaccination.date_vaccination,vaccination.nombre_dose
FROM patient JOIN vaccination on patient.patient_id=vaccination.patient_id ;
SELECT * FROM serum ;
DESCRIBE vaccination;
describe serotherapie ; 
