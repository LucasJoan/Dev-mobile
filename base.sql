create database StatFoot;
use StatFoot;

create table onglet(
    idOnglet int primary key auto_increment,
    nom_onglet varchar(10)
);

insert into onglet values(null,'general');
insert into onglet values(null,'Defence');
insert into onglet values(null,'Attaque');

create table Sous_Onglet(
    id_SousOnglet int primary key auto_increment,
    nom_SousOnglet varchar(10)
);
insert into Sous_Onglet values(null,'general');
insert into Sous_Onglet values(null,'Domicile');
insert into Sous_Onglet values(null,'Exterieur');

select * from StatEquipe where onglet.nom_onglet=general with Sous_Onglet.nom_SousOnglet=Exterieur;

create table StatEquipe(
    id_StatEquipe int primary key auto_increment,
    nom_equipe varchar(10),
    competition varchar(20),
    But int,
    TirsPm DECIMAL(10,2),
    DisciplineJ int,
    DisciplineR int,
    passeReussie DECIMAL(10,2),
    possesion DECIMAL(10,2),
    AeriensGagnee DECIMAL(5,2),
    Note DECIMAL(5,2),
    idOnglet int,
    id_SousOnglet int
);
create view StatistiquesEquipe as 
select StatEquipe.nom_equipe as Equipe,
StatEquipe.competition as competition,
StatEquipe.But as Buts,
StatEquipe.disciplineJ as discipline,
StatEquipe.disciplineJ as disciplines,
StatEquipe.passeReussie as passeReussie,
StatEquipe.possesion as possesion,
StatEquipe.AeriensGagnee as AeriensGagnee,
StatEquipe.Note as Note,
onglet.nom_onglet as onglet,
Sous_Onglet.nom_SousOnglet as Sous_Onglet
from StatEquipe
join onglet
on StatEquipe.idOnglet=onglet.idOnglet
join Sous_Onglet
on StatEquipe.id_SousOnglet=Sous_Onglet.id_SousOnglet;
select * from StatistiquesEquipe;

SELECT * FROM StatistiquesEquipe where onglet='general' and Sous_Onglet='general';
SELECT * FROM StatistiquesEquipe where onglet='general' and Sous_Onglet='Domicile';
SELECT * FROM StatistiquesEquipe where onglet='general' and Sous_Onglet='Exterieur';

SELECT * FROM StatistiquesEquipe where onglet='Defence' and Sous_Onglet='general';
SELECT * FROM StatistiquesEquipe where onglet='Defence' and Sous_Onglet='Domicile';
SELECT * FROM StatistiquesEquipe where onglet='Defence' and Sous_Onglet='Exterieur';

SELECT * FROM StatistiquesEquipe where onglet='Attaque' and Sous_Onglet='general';
SELECT * FROM StatistiquesEquipe where onglet='Attaque' and Sous_Onglet='Domicile';
SELECT * FROM StatistiquesEquipe where onglet='Attaque' and Sous_Onglet='Exterieur';

-- general general
insert into StatEquipe values(null,'Bayern Munich','Bundesliga',43,19.9,17,1,88.8,62.9,12.8,7.16,1,1);
insert into StatEquipe values(null,'Paris Saint-Germain','Ligue1',34,16.6,17,0,90.6,68.0,7,7.04,1,1);
insert into StatEquipe values(null,'Bayer Leverkusen','Bundesliga',37,16.3,23,0,88.9,60.6,9.6,6.98,1,1);
insert into StatEquipe values(null,'Manchester City','Premier League',33,16.5,23,2,90.2,62.3,7.9,6.96,1,1);
insert into StatEquipe values(null,'Real Madrid','LaLiga',3,17.5,26,1,89.7,57.3,8.4,6.93,1,1);
insert into StatEquipe values(null,'Inter','Serie A',30,16.3,17,0,86.455.6,15.2,6.89,1,1);
insert into StatEquipe values(null,'VfB Stuttgart','Bundesliga',31,15.9,16,0,85.7,57.7,15.9,6.86,1,1);
insert into StatEquipe values(null,'Atletico Madrid','LaLiga',3,13.5,25,1,84.7,52.8,12.7,6.84,1,1);
insert into StatEquipe values(null,'Barcelonav','LaLiga',27,15.4,33,1,89.2,66.7,12.1,6.81,,1,1);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,10.8,6.8,1,1);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,8.8,6.80,1,1);
insert into StatEquipe values(null,'Arsenal','Premier League',27,14.5,17,2,87.2,61.1,13.3,6.79,1,1);
insert into StatEquipe values(null,'Liverpool','Premier League',26,17.3,23,4,86.1,57.1,14.4,6.79,1,1);
insert into StatEquipe values(null,'Monaco','Ligue1',27,14.7,31,0,83.4,55.2,11.2,6.78,1,1);
insert into StatEquipe values(null,'RB Leipzig','Bundesliga',29,14.5,19,0,84.4,57.9,12.8,6.78,1,1);
insert into StatEquipe values(null,'Napoli','Serie A',26,17.9,23,1,86.8,58.5,11.1,6.77,1,1);
insert into StatEquipe values(null,'Aston Villa','Premier League',31,14.9,32,0,86.2,52.3,8.2,6.76,1,1);
insert into StatEquipe values(null,' Juventus','Serie A',20,13.8,35,0,83.5,47.5,13.6,6.76,1,1);
insert into StatEquipe values(null,'Lille','Ligue1',17,12.5,28,1,85.4,57.1,11.7,6.76,1,1);
insert into StatEquipe values(null,'Girona','LaLiga',32,13.7,32,0,87.0,56.8,11.8,6.75,1,1);  

-- general domicile

insert into StatEquipe values(null,'Bayern Munich','Bundesliga',43,19.9,17,1,88.8,62.9,12.8,7.16,1,2);
insert into StatEquipe values(null,'Paris Saint-Germain','Ligue1',34,16.6,17,0,90.6,68.0,7,7.04,1,2);
insert into StatEquipe values(null,'Bayer Leverkusen','Bundesliga',37,16.3,23,0,88.9,60.6,9.6,6.98,1,2);
insert into StatEquipe values(null,'Manchester City','Premier League',33,16.5,23,2,90.2,62.3,7.9,6.96,1,2);
insert into StatEquipe values(null,'Real Madrid','LaLiga',3,17.5,26,1,89.7,57.3,8.4,6.93,1,2);
insert into StatEquipe values(null,'Inter','Serie A',30,16.3,17,0,86.455.6,15.2,6.89,1,2);
insert into StatEquipe values(null,'VfB Stuttgart','Bundesliga',31,15.9,16,0,85.7,57.7,15.9,6.86,1,2);
insert into StatEquipe values(null,'Atletico Madrid','LaLiga',3,13.5,25,1,84.7,52.8,12.7,6.84,1,2);
insert into StatEquipe values(null,'Barcelonav','LaLiga',27,15.4,33,1,89.2,66.7,12.1,6.81,,1,2);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,10.8,6.8,1,2);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,8.8,6.80,1,2);
insert into StatEquipe values(null,'Arsenal','Premier League',27,14.5,17,2,87.2,61.1,13.3,6.79,1,2);
insert into StatEquipe values(null,'Liverpool','Premier League',26,17.3,23,4,86.1,57.1,14.4,6.79,1,2);
insert into StatEquipe values(null,'Monaco','Ligue1',27,14.7,31,0,83.4,55.2,11.2,6.78,1,2);
insert into StatEquipe values(null,'RB Leipzig','Bundesliga',29,14.5,19,0,84.4,57.9,12.8,6.78,1,2);
insert into StatEquipe values(null,'Napoli','Serie A',26,17.9,23,1,86.8,58.5,11.1,6.77,1,2);
insert into StatEquipe values(null,'Aston Villa','Premier League',31,14.9,32,0,86.2,52.3,8.2,6.76,1,2);
insert into StatEquipe values(null,' Juventus','Serie A',20,13.8,35,0,83.5,47.5,13.6,6.76,1,2);
insert into StatEquipe values(null,'Lille','Ligue1',17,12.5,28,1,85.4,57.1,11.7,6.76,1,2);
insert into StatEquipe values(null,'Girona','LaLiga',32,13.7,32,0,87.0,56.8,11.8,6.75,1,2);  

-- general Exterieur

insert into StatEquipe values(null,'Bayern Munich','Bundesliga',43,19.9,17,1,88.8,62.9,12.8,7.16,1,3);
insert into StatEquipe values(null,'Paris Saint-Germain','Ligue1',34,16.6,17,0,90.6,68.0,7,7.04,1,3);
insert into StatEquipe values(null,'Bayer Leverkusen','Bundesliga',37,16.3,23,0,88.9,60.6,9.6,6.98,1,3);
insert into StatEquipe values(null,'Manchester City','Premier League',33,16.5,23,2,90.2,62.3,7.9,6.96,1,3);
insert into StatEquipe values(null,'Real Madrid','LaLiga',3,17.5,26,1,89.7,57.3,8.4,6.93,1,3);
insert into StatEquipe values(null,'Inter','Serie A',30,16.3,17,0,86.455.6,15.2,6.89,1,3);
insert into StatEquipe values(null,'VfB Stuttgart','Bundesliga',31,15.9,16,0,85.7,57.7,15.9,6.86,1,3);
insert into StatEquipe values(null,'Atletico Madrid','LaLiga',3,13.5,25,1,84.7,52.8,12.7,6.84,1,3);
insert into StatEquipe values(null,'Barcelonav','LaLiga',27,15.4,33,1,89.2,66.7,12.1,6.81,,1,3);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,10.8,6.8,1,3);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,8.8,6.80,1,3);
insert into StatEquipe values(null,'Arsenal','Premier League',27,14.5,17,2,87.2,61.1,13.3,6.79,1,3);
insert into StatEquipe values(null,'Liverpool','Premier League',26,17.3,23,4,86.1,57.1,14.4,6.79,1,3);
insert into StatEquipe values(null,'Monaco','Ligue1',27,14.7,31,0,83.4,55.2,11.2,6.78,1,3);
insert into StatEquipe values(null,'RB Leipzig','Bundesliga',29,14.5,19,0,84.4,57.9,12.8,6.78,1,3);
insert into StatEquipe values(null,'Napoli','Serie A',26,17.9,23,1,86.8,58.5,11.1,6.77,1,3);
insert into StatEquipe values(null,'Aston Villa','Premier League',31,14.9,32,0,86.2,52.3,8.2,6.76,1,3);
insert into StatEquipe values(null,' Juventus','Serie A',20,13.8,35,0,83.5,47.5,13.6,6.76,1,3);
insert into StatEquipe values(null,'Lille','Ligue1',17,12.5,28,1,85.4,57.1,11.7,6.76,1,3);
insert into StatEquipe values(null,'Girona','LaLiga',32,13.7,32,0,87.0,56.8,11.8,6.75,1,3);

-- defence general

insert into StatEquipe values(null,'Bayern Munich','Bundesliga',43,19.9,17,1,88.8,62.9,12.8,7.16,2,1);
insert into StatEquipe values(null,'Paris Saint-Germain','Ligue1',34,16.6,17,0,90.6,68.0,7,7.04,2,1);
insert into StatEquipe values(null,'Bayer Leverkusen','Bundesliga',37,16.3,23,0,88.9,60.6,9.6,6.98,2,1);
insert into StatEquipe values(null,'Manchester City','Premier League',33,16.5,23,2,90.2,62.3,7.9,6.96,2,1);
insert into StatEquipe values(null,'Real Madrid','LaLiga',3,17.5,26,1,89.7,57.3,8.4,6.93,2,1);
insert into StatEquipe values(null,'Inter','Serie A',30,16.3,17,0,86.455.6,15.2,6.89,2,1);
insert into StatEquipe values(null,'VfB Stuttgart','Bundesliga',31,15.9,16,0,85.7,57.7,15.9,6.86,2,1);
insert into StatEquipe values(null,'Atletico Madrid','LaLiga',3,13.5,25,1,84.7,52.8,12.7,6.84,2,1);
insert into StatEquipe values(null,'Barcelonav','LaLiga',27,15.4,33,1,89.2,66.7,12.1,6.81,,2,1);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,10.8,6.8,2,1);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,8.8,6.80,2,1);
insert into StatEquipe values(null,'Arsenal','Premier League',27,14.5,17,2,87.2,61.1,13.3,6.79,2,1);
insert into StatEquipe values(null,'Liverpool','Premier League',26,17.3,23,4,86.1,57.1,14.4,6.79,2,1);
insert into StatEquipe values(null,'Monaco','Ligue1',27,14.7,31,0,83.4,55.2,11.2,6.78,2,1);
insert into StatEquipe values(null,'RB Leipzig','Bundesliga',29,14.5,19,0,84.4,57.9,12.8,6.78,2,1);
insert into StatEquipe values(null,'Napoli','Serie A',26,17.9,23,1,86.8,58.5,11.1,6.77,2,1);
insert into StatEquipe values(null,'Aston Villa','Premier League',31,14.9,32,0,86.2,52.3,8.2,6.76,2,1);
insert into StatEquipe values(null,' Juventus','Serie A',20,13.8,35,0,83.5,47.5,13.6,6.76,2,1);
insert into StatEquipe values(null,'Lille','Ligue1',17,12.5,28,1,85.4,57.1,11.7,6.76,2,1);
insert into StatEquipe values(null,'Girona','LaLiga',32,13.7,32,0,87.0,56.8,11.8,6.75,2,1);

-- defence / domicile

insert into StatEquipe values(null,'Bayern Munich','Bundesliga',43,19.9,17,1,88.8,62.9,12.8,7.16,2,2);
insert into StatEquipe values(null,'Paris Saint-Germain','Ligue1',34,16.6,17,0,90.6,68.0,7,7.04,2,2);
insert into StatEquipe values(null,'Bayer Leverkusen','Bundesliga',37,16.3,23,0,88.9,60.6,9.6,6.98,2,2);
insert into StatEquipe values(null,'Manchester City','Premier League',33,16.5,23,2,90.2,62.3,7.9,6.96,2,2);
insert into StatEquipe values(null,'Real Madrid','LaLiga',3,17.5,26,1,89.7,57.3,8.4,6.93,2,2);
insert into StatEquipe values(null,'Inter','Serie A',30,16.3,17,0,86.455.6,15.2,6.89,2,2);
insert into StatEquipe values(null,'VfB Stuttgart','Bundesliga',31,15.9,16,0,85.7,57.7,15.9,6.86,2,2);
insert into StatEquipe values(null,'Atletico Madrid','LaLiga',3,13.5,25,1,84.7,52.8,12.7,6.84,2,2);
insert into StatEquipe values(null,'Barcelonav','LaLiga',27,15.4,33,1,89.2,66.7,12.1,6.81,,2,2);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,10.8,6.8,2,2);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,8.8,6.80,2,2);
insert into StatEquipe values(null,'Arsenal','Premier League',27,14.5,17,2,87.2,61.1,13.3,6.79,2,2);
insert into StatEquipe values(null,'Liverpool','Premier League',26,17.3,23,4,86.1,57.1,14.4,6.79,2,2);
insert into StatEquipe values(null,'Monaco','Ligue1',27,14.7,31,0,83.4,55.2,11.2,6.78,2,2);
insert into StatEquipe values(null,'RB Leipzig','Bundesliga',29,14.5,19,0,84.4,57.9,12.8,6.78,2,2);
insert into StatEquipe values(null,'Napoli','Serie A',26,17.9,23,1,86.8,58.5,11.1,6.77,2,2);
insert into StatEquipe values(null,'Aston Villa','Premier League',31,14.9,32,0,86.2,52.3,8.2,6.76,2,2);
insert into StatEquipe values(null,' Juventus','Serie A',20,13.8,35,0,83.5,47.5,13.6,6.76,2,2);
insert into StatEquipe values(null,'Lille','Ligue1',17,12.5,28,1,85.4,57.1,11.7,6.76,2,2);
insert into StatEquipe values(null,'Girona','LaLiga',32,13.7,32,0,87.0,56.8,11.8,6.75,2,2);

-- defence / Exterieur

insert into StatEquipe values(null,'Bayern Munich','Bundesliga',43,19.9,17,1,88.8,62.9,12.8,7.16,2,3);
insert into StatEquipe values(null,'Paris Saint-Germain','Ligue1',34,16.6,17,0,90.6,68.0,7,7.04,2,3);
insert into StatEquipe values(null,'Bayer Leverkusen','Bundesliga',37,16.3,23,0,88.9,60.6,9.6,6.98,2,3);
insert into StatEquipe values(null,'Manchester City','Premier League',33,16.5,23,2,90.2,62.3,7.9,6.96,2,3);
insert into StatEquipe values(null,'Real Madrid','LaLiga',3,17.5,26,1,89.7,57.3,8.4,6.93,2,3);
insert into StatEquipe values(null,'Inter','Serie A',30,16.3,17,0,86.455.6,15.2,6.89,2,3);
insert into StatEquipe values(null,'VfB Stuttgart','Bundesliga',31,15.9,16,0,85.7,57.7,15.9,6.86,2,3);
insert into StatEquipe values(null,'Atletico Madrid','LaLiga',3,13.5,25,1,84.7,52.8,12.7,6.84,2,3);
insert into StatEquipe values(null,'Barcelonav','LaLiga',27,15.4,33,1,89.2,66.7,12.1,6.81,,2,3);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,10.8,6.8,2,3);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,8.8,6.80,2,3);
insert into StatEquipe values(null,'Arsenal','Premier League',27,14.5,17,2,87.2,61.1,13.3,6.79,2,3);
insert into StatEquipe values(null,'Liverpool','Premier League',26,17.3,23,4,86.1,57.1,14.4,6.79,2,3);
insert into StatEquipe values(null,'Monaco','Ligue1',27,14.7,31,0,83.4,55.2,11.2,6.78,2,3);
insert into StatEquipe values(null,'RB Leipzig','Bundesliga',29,14.5,19,0,84.4,57.9,12.8,6.78,2,3);
insert into StatEquipe values(null,'Napoli','Serie A',26,17.9,23,1,86.8,58.5,11.1,6.77,2,3);
insert into StatEquipe values(null,'Aston Villa','Premier League',31,14.9,32,0,86.2,52.3,8.2,6.76,2,3);
insert into StatEquipe values(null,' Juventus','Serie A',20,13.8,35,0,83.5,47.5,13.6,6.76,2,3);
insert into StatEquipe values(null,'Lille','Ligue1',17,12.5,28,1,85.4,57.1,11.7,6.76,2,3);
insert into StatEquipe values(null,'Girona','LaLiga',32,13.7,32,0,87.0,56.8,11.8,6.75,2,3);

-- Attaque / general 

insert into StatEquipe values(null,'Bayern Munich','Bundesliga',43,19.9,17,1,88.8,62.9,12.8,7.16,3,1);
insert into StatEquipe values(null,'Paris Saint-Germain','Ligue1',34,16.6,17,0,90.6,68.0,7,7.04,3,1);
insert into StatEquipe values(null,'Bayer Leverkusen','Bundesliga',37,16.3,23,0,88.9,60.6,9.6,6.98,3,1);
insert into StatEquipe values(null,'Manchester City','Premier League',33,16.5,23,2,90.2,62.3,7.9,6.96,3,1);
insert into StatEquipe values(null,'Real Madrid','LaLiga',3,17.5,26,1,89.7,57.3,8.4,6.93,3,1);
insert into StatEquipe values(null,'Inter','Serie A',30,16.3,17,0,86.455.6,15.2,6.89,3,1);
insert into StatEquipe values(null,'VfB Stuttgart','Bundesliga',31,15.9,16,0,85.7,57.7,15.9,6.86,3,1);
insert into StatEquipe values(null,'Atletico Madrid','LaLiga',3,13.5,25,1,84.7,52.8,12.7,6.84,3,1);
insert into StatEquipe values(null,'Barcelonav','LaLiga',27,15.4,33,1,89.2,66.7,12.1,6.81,,3,1);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,10.8,6.8,3,1);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,8.8,6.80,3,1);
insert into StatEquipe values(null,'Arsenal','Premier League',27,14.5,17,2,87.2,61.1,13.3,6.79,3,1);
insert into StatEquipe values(null,'Liverpool','Premier League',26,17.3,23,4,86.1,57.1,14.4,6.79,3,1);
insert into StatEquipe values(null,'Monaco','Ligue1',27,14.7,31,0,83.4,55.2,11.2,6.78,3,1);
insert into StatEquipe values(null,'RB Leipzig','Bundesliga',29,14.5,19,0,84.4,57.9,12.8,6.78,3,1);
insert into StatEquipe values(null,'Napoli','Serie A',26,17.9,23,1,86.8,58.5,11.1,6.77,3,1);
insert into StatEquipe values(null,'Aston Villa','Premier League',31,14.9,32,0,86.2,52.3,8.2,6.76,3,1);
insert into StatEquipe values(null,' Juventus','Serie A',20,13.8,35,0,83.5,47.5,13.6,6.76,3,1);
insert into StatEquipe values(null,'Lille','Ligue1',17,12.5,28,1,85.4,57.1,11.7,6.76,3,1);
insert into StatEquipe values(null,'Girona','LaLiga',32,13.7,32,0,87.0,56.8,11.8,6.75,3,1);

-- attaque / Domicile

insert into StatEquipe values(null,'Bayern Munich','Bundesliga',43,19.9,17,1,88.8,62.9,12.8,7.16,3,2);
insert into StatEquipe values(null,'Paris Saint-Germain','Ligue1',34,16.6,17,0,90.6,68.0,7,7.04,3,2);
insert into StatEquipe values(null,'Bayer Leverkusen','Bundesliga',37,16.3,23,0,88.9,60.6,9.6,6.98,3,2);
insert into StatEquipe values(null,'Manchester City','Premier League',33,16.5,23,2,90.2,62.3,7.9,6.96,3,2);
insert into StatEquipe values(null,'Real Madrid','LaLiga',3,17.5,26,1,89.7,57.3,8.4,6.93,3,2);
insert into StatEquipe values(null,'Inter','Serie A',30,16.3,17,0,86.455.6,15.2,6.89,3,2);
insert into StatEquipe values(null,'VfB Stuttgart','Bundesliga',31,15.9,16,0,85.7,57.7,15.9,6.86,3,2);
insert into StatEquipe values(null,'Atletico Madrid','LaLiga',3,13.5,25,1,84.7,52.8,12.7,6.84,3,2);
insert into StatEquipe values(null,'Barcelonav','LaLiga',27,15.4,33,1,89.2,66.7,12.1,6.81,,3,2);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,10.8,6.8,3,2);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,8.8,6.80,3,2);
insert into StatEquipe values(null,'Arsenal','Premier League',27,14.5,17,2,87.2,61.1,13.3,6.79,3,2);
insert into StatEquipe values(null,'Liverpool','Premier League',26,17.3,23,4,86.1,57.1,14.4,6.79,3,2);
insert into StatEquipe values(null,'Monaco','Ligue1',27,14.7,31,0,83.4,55.2,11.2,6.78,3,2);
insert into StatEquipe values(null,'RB Leipzig','Bundesliga',29,14.5,19,0,84.4,57.9,12.8,6.78,3,2);
insert into StatEquipe values(null,'Napoli','Serie A',26,17.9,23,1,86.8,58.5,11.1,6.77,3,2);
insert into StatEquipe values(null,'Aston Villa','Premier League',31,14.9,32,0,86.2,52.3,8.2,6.76,3,2);
insert into StatEquipe values(null,' Juventus','Serie A',20,13.8,35,0,83.5,47.5,13.6,6.76,3,2);
insert into StatEquipe values(null,'Lille','Ligue1',17,12.5,28,1,85.4,57.1,11.7,6.76,3,2);
insert into StatEquipe values(null,'Girona','LaLiga',32,13.7,32,0,87.0,56.8,11.8,6.75,3,2);

-- Attaque / Exterieur

insert into StatEquipe values(null,'Bayern Munich','Bundesliga',43,19.9,17,1,88.8,62.9,12.8,7.16,3,3);
insert into StatEquipe values(null,'Paris Saint-Germain','Ligue1',34,16.6,17,0,90.6,68.0,7,7.04,3,3);
insert into StatEquipe values(null,'Bayer Leverkusen','Bundesliga',37,16.3,23,0,88.9,60.6,9.6,6.98,3,3);
insert into StatEquipe values(null,'Manchester City','Premier League',33,16.5,23,2,90.2,62.3,7.9,6.96,3,3);
insert into StatEquipe values(null,'Real Madrid','LaLiga',3,17.5,26,1,89.7,57.3,8.4,6.93,3,3);
insert into StatEquipe values(null,'Inter','Serie A',30,16.3,17,0,86.455.6,15.2,6.89,3,3);
insert into StatEquipe values(null,'VfB Stuttgart','Bundesliga',31,15.9,16,0,85.7,57.7,15.9,6.86,3,3);
insert into StatEquipe values(null,'Atletico Madrid','LaLiga',3,13.5,25,1,84.7,52.8,12.7,6.84,3,3);
insert into StatEquipe values(null,'Barcelonav','LaLiga',27,15.4,33,1,89.2,66.7,12.1,6.81,,3,3);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,10.8,6.8,3,3);
insert into StatEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,84.4,53.3,8.8,6.80,3,3);
insert into StatEquipe values(null,'Arsenal','Premier League',27,14.5,17,2,87.2,61.1,13.3,6.79,3,3);
insert into StatEquipe values(null,'Liverpool','Premier League',26,17.3,23,4,86.1,57.1,14.4,6.79,3,3);
insert into StatEquipe values(null,'Monaco','Ligue1',27,14.7,31,0,83.4,55.2,11.2,6.78,3,3);
insert into StatEquipe values(null,'RB Leipzig','Bundesliga',29,14.5,19,0,84.4,57.9,12.8,6.78,3,3);
insert into StatEquipe values(null,'Napoli','Serie A',26,17.9,23,1,86.8,58.5,11.1,6.77,3,3);
insert into StatEquipe values(null,'Aston Villa','Premier League',31,14.9,32,0,86.2,52.3,8.2,6.76,3,3);
insert into StatEquipe values(null,' Juventus','Serie A',20,13.8,35,0,83.5,47.5,13.6,6.76,3,3);
insert into StatEquipe values(null,'Lille','Ligue1',17,12.5,28,1,85.4,57.1,11.7,6.76,3,3);
insert into StatEquipe values(null,'Girona','LaLiga',32,13.7,32,0,87.0,56.8,11.8,6.75,3,3);

create table StatJoueur (
    idStatJoueur int primary key auto_increment,
    IdJoueur int,
    Apps varchar(30),
    Mins int,
    Buts int,
    pDecisies int,
    jau int,
    Rou int,
    TpM DECIMAL (10,3),
    PR DECIMAL (10,6),
    AerensGagnes DECIMAL(10,4), 
    HdM int,
    Note DECIMAL(5,3),
    idOnglet int,
    id_SousOnglet int
);

create table Joueur(
    IdJoueur int primary key auto_increment,
    Nom_Joueur varchar(30),
    Equipe varchar(30)
);
insert into joueur values(null,'Leroy Sané','Bayern, 27, M(CGD),AC');
insert into joueur values(null,'Harry Kane','Bayern, 30, MO(C),AC');
insert into joueur values(null,'Serhou Guirassy','Stuttgart, 27, MO(G),AC');
insert into joueur values(null,'Jude Bellingham','Real Madrid, 20, M(CGD');
insert into joueur values(null,'Kylian Mbappé','PSG, 24, MO(CGD),AC');
insert into joueur values(null,'Victor Boniface','Leverkusen, 22, AC');
insert into joueur values(null,'Matías Soulé','Frosinone, 20, MO(D)');
insert into joueur values(null,'Álex Grimaldo','Leverkusen, 28, D(G),M(G)');
insert into joueur values(null,'Jérémy Doku','Man City, 21, M(GD)');
insert into joueur values(null,'Lautaro Martínez','Inter, 26, AC');
insert into joueur values(null,'Kingsley Coman','Bayern, 27, M(GD),AC');
insert into joueur values(null,'Paulo Dybala','Roma, 30, MO(CD),AC');
insert into joueur values(null,'Virgil van Dijk','Liverpool, 32, D(C)');
insert into joueur values(null,'Jonas Hofmann','Leverkusen, 31, D(),M(CGD)');
insert into joueur values(null,'Rodri','Man City, 27, D(C),MDC');
insert into joueur values(null,'James Maddison','Tottenham, 27, MO(CGD)');
insert into joueur values(null,'Alexandre Oukidja','Metz, 35, GB');
insert into joueur values(null,'Jarrod Bowen','West Ham, 26, MO(CGD)');


-- general / general

insert into StatJoueur values(null,1,'12',1046,8,6,1,null,3.1,83.2,0.1,2,8.46,1,1);
insert into StatJoueur values(null,2,'12',1052,18,5,1,null,4.3,72.6,1,4,8.29,1,1);
insert into StatJoueur values(null,3,'8(2)',697,15,1,null,null,3.4,79,2.7,4,8.16,1,1);
insert into StatJoueur values(null,4,'12',1025,11,2,1,null,2.5,89.8,0.8,5,8.07,1,1);
insert into StatJoueur values(null,5,'11(1)',971,14,2,2,null,4.9,86.9,null,4,8.04,1,1);
insert into StatJoueur values(null,6,'12',1028,7,5,2,null,5.1,71.3,1.6,2,7.87,1,1);
insert into StatJoueur values(null,7,'11',949,6,1,2,null,2.5,80.5,0.4,3,7.83,1,1);
insert into StatJoueur values(null,8,'12',1075,7,4,1,null,1.8,88.2,0.3,4,7.77,1,1);
insert into StatJoueur values(null,9,'8(2)',646,2,5,2,null,1.8,84.5,0.1,4,7.71,1,1);
insert into StatJoueur values(null,10,'12(1)',1075,13,1,2,null,3.4,77.7,0.7,3,7.69,1,1);

-- general / Domicil

insert into StatJoueur values(null,3,'4(1)',366,10,1,null,null,4,81.4,1.6,3,8.81,1,2);
insert into StatJoueur values(null,1,'6',520,4,3,null,null,3.3,86.1,0.2,1,8.70,1,2);
insert into StatJoueur values(null,2,'6',518,11,4,null,null,5.3,71.1,0.8,3,8.65,1,2);
insert into StatJoueur values(null,11,'4',310,2,2,null,null,2.8,88.7,null,1,8.40,1,2);
insert into StatJoueur values(null,6,'6',522,5,2,1,null,5.5,74.5,1.8,2,8.38,1,2);
insert into StatJoueur values(null,7,'5',448,3,1,null,null,2.8,81.7,0.4,2,8.30);
insert into StatJoueur values(null,9,'5',382,1,5,null,null,1.6,89.2,null,3,8.24,1,2);
insert into StatJoueur values(null,12,'4',327,3,4,1,null,2.8,81.6,null,2,8.16,1,2);
insert into StatJoueur values(null,13,'5',450,null,1,null,null,1.4,92,8,1,8.08,1,2);
insert into StatJoueur values(null,14,'6',523,4,3,null,null,2.3,85.1,0.2,2,8.02,1,2);

-- general / Exterieur

insert into StatJoueur values(null,1,'5',450,3,1,2,null,3.4,94.7,1.6,2,8.26,1,3);
insert into StatJoueur values(null,4,'8',683,8,2,1,null,2.6,90.4,1.1,5,8.25,1,3);
insert into StatJoueur values(null,5,'5(1)',,489,8,null,2,null,6,87,null,3,8.23,1,3);
insert into StatJoueur values(null,1,'6',526,4,3,1,null,2.8,79.8,null,1,8.22,1,3);
insert into StatJoueur values(null,8,'6',540,6,1,1,null,1.8,87.5,0.2,3,8.06,1,3);
insert into StatJoueur values(null,2,'6',534,7,1,1,null,3.2,74.5,1.2,1,7.94,1,3);
insert into StatJoueur values(null,16,'6',492,2,5,1,null,2.7,85.9,0.2,1,7.83,1,3);
insert into StatJoueur values(null,10,'5(1)',455,8,null,null,null,3.5,77,0.7,1,7.771,3);
insert into StatJoueur values(null,17,'7',558,null,null,null,null,null,47.1,0.3,2,7.73,1,3);
insert into StatJoueur values(null,18,'6',540,6,1,1,null,3.2,75.6,1.8,1,7.70,1,3);

--  Defence / General

insert into StatJoueur values(null,1,'12',1046,8,6,1,null,3.1,83.2,0.1,2,8.46,2,1);
insert into StatJoueur values(null,2,'12',1052,18,5,1,null,4.3,72.6,1,4,8.29,2,1);
insert into StatJoueur values(null,3,'8(2)',697,15,1,null,null,3.4,79,2.7,4,8.16,2,1);
insert into StatJoueur values(null,4,'12',1025,11,2,1,null,2.5,89.8,0.8,5,8.07,2,1);
insert into StatJoueur values(null,5,'11(1)',971,14,2,2,null,4.9,86.9,null,4,8.04,2,1);
insert into StatJoueur values(null,6,'12',1028,7,5,2,null,5.1,71.3,1.6,2,7.87,2,1);
insert into StatJoueur values(null,7,'11',949,6,1,2,null,2.5,80.5,0.4,3,7.83,2,1);
insert into StatJoueur values(null,8,'12',1075,7,4,1,null,1.8,88.2,0.3,4,7.77,2,1);
insert into StatJoueur values(null,9,'8(2)',646,2,5,2,null,1.8,84.5,0.1,4,7.71,2,1);
insert into StatJoueur values(null,10,'12(1)',1075,13,1,2,null,3.4,77.7,0.7,3,7.69,2,1);


-- Defence / domicil

insert into StatJoueur values(null,3,'4(1)',366,10,1,null,null,4,81.4,1.6,3,8.81,2,2);
insert into StatJoueur values(null,1,'6',520,4,3,null,null,3.3,86.1,0.2,1,8.70,2,2);
insert into StatJoueur values(null,2,'6',518,11,4,null,null,5.3,71.1,0.8,3,8.65,2,2);
insert into StatJoueur values(null,11,'4',310,2,2,null,null,2.8,88.7,null,1,8.40,2,2);
insert into StatJoueur values(null,6,'6',522,5,2,1,null,5.5,74.5,1.8,2,8.38,2,2);
insert into StatJoueur values(null,7,'5',448,3,1,null,null,2.8,81.7,0.4,2,8.30);
insert into StatJoueur values(null,9,'5',382,1,5,null,null,1.6,89.2,null,3,8.24,2,2);
insert into StatJoueur values(null,12,'4',327,3,4,1,null,2.8,81.6,null,2,8.16,2,2);
insert into StatJoueur values(null,13,'5',450,null,1,null,null,1.4,92,8,1,8.08,2,2);
insert into StatJoueur values(null,14,'6',523,4,3,null,null,2.3,85.1,0.2,2,8.02,2,2);


-- Defence / Exterieur

insert into StatJoueur values(null,1,'5',450,3,1,2,null,3.4,94.7,1.6,2,8.26,2,3);
insert into StatJoueur values(null,4,'8',683,8,2,1,null,2.6,90.4,1.1,5,8.25,2,3);
insert into StatJoueur values(null,5,'5(1)',,489,8,null,2,null,6,87,null,3,8.23,2,3);
insert into StatJoueur values(null,1,'6',526,4,3,1,null,2.8,79.8,null,1,8.22,2,3);
insert into StatJoueur values(null,8,'6',540,6,1,1,null,1.8,87.5,0.2,3,8.06,2,3);
insert into StatJoueur values(null,2,'6',534,7,1,1,null,3.2,74.5,1.2,1,7.94,2,3);
insert into StatJoueur values(null,16,'6',492,2,5,1,null,2.7,85.9,0.2,1,7.83,2,3);
insert into StatJoueur values(null,10,'5(1)',455,8,null,null,null,3.5,77,0.7,1,7.772,3);
insert into StatJoueur values(null,17,'7',558,null,null,null,null,null,47.1,0.3,2,7.73,2,3);
insert into StatJoueur values(null,18,'6',540,6,1,1,null,3.2,75.6,1.8,1,7.70,2,3);

-- Attaque / General

insert into StatJoueur values(null,1,'12',1046,8,6,1,null,3.1,83.2,0.1,2,8.46,3,1);
insert into StatJoueur values(null,2,'12',1052,18,5,1,null,4.3,72.6,1,4,8.29,3,1);
insert into StatJoueur values(null,3,'8(2)',697,15,1,null,null,3.4,79,2.7,4,8.16,3,1);
insert into StatJoueur values(null,4,'12',1025,11,2,1,null,2.5,89.8,0.8,5,8.07,3,1);
insert into StatJoueur values(null,5,'11(1)',971,14,2,2,null,4.9,86.9,null,4,8.04,3,1);
insert into StatJoueur values(null,6,'12',1028,7,5,2,null,5.1,71.3,1.6,2,7.87,3,1);
insert into StatJoueur values(null,7,'11',949,6,1,2,null,2.5,80.5,0.4,3,7.83,3,1);
insert into StatJoueur values(null,8,'12',1075,7,4,1,null,1.8,88.2,0.3,4,7.77,3,1);
insert into StatJoueur values(null,9,'8(2)',646,2,5,2,null,1.8,84.5,0.1,4,7.71,3,1);
insert into StatJoueur values(null,10,'12(1)',1075,13,1,2,null,3.4,77.7,0.7,3,7.69,3,1);


-- Attaque / Domicil
insert into StatJoueur values(null,3,'4(1)',366,10,1,null,null,4,81.4,1.6,3,8.81,3,2);
insert into StatJoueur values(null,1,'6',520,4,3,null,null,3.3,86.1,0.2,1,8.70,3,2);
insert into StatJoueur values(null,2,'6',518,11,4,null,null,5.3,71.1,0.8,3,8.65,3,2);
insert into StatJoueur values(null,11,'4',310,2,2,null,null,2.8,88.7,null,1,8.40,3,2);
insert into StatJoueur values(null,6,'6',522,5,2,1,null,5.5,74.5,1.8,2,8.38,3,2);
insert into StatJoueur values(null,7,'5',448,3,1,null,null,2.8,81.7,0.4,2,8.30);
insert into StatJoueur values(null,9,'5',382,1,5,null,null,1.6,89.2,null,3,8.24,3,2);
insert into StatJoueur values(null,12,'4',327,3,4,1,null,2.8,81.6,null,2,8.16,3,2);
insert into StatJoueur values(null,13,'5',450,null,1,null,null,1.4,92,8,1,8.08,3,2);
insert into StatJoueur values(null,14,'6',523,4,3,null,null,2.3,85.1,0.2,2,8.02,3,2);

-- Attaque / Exterieur

insert into StatJoueur values(null,1,'5',450,3,1,2,null,3.4,94.7,1.6,2,8.26,3,3);
insert into StatJoueur values(null,4,'8',683,8,2,1,null,2.6,90.4,1.1,5,8.25,3,3);
insert into StatJoueur values(null,5,'5(1)',,489,8,null,2,null,6,87,null,3,8.23,3,3);
insert into StatJoueur values(null,1,'6',526,4,3,1,null,2.8,79.8,null,1,8.22,3,3);
insert into StatJoueur values(null,8,'6',540,6,1,1,null,1.8,87.5,0.2,3,8.06,3,3);
insert into StatJoueur values(null,2,'6',534,7,1,1,null,3.2,74.5,1.2,1,7.94,3,3);
insert into StatJoueur values(null,16,'6',492,2,5,1,null,2.7,85.9,0.2,1,7.83,3,3);
insert into StatJoueur values(null,10,'5(1)',455,8,null,null,null,3.5,77,0.7,1,7.773,3);
insert into StatJoueur values(null,17,'7',558,null,null,null,null,null,47.1,0.3,2,7.73,3,3);
insert into StatJoueur values(null,18,'6',540,6,1,1,null,3.2,75.6,1.8,1,7.70,3,3);

