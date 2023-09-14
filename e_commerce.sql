create database e_commerce;

use e_commerce;



create table adresse(
   id_adresse varchar(250) primary key,
   province varchar(50) not null,
   region varchar(50) not null,
   district varchar(50) not null,
   commune varchar(50) not null,
   arrondissement varchar(50) not null,
   cartier varchar(50) not null,
   logement varchar(50) not null,
   numero_chambre varchar(50));

create table utilisateur(
   id_utilisateur varchar(50) primary key,
   date_inscription dateTime not null,
   mot_de_passe varchar(50) not null,
   nom_utilisateur varchar(50) not null
);

create table categorie(
   idcategorie varchar(50) primary key,
   nomcategorie varchar(50) not null,
   description text not null);
   
create table contact(
   idcontact varchar(50) primary key,
   tel int not null,
   email varchar(50) not null,
   nomfacebook varchar(50),
   nomtwitter varchar(50));   
   
create table produit(
   idproduit varchar(50) primary key,
   nomproduit varchar(50) not null,
   prix varchar(50) not null,
   stock int);
   
   
create table commandeproduitlivraison(
   idcategorie varchar(50) ,
   idproduit varchar(50),
   idlivraison varchar(50), 
   primary key(idcategorie, idproduit, idlivraison));
   
create TABLE employe(
   idemploye varchar(50) primary key,
   nom varchar(50) not null,
   prenom varchar(50) not null,
   situation varchar(50) not NULL,
   idcontact varchar(50),
   idadresse varchar(50),
   idutilisateur varchar(50),
   foreign key(idutilisateur) references utilisateur(id_utilisateur),
   foreign key(idcontact) references contact(idcontact),
   foreign key(idadresse) references adresse(id_adresse));

create table fonction(
   idfonction varchar(50) primary key,
   nomfonction varchar(50) not null,
   bureau varchar(50) not null,
   departement varchar(50) not null,
   idemploye varchar(50),
   foreign key(idemploye) references employe(idemploye));
   
create table absence(
   codeabsence varchar(50) primary key,
   dha datetime,
   cause text,
   idemploye varchar(50),
   foreign key(idemploye) references employe(idemploye));
   
create table dhw(
   idw varchar(50) primary key,
   datedebut datetime not null,
   datefin datetime not null,
   idemploye varchar(50),
   foreign key(idemploye) references employe(idemploye)); 

create table livraison(
   idlivraison varchar(50) primary key,
   etatlivraison varchar(50)not null,
   fraislivraison varchar(50) not null,
   typelivraison varchar(50) not null,
   idadresse varchar(50),
   foreign key(idadresse) references adresse(id_adresse));
   
create table client(
   idclient varchar(50) primary key,
   nom varchar(50)not null,
   prenom varchar(50) not null,
   idcontact varchar(50),
   idadresse varchar(50),
   idutilisateur varchar(50),
   foreign key(idadresse) references adresse(id_adresse),
   foreign key(idcontact) references contact(idcontact),
   foreign key(idutilisateur) references utilisateur(id_utilisateur)
);  

create table commande(
   idcommand varchar(50) primary key,
   dhc datetime not null,
   description text not null,
   idclient varchar(50),
   foreign key(idclient) references client(idclient));  


create table paiment(
   codetransac varchar(50) primary key,
   dhp datetime not null,
   description text not null,
   idcommand varchar(50),
   idclient varchar(50),
   foreign key(idcommand) references commande(idcommand),
   foreign key(idclient) references client(idclient));  

create table produitcategorie(
  idproduit varchar(50),
  idcategorie varchar(50),
  primary key(idproduit, idcategorie));

show tables;
-- insertion donnee

insert into utilisateur values
('idut1', '20-04-23', 'midput1', 'nomut1'),
('idut2', '20-04-23', 'midput2', 'nomut2'),
('idut3', '20-08-22', 'midput3', 'nomut3'),
('idut4', '14-01-21', 'midput4', 'nomut4');

insert into utilisateur values
('idut6', '21-04-23', 'midput6', 'nomut6'),
('idut7', '22-04-23', 'midput7', 'nomut7'),
('idut8', '23-08-22', 'midput8', 'nomut8'),
('idut9', '15-01-21', 'midput9', 'nomut9');



insert into categorie values
('idcat1', 'nomcat1', 'descriptcat1'),
('idcat2', 'nomcat2', 'descriptcat2'),
('idcat3', 'nomcat3', 'descriptcat3');

insert into contact values
('idcont0', '0340000000', 'email0@gmail.com', 'nomfb0', 'nomtwit0'),
('idcont1', '0320000001', 'email1@gmail.com', 'nomfb1', 'nomtwit1'),
('idcont2', '0340000002', 'email2@gmail.com', 'nomfb2', 'nomtwit2'),
('idcont3', '0330000003', 'email3@gmail.com', 'nomfb2', 'nomtwit3'),
('idcont4', '0320000004', 'email4@gmail.com', 'nomfb4', 'nomtwit4');

insert into contact values
('idcont5', '0340050000', 'email5@gmail.com', 'nomfb5', 'nomtwit5'),
('idcont6', '0320006001', 'email6@gmail.com', 'nom6fb', 'nom6twit'),
('idcont7', '0347000002', 'email7@gmail.com', 'nom7fb', 'nom7twit'),
('idcont8', '0330000083', 'email8@gmail.com', 'nomfb8', 'nomtwit8');


insert into adresse values
('idad1', 'province1', 'region1', 'district1', 'commune1', 'arrond1', 'quartier1', 'lot1', null),
('idad2', 'province2', 'region2', 'district2', 'commune2', 'arrond2', 'quartier2', 'lot2', '3'),
('idad3', 'province2', 'region2', 'district2', 'commune3', 'arrond3', 'quartier3', 'lot3', '5'),
('idad4', 'province3', 'region3', 'district3', 'commune4', 'arrond4', 'quartier4', 'lot4', '4');

insert into adresse values
('idad5', 'province3', 'region3', 'district3', 'commune4', 'arrond4', 'quartier4', 'lot4', '6'),
('idad6', 'province4', 'region4', 'district4', 'commune6', 'arrond6', 'quartier6', 'lot6', '1'),
('idad7', 'province5', 'region5', 'district5', 'commune7', 'arrond7', 'quartier7', 'lot7', '2'),
('idad8', 'province6', 'region6', 'district6', 'commune8', 'arrond8', 'quartier8', 'lot8', '8');


insert into produit values
('idproduit1', 'nomprod1','110', 1),
('idproduit2', 'nomprod2','650', 2),
('idproduit3', 'nomprod3','2100', 3),
('idproduit4', 'nomprod4','2000', 4),
('idproduit5', 'nomprod5','400', 0);



insert into employe values
('idemp1', 'nomemp', 'prenomemp','situation1', 'idcont1', 'idad1', 'idut1'),
('idemp2', 'nomemp2', 'prenomemp2','situation2', 'idcont2', 'idad2', 'idut3'),
('idemp3', 'nomemp3', 'prenomemp3','situation1', 'idcont3', 'idad3', 'idut4'),
('idemp4', 'nomemp4', 'prenomemp4','situation2', 'idcont4', 'idad4', 'idut2');

insert into fonction values
('idfonct1', 'nomfonct1','bureau1', 'depart1','idemp1'),
('idfonct2', 'nomfonct2','bureau2', 'depart2','idemp2'),
('idfonct3', 'nomfonct3','bureau3', 'depart3','idemp3'),
('idfonct4', 'nomfonct4','bureau4', 'depart4','idemp4');

insert into dhw values
('idhw1', '13-09-23 08:00:00', '13-09-23 17:40:06', 'idemp1'),
('idhw2', '11-08-23 09:00:00', '11-08-23 13:04:01', 'idemp2'),
('idhw3', '11-09-23 10:00:00', '11-09-23 16:30:20', 'idemp3'), 
('idhw4', '13-09-23 08:00:00', '13-09-23 17:01:02', 'idemp4');


insert into absence values
('codeabs1', '06','cause1','idemp3'),
('codeabs2', '02','cause2','idemp2'),
('codeabs3', '08','cause3','idemp3'),
('codeabs4', '04','cause4','idemp4');

insert into client values 
('idclient1', 'nomcl1', 'prenomcl1', 'idcont7', 'idad7', 'idut6'),
('idclient2', 'nomcl2', 'prenomcl2', 'idcont8', 'idad8', 'idut7'),
('idclient4', 'nomcl4', 'prenomcl4', 'idcont4', 'idad4', 'idut4'),
('idclient3', 'nomcl3', 'prenomcl9', 'idcont1', 'idad6', 'idut8');



insert into commande values 
('idcomm1', '12-09-23 10:10:00', 'description1', 'idclient2'),
('idcomm2', '12-09-23 16:30:40', 'description2', 'idclient4'),
('idcomm3', '12-09-23 17:40:30', 'description3', 'idclient3'),
('idcomm4', '10-09-23 08:36:12', 'description4', 'idclient4');

insert into livraison values 
('idlivr1', 'etatlivr1', '1', '1', 'idad1'),
('idlivr2', 'etatlivr2', '0', '0', 'idad4'),
('idlivr3', 'etatlivr3', '3', '1', 'idad2'),
('idlivr4', 'etatlivr4', '0', '0', 'idad3');

insert into paiment values 
('codtrans1', '13-08-23 14:00:00', 'descrip1', 'idcomm1', 'idclient1'),
('codtrans4', '13-05-23 08:00:00', 'descrip2', 'idcomm3', 'idclient2'),
('codtrans3', '17-08-23 09:00:00', 'descrip3', 'idcomm4', 'idclient3'),
('codtrans2', '16-07-23 10:30:00', 'descrip4', 'idcomm2', 'idclient4');

insert into paiment values 
('codtrans1', '13-08-23 14:00:00', 'descrip1', 'idcomm1', 'idclient1'),
('codtrans4', '13-05-23 08:00:00', 'descrip2', 'idcomm3', 'idclient2'),
('codtrans3', '17-08-23 09:00:00', 'descrip3', 'idcomm4', 'idclient3'),
('codtrans2', '16-07-23 10:30:00', 'descrip4', 'idcomm2', 'idclient4');

insert into paiment values
('codtrans5', '17-08-23 10:30:00', 'descrip5', 'idcomm1', 'idclient4'),
('codtrans6', '16-07-23 12:30:00', 'descrip7', 'idcomm2', 'idclient1'),
('codtrans7', '15-07-23 10:30:00', 'descrip6', 'idcomm3', 'idclient2');

insert into produitcategorie values
('idproduit1', 'idcat1'),
('idproduit1', 'idcat2'),
('idproduit2', 'idcat5'),
('idproduit2', 'idcat1');


insert into commandeproduitlivraison values
('idcomm1', 'idlivr4', 'idprod1'),
('idcomm2', 'idlivr2', 'idprod2'),
('idcomm3', 'idlivr3', 'idprod3'),
('idcomm1', 'idlivr1', 'idprod1');

-- requete

select* from paiment;

select cause from absence;

select* from livraison where fraislivraison=0;

select* from paiment order by dhp limit 2;

select sum(prix) from produit;

select avg(prix) from produit;

select count(numero_chambre) from adresse;
describe paiment;
select * from paiment;
select client.idclient, client.nom, client.prenom, paiment.codetransac, paiment.dhp from client inner join paiment on client.idclient=paiment.idclient;
