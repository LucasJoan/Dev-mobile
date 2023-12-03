create database StatFoot;
use StatFoot;

create table Sous_Onglet(
    id_SousOnglet int primary key auto_increment,
    nom_SousOnglet varchar(10)
);
insert into Sous_Onglet values(null,'General');
insert into Sous_Onglet values(null,'Domicile');
insert into Sous_Onglet values(null,'Exterieur');

create table statistique(
    Id_statistique int primary key auto_increment,
    nom_statistique varchar(20)
);

insert into statistique values(null,'Equipes');
insert into statistique values(null,'joueurs');


create table generalEquipe(
    id_generalEquipeEquipe int primary key auto_increment,
    Équipe varchar(30),
    Compétition varchar(5),
    Buts int,
    Tirspm DECIMAL(10,2),
    Discipline1 int,
    Discipline2 int,
    Possession DECIMAL(10,2),
    PassesRéussies DECIMAL(10,2),
    AériensGagnés DECIMAL(10,2),
    Note DECIMAL(10,2),
    id_SousOnglet int ,
    Id_statistique int,
    FOREIGN KEY (id_SousOnglet) REFERENCES Sous_Onglet(id_SousOnglet),
    FOREIGN KEY (Id_statistique) REFERENCES Statistique(Id_statistique)
);

-- - generalEquipe

insert into generalEquipe values(null,'Bayern Munich','Bundesliga',43,19.9,17,1,62.9,88.8,12.8,7.16,1,1);
insert into generalEquipe values(null,'Paris Saint-Germain','Ligue 1',34,16.6,17,0,68.0,90.6,7,7.04,1,1);
insert into generalEquipe values(null,'Bayer Leverkusen','Bundesliga',37,16.3,23,0,60.6,88.9,9.6,6.98,1,1);
insert into generalEquipe values(null,'Manchester City','Premier League',33,16.5,23,2,62.3,90.2,7.9,6.96,1,1);
insert into generalEquipe values(null,'Real Madrid','LaLiga',31,17.5,26,1,57.3,89.7,8.4,6.93,1,1);
insert into generalEquipe values(null,'Inter','Serie A',30,16.3,17,0,55.6,86.4,15.2,6.89,1,1);
insert into generalEquipe values(null,'VfB Stuttgart','Bundesliga',31,15.9,16,0,57.7,85.7,15.9,6.86,1,1);
insert into generalEquipe values(null,'Atletico Madrid','LaLiga',30,13.5,25,1,52.8,84.7,12.7,6.84,1,1);
insert into generalEquipe values(null,'Barcelona','LaLiga',27,15.4,33,1,66.7,89.2,12.1,6.81,1,1);
insert into generalEquipe values(null,'Newcastle','Premier League',31,13.2,37,0,53.3,84.4,10.8,6.80,1,1);
insert into generalEquipe values(null,'Tottenham','Premier League',25,16.2,34,3,60.3,88.0,8.8,6.80,1,1);
insert into generalEquipe values(null,'Liverpool','Premier League',28,17.3,23,4,57.1,86.1,14.4,6.79,1,1);
insert into generalEquipe values(null,'RB Leipzig','Bundesliga',31,15.2,21,0,58.9,84.8,12.6,6.79,1,1);
insert into generalEquipe values(null,'Arsenal','Premier League',29,14.9,18,2,60.8,87.3,13,6.78,1,1);
insert into generalEquipe values(null,'Monaco','Ligue 1',27,14.7,31,0,55.2,83.4,11.2,6.78,1,1);
insert into generalEquipe values(null,'Napoli','Serie A',26,17.9,23,1,58.5,86.8,11.1,6.77,1,1);
insert into generalEquipe values(null,'Aston Villa','Premier League',31,14.9,32,0,52.3,86.2,8.2,6.76,1,1);  
insert into generalEquipe values(null,'Juventus','Serie A',22,14.1,37,0,46.5,83.5,13.8,6.76,1,1);
insert into generalEquipe values(null,'Lille','Ligue 1',17,12.5,28,1,57.1,85.4,11.7,6.76,1,1);
insert into generalEquipe values(null,'Nice','Ligue 1',14,13.2,25,1,52.7,87.3,11.1,6.74,1,1);

-- Domicile

insert into generalEquipe values(null,'Bayern Munich','Bundesliga',27,21.7,4,1,61.9,88.8,13,7.21,2,1);
insert into generalEquipe values(null,'Bayer Leverkusen','Bundesliga',21,19.3,8,0,65.5,90.2,11.7,7.05,2,1);
insert into generalEquipe values(null,'Aston Villa','Premier League',23,15.3,17,0,57.6,86.8,9.5,7.04,2,1);
insert into generalEquipe values(null,'Liverpool','Premier League',17,21.5,5,1,66.9,87.9,19.5,7.04,2,1);
insert into generalEquipe values(null,'Manchester City','Premier League',17,12.5,9,2,60.6,90.4,7.5,7.03,2,1);
insert into generalEquipe values(null,'VfB Stuttgart','Bundesliga',22,18.6,9,0,59.3,87.3,14.9,7.01,2,1);
insert into generalEquipe values(null,'Paris Saint-Germain','Ligue 1',20,15.6,5,0,70.8,91.0,6.4,7.01,2,1);
insert into generalEquipe values(null,'Real Madrid','LaLiga',17,18.9,13,0,61.3,89.8,8.3,6.99,2,1);
insert into generalEquipe values(null,'Newcastle','Premier League',18,14.6,20,0,54.0,83.6,12.6,6.93,2,1);
insert into generalEquipe values(null,'RB Leipzig','Bundesliga',21,16.7,11,0,58.9,86.7,9.7,6.90,2,1);
insert into generalEquipe values(null,'Barcelona','LaLiga',15,16,16,0,65.7,89.1,10,6.89,2,1);
insert into generalEquipe values(null,'Inter','Serie A',17,17.7,9,0,52.0,86.2,13,6.89,2,1);
insert into generalEquipe values(null,'Marseille','Ligue 1',7,15,5,0,52.0,85.5,10.4,6.89,2,1);
insert into generalEquipe values(null,'Monaco','Ligue 1',13,13.2,14,0,55.4,83.1,11.5,6.87,2,1);
insert into generalEquipe values(null,'Atletico Madrid','LaLiga',17,16,11,0,53.4,85.8,13.1,6.84,2,1);
insert into generalEquipe values(null,'Roma','Serie A',18,14.1,11,0,54.3,84.4,13.4,6.84,2,1);
insert into generalEquipe values(null,'Lille','Ligue 1',8,12.3,9,1,56.8,83.4,13.2,6.83,2,1);
insert into generalEquipe values(null,'Real Betis','LaLiga',10,15.3,14,0,53.0,86.0,12.3,6.82,2,1);
insert into generalEquipe values(null,'Arsenal','Premier League',20,15.5,10,1,60.9,88.3,12.6,6.81,2,1);
insert into generalEquipe values(null,'Athletic Bilbao','LaLiga',22,14.3,21,1,53.4,80.6,14.3,6.79,2,1);

-- Exterieur

insert into generalEquipe values(null,'Bayern Munich','Bundesliga',16,18.2,13,0,63.9,88.8,12.5,7.12,3,1);
insert into generalEquipe values(null,'Paris Saint-Germain','Ligue 1',14,17.8,12,0,64.9,89.9,7.7,7.07,3,1);
insert into generalEquipe values(null,'Bayer Leverkusen','Bundesliga',16,13.2,15,0,55.7,87.5,7.5,6.91,3,1);
insert into generalEquipe values(null,'Inter','Serie A',13,14.7,8,0,59.8,86.6,17.8,6.89,3,1);
insert into generalEquipe values(null,'Manchester City','Premier League',16,19.9,14,0,63.8,90.1,8.3,6.89,3,1);
insert into generalEquipe values(null,'Real Madrid','LaLiga',16,15.5,15,1,55.6,90.3,8,6.88,3,1);
insert into generalEquipe values(null,'Napoli','Serie A',16,16,17,0,57.2,85.7,11.7,6.86,3,1);
insert into generalEquipe values(null,'Tottenham','Premier League',15,14.3,19,1,62.1,88.2,9.6,6.84,3,1);
insert into generalEquipe values(null,'Atletico Madrid','LaLiga',13,10.5,14,1,52.0,83.5,12.2,6.83,3,1);
insert into generalEquipe values(null,'Juventus','Serie A',11,11.9,19,0,45.9,83.3,14,6.78,3,1);
insert into generalEquipe values(null,'Manchester United','Premier League',8,13,11,0,48.6,80.5,15.3,6.77,3,1);
insert into generalEquipe values(null,'Hoffenheim','Bundesliga',16,12.6,21,0,49.1,78.8,16.7,6.77,3,1);
insert into generalEquipe values(null,'Arsenal','Premier League',9,14,8,1,60.5,85.9,13.5,6.75,3,1);
insert into generalEquipe values(null,'Girona','LaLiga',16,13.4,19,0,54.8,85.6,13,6.75,3,1);
insert into generalEquipe values(null,'Barcelona','LaLiga',12,14.7,17,1,67.8,89.2,14.3,6.74,3,1);
insert into generalEquipe values(null,'Crystal Palace','Premier League',7,12.9,14,0,42.0,78.0,16.4,6.74,3,1);
insert into generalEquipe values(null,'Everton','Premier League',10,11.3,14,1,37.8,73.5,19.9,6.73,3,1);
insert into generalEquipe values(null,'VfB Stuttgart','Bundesliga',11,13.3,8,0,55.9,84.2,15.7,6.72,3,1);
insert into generalEquipe values(null,'Chelsea','Premier League',12,12.5,25,1,59.0,87.8,10,6.71,3,1);
insert into generalEquipe values(null,'Monaco','Ligue 1',14,16,17,0,54.9,83.6,11,6.70,3,1);

create table DefenseEquipe(
    id_DefenceEquipe int primary key auto_increment,
    Équipe VARCHAR(30),
    Compétition VARCHAR(30),
    Tirspm decimal(10,2),
    Taclespm decimal(10,2),
    Interceptionspm decimal(10,2),
    Fautespm decimal(10,2),
    Hors_jeuxpm decimal(10,2),
    Note decimal(10,2),id_SousOnglet int,
    Id_statistique int,
    FOREIGN KEY (id_SousOnglet) REFERENCES Sous_Onglet(id_SousOnglet),
    FOREIGN KEY (Id_statistique) REFERENCES Statistique(Id_statistique)
);

-- general 

insert into DefenseEquipe values(null,'Tottenham','Premier League',13.5,20.2,8.6,11.6,2.4,6.80,1,1);
insert into DefenseEquipe values(null,'Everton','Premier League',11.5,19.9,9.8,13.3,0.9,6.67,1,1);
insert into DefenseEquipe values(null,'Brest','Ligue 1',12.2,19.8,9.3,12.1,1.7,6.65,1,1);
insert into DefenseEquipe values(null,'Sevilla','LaLiga',12.4,19.6,8.5,12.9,2.7,6.66,1,1);
insert into DefenseEquipe values(null,'Monaco','Ligue 1',10.1,19.5,11.2,15.2,2.7,6.78,1,1);
insert into DefenseEquipe values(null,'Crystal Palace','Premier League',12.3,19.5,8.7,11.5,1.2,6.71,1,1);
insert into DefenseEquipe values(null,'Reims','Ligue 1',13,19.4,10.9,14.1,3.2,6.68,1,1);
insert into DefenseEquipe values(null,'Las Palmas','LaLiga',11.9,19.3,8.2,11,2.2,6.60,1,1);
insert into DefenseEquipe values(null,'Strasbourg','Ligue 1',13,19.2,10.6,13.3,0.8,6.49,1,1);
insert into DefenseEquipe values(null,'Wolves','Premier League',14.8,19.1,8.5,13.5,2,6.61,1,1);
insert into DefenseEquipe values(null,'Sheffield United','Premier League',19,19.1,9.1,11.9,1.9,6.30,1,1);
insert into DefenseEquipe values(null,'Valencia','LaLiga',9.7,19,9.7,13.3,1.3,6.56,1,1);
insert into DefenseEquipe values(null,'Paris Saint-Germain','Ligue 1',12.1,18.9,7.9,9.8,1.5,7.04,1,1);
insert into DefenseEquipe values(null,'Mallorca','LaLiga',13.6,18.6,9.2,16.5,3.7,6.49,1,1);
insert into DefenseEquipe values(null,'Bochum','Bundesliga',15.5,18.5,9.5,13.5,2.2,6.54,1,1);
insert into DefenseEquipe values(null,'Nottingham Forest','Premier League',13.7,18.5,9.4,11,2.5,6.57,1,1);
insert into DefenseEquipe values(null,'Bournemouth','Premier League',16.4,18.5,8.4,12.5,1.3,6.47,1,1);
insert into DefenseEquipe values(null,'Montpellier','Ligue 1',13.9,18.2,8.9,12.2,2.3,6.66,1,1);
insert into DefenseEquipe values(null,'Clermont Foot','Ligue 1',14.8,18.1,10.2,12.2,1.7,6.53,1,1);
insert into DefenseEquipe values(null,'Lille','Ligue 1',8.8,17.8,9.4,11.1,0.8,6.76,1,1);


-- Domicil Equipe

insert into DefenseEquipe values(null,'Lorient','Ligue 1',17.3,20.9,12.1,11.7,1.9,6.73,2,1);
insert into DefenseEquipe values(null,'Sevilla','LaLiga',11,20.7,8.3,14.4,2.9,6.71,2,1);
insert into DefenseEquipe values(null,'Everton','Premier League',9.9,20,9,11.6,2,6.57,2,1);
insert into DefenseEquipe values(null,'Roma','Serie A',8.6,20,6.9,12.9,1.9,6.84,2,1);
insert into DefenseEquipe values(null,'Lyon','Ligue 1',12.4,20,10.1,16.1,1.7,6.47,2,1);
insert into DefenseEquipe values(null,'Strasbourg','Ligue 1',13,19.9,10,13.9,0.6,6.62,2,1);
insert into DefenseEquipe values(null,'Tottenham','Premier League',13.8,19.8,8.2,11,3.2,6.76,2,1);
insert into DefenseEquipe values(null,'Mallorca','LaLiga',10.2,19.8,8.5,14,5.3,6.57,2,1);
insert into DefenseEquipe values(null,'Wolves','Premier League',15.3,19.7,9.3,15.5,2.7,6.60,2,1);
insert into DefenseEquipe values(null,'Bournemouth','Premier League',13.9,19.1,9.3,12.4,1.3,6.54,2,1);
insert into DefenseEquipe values(null,'Clermont Foot','Ligue 1',13,19,9.6,12.4,1.6,6.49,2,1);
insert into DefenseEquipe values(null,'Sheffield United','Premier League',19.9,18.9,9.1,11.9,2,6.34,2,1);
insert into DefenseEquipe values(null,'Monaco','Ligue 1',10,18.8,11.2,16.2,2.2,6.87,2,1);
insert into DefenseEquipe values(null,'Luton','Premier League',13.3,18.7,7.7,12,1,6.72,2,1);
insert into DefenseEquipe values(null,'Crystal Palace','Premier League',13.5,18.7,9.2,12,1.7,6.62,2,1);
insert into DefenseEquipe values(null,'Mainz','Bundesliga',11.7,18.7,8,11.8,1.5,6.67,2,1);
insert into DefenseEquipe values(null,'Udinese','Serie A',10.2,18.6,12,14.6,2.4,6.47,2,1);
insert into DefenseEquipe values(null,'Reims','Ligue 1',9.2,18.5,6.2,12.7,1.3,6.43,2,1);
insert into DefenseEquipe values(null,'Nottingham Forest','Premier League',12,18.4,10.7,11.7,2.9,6.70,2,1);
insert into DefenseEquipe values(null,'Eintracht Frankfurt','Bundesliga',12,18.3,9.3,10.3,2.7,6.69,2,1);

-- Exterieur Equipe

insert into DefenseEquipe values(null,'Brest','Ligue 1',13.1,22.1,10,12.3,1.4,6.61,3,1);
insert into DefenseEquipe values(null,'Montpellier','Ligue 1',14.2,21.7,9.3,12.2,2.3,6.65,3,1);
insert into DefenseEquipe values(null,'Las Palmas','LaLiga',13.6,21.3,7.3,10.6,2,6.54,3,1);
insert into DefenseEquipe values(null,'Valencia','LaLiga',11.8,20.8,9.5,12.4,0.9,6.49,3,1);
insert into DefenseEquipe values(null,'Tottenham','Premier League',13.3,20.6,9,12.1,1.7,6.84,3,1);
insert into DefenseEquipe values(null,'Paris Saint-Germain,Ligue',1,15.5,20.5,7.8,10.5,1.3,7.07,3,1);
insert into DefenseEquipe values(null,'Empoli','Serie A',18.6,20.3,7.9,12.3,2.1,6.44,3,1);
insert into DefenseEquipe values(null,'Reims','Ligue 1',14,20.3,11,16.4,3.6,6.65,3,1);
insert into DefenseEquipe values(null,'Bochum','Bundesliga',16.6,20.1,8.1,12.4,2.3,6.44,3,1);
insert into DefenseEquipe values(null,'Crystal Palace','Premier League',12.9,20.1,9.3,11.3,0.9,6.74,3,1);
insert into DefenseEquipe values(null,'Monaco','Ligue 1',10.1,20.1,11.1,14.4,3.1,6.70,3,1);
insert into DefenseEquipe values(null,'Everton','Premier League',14.6,19.6,9.6,12.7,1.4,6.73,3,1);
insert into DefenseEquipe values(null,'Freiburg','Bundesliga',16.8,19.5,9.8,9,2,6.40,3,1);
insert into DefenseEquipe values(null,'Sheffield United','Premier League',18.1,19.4,9.3,11.9,1.7,6.27,3,1);
insert into DefenseEquipe values(null,'Lens','Ligue 1',12.3,19.4,8.4,14.3,2.9,6.54,3,1);
insert into DefenseEquipe values(null,'Genoa','Serie A',12.7,19.3,10.4,11.3,1,6.45,3,1);
insert into DefenseEquipe values(null,'Chelsea','Premier League',11.2,19.2,7.7,14.8,2.8,6.71,3,1);
insert into DefenseEquipe values(null,'Nottingham Forest','Premier League',15.1,19,9.6,12.3,2,6.47,3,1);
insert into DefenseEquipe values(null,'Rayo Vallecano','LaLiga',15.1,18.9,7.9,15.6,2.6,6.58,3,1);
insert into DefenseEquipe values(null,'Lille','Ligue 1',8.9,18.9,9.6,10.9,0.9,6.70,3,1);

create table AttaqueEquipe(
    id_AttaqueEquipe int primary key auto_increment,
    Equipe varchar(30),
    Compétition varchar(5),
    Tirspm DECIMAL(10,2),
    TirsCApm  DECIMAL(10,2),
    Dribblespm decimal(10,2),
    Fautessubiespm decimal(10,2),
    Note DECIMAL(10,2),
    id_SousOnglet int,
    Id_statistique int,
    FOREIGN KEY (id_SousOnglet) REFERENCES Sous_Onglet(id_SousOnglet),
    FOREIGN KEY (Id_statistique) REFERENCES Statistique(Id_statistique)
);

-- general Equipe

insert into AttaqueEquipe values(null,'Bayern Munich','Bundesliga',19.9,8.3,15.7,9.3,7.16,1,1);
insert into AttaqueEquipe values(null,'Wolves','Premier League',11.6,3.9,12.7,11.2,6.62,1,1);
insert into AttaqueEquipe values(null,'Paris Saint-Germain','Ligue 1',16.6,6.8,12.2,12.2,7.04,1,1);
insert into AttaqueEquipe values(null,'Barcelona','LaLiga',15.4,6.1,12.2,14.3,6.81,1,1);
insert into AttaqueEquipe values(null,'Nice','Ligue 1',13.2,4.6,11.7,10.9,6.72,1,1);
insert into AttaqueEquipe values(null,'Bayer Leverkusen','Bundesliga',16.3,7.4,11.6,9.1,6.98,1,1);
insert into AttaqueEquipe values(null,'Lille','Ligue 1',12.5,5.2,11,14.1,6.76,1,1);
insert into AttaqueEquipe values(null,'Real Madrid','LaLiga',17.1,6.7,10.9,13.6,6.93,1,1);
insert into AttaqueEquipe values(null,'Lorient','Ligue 1',8.7,3.3,10.9,12.5,6.62,1,1);
insert into AttaqueEquipe values(null,'Tottenham','Premier League',16.2,5.9,10.8,14.5,6.80,1,1);
insert into AttaqueEquipe values(null,'Bournemouth','Premier League',12.4,4.8,10.8,10,6.47,1,1);
insert into AttaqueEquipe values(null,'VfB Stuttgart','Bundesliga',16.2,6.6,10.7,11.5,6.87,1,1);
insert into AttaqueEquipe values(null,'Brest','Ligue 1',15.3,4.7,10.7,12.1,6.67,1,1);
insert into AttaqueEquipe values(null,'Reims','Ligue 1',11.4,4.4,10.6,8.6,6.68,1,1);
insert into AttaqueEquipe values(null,'Manchester City','Premier League',16.5,7.2,10.4,11.2,6.96,1,1);
insert into AttaqueEquipe values(null,'Real Betis','LaLiga',13.2,3.9,10.4,14.4,6.66,1,1);
insert into AttaqueEquipe values(null,'Monaco','Ligue 1',14.7,6.5,10.2,11.4,6.78,1,1);
insert into AttaqueEquipe values(null,'Granada','LaLiga',10.6,4.1,10.2,13.7,6.38,1,1);
insert into AttaqueEquipe values(null,'Chelsea','Premier League',13.8,5,10.2,11.7,6.66,1,1);
insert into AttaqueEquipe values(null,'Crystal Palace','Premier League',12.4,4.4,10.2,11.9,6.71,1,1);

-- Domicil Equipe

insert into AttaqueEquipe values(null,'Wolves','Premier League',11,3.5,17.2,10.7,6.60,2,1);
insert into AttaqueEquipe values(null,'Bayern Munich','Bundesliga',21.7,9.8,14.5,8.3,7.21,2,1);
insert into AttaqueEquipe values(null,'Nice','Ligue 1',12.9,3.1,14.1,11.3,6.78,2,1);
insert into AttaqueEquipe values(null,'Reims','Ligue 1',11.9,4.6,12.6,8.7,6.70,2,1);
insert into AttaqueEquipe values(null,'Bayer Leverkusen','Bundesliga',19.3,9,12.3,8.5,7.05,2,1);
insert into AttaqueEquipe values(null,'VfB Stuttgart','Bundesliga',18.6,8.6,12.1,11.3,7.01,2,1);
insert into AttaqueEquipe values(null,'Manchester City','Premier League',12.5,5.3,11.7,11.7,7.03,2,1);
insert into AttaqueEquipe values(null,'Real Madrid','LaLiga',18.9,7.7,11.6,13,6.98,2,1);
insert into AttaqueEquipe values(null,'Barcelona','LaLiga',16,6.4,11.6,13.9,6.89,2,1);
insert into AttaqueEquipe values(null,'Lille','Ligue 1',12.3,5.3,11.3,14.2,6.83,2,1);
insert into AttaqueEquipe values(null,'Bournemouth','Premier League',12.1,4.7,11.3,10.7,6.54,2,1);
insert into AttaqueEquipe values(null,'Paris Saint-Germain','Ligue 1',15.6,6.3,11.3,13.1,7.01,2,1);
insert into AttaqueEquipe values(null,'Napoli','Serie A',20.2,5.7,11.2,10,6.66,2,1);
insert into AttaqueEquipe values(null,'Udinese','Serie A',14.3,5.2,11,11.3,6.43,2,1);
insert into AttaqueEquipe values(null,'Brest','Ligue 1',17.8,5.6,11,13.4,6.74,2,1);
insert into AttaqueEquipe values(null,'Lorient','Ligue 1',9.3,3.6,10.9,12,6.73,2,1);
insert into AttaqueEquipe values(null,'Tottenham','Premier League',18.3,7,10.8,13.8,6.76,2,1);
insert into AttaqueEquipe values(null,'Real Betis','LaLiga',15.3,4.3,10.7,14.1,6.82,2,1);
insert into AttaqueEquipe values(null,'Lyon','Ligue 1',15.6,5.6,10.7,9.1,6.47,2,1);
insert into AttaqueEquipe values(null,'Granada','LaLiga',13,5.6,10.6,13.1,6.49,2,1);


-- Exterieur Equipe

insert into AttaqueEquipe values(null,'Bayern Munich','Bundesliga',18.2,6.8,16.8,10.3,7.12,3,1);
insert into AttaqueEquipe values(null,'Paris Saint-Germain','Ligue 1',17.8,7.3,13.3,11,7.07,3,1);
insert into AttaqueEquipe values(null,'Barcelona','LaLiga',14.7,5.9,12.9,14.7,6.74,3,1);
insert into AttaqueEquipe values(null,'Monaco','Ligue 1',16,6.6,11.1,10.1,6.70,3,1);
insert into AttaqueEquipe values(null,'Chelsea','Premier League',12.5,5.2,11,12.7,6.71,3,1);
insert into AttaqueEquipe values(null,'Lorient','Ligue 1',8,3,11,13,6.49,3,1);
insert into AttaqueEquipe values(null,'Tottenham','Premier League',14.3,5,10.9,15.1,6.84,3,1);
insert into AttaqueEquipe values(null,'Bayer Leverkusen','Bundesliga',13.2,5.8,10.8,9.7,6.91,3,1);
insert into AttaqueEquipe values(null,'Villarreal','LaLiga',9.2,4,10.8,15.2,6.57,3,1);
insert into AttaqueEquipe values(null,'Clermont Foot','Ligue 1',10.7,3.2,10.8,15,6.58,3,1);
insert into AttaqueEquipe values(null,'Lille','Ligue 1',12.7,5.1,10.7,14,6.70,3,1);
insert into AttaqueEquipe values(null,'Brest','Ligue 1',13.4,4,10.4,11.1,6.61,3,1);
insert into AttaqueEquipe values(null,'Real Madrid','LaLiga',15.5,5.8,10.4,14.1,6.88,3,1);
insert into AttaqueEquipe values(null,'Bournemouth','Premier League',12.7,5,10.3,9.2,6.39,3,1);
insert into AttaqueEquipe values(null,'Crystal Palace','Premier League',12.9,4.6,10.3,11.3,6.74,3,1);
insert into AttaqueEquipe values(null,'West Ham','Premier League',12.1,3.7,10.1,9.6,6.68,3,1);
insert into AttaqueEquipe values(null,'Real Betis','LaLiga',11.1,3.6,10,14.7,6.49,3,1);
insert into AttaqueEquipe values(null,'Granada','LaLiga',8.5,2.8,9.9,14.1,6.28,3,1);
insert into AttaqueEquipe values(null,'Atletico Madrid','LaLiga',10.5,4.8,9.7,11.8,6.83,3,1);
insert into AttaqueEquipe values(null,'Sevilla','LaLiga',13.3,4.2,9.7,14.2,6.61,3,1);


create table generalJoueur(
    id_generalJoueur int primary key auto_increment,
    Joueurs varchar(30),
    Apps varchar(5),
    Mins int,
    buts int,
    P_Decisives int,
    jau int,
    Rou int,
    TpM DECIMAL(10,2),
    PR DECIMAL(10,2),
    AériensGagnés DECIMAL(10,2), 
    HdM int,
    Note DECIMAL(10,2),
    id_SousOnglet int,
    FOREIGN KEY (id_SousOnglet) REFERENCES SousOnglet(id_SousOnglet),
    Id_statistique int,
    FOREIGN KEY (id_SousOnglet) REFERENCES Sous_Onglet(id_SousOnglet),
    FOREIGN KEY (Id_statistique) REFERENCES Statistique(Id_statistique)
);

-- general

insert into generalJoueur values(null,'Leroy Sané Bayern, 27, M(CGD),AC','12',1046,8,6,1,null,3.1,83.2,0.1,2,8.46,1,2);
insert into generalJoueur values(null,'Harry Kane Bayern, 30, MO(C),AC','12',1052,18,5,1,null,4.3,72.6,1,4,8.29,1,2);
insert into generalJoueur values(null,'Serhou Guirassy Stuttgart, 27, MO(G),AC','9(2)',787,16,1,null,null,3.7,80.6,2.5,4,8.10,1,2);
insert into generalJoueur values(null,'Kylian Mbappé PSG, 24, MO(CGD),AC','11(1)',971,14,2,2,null,4.9,86.9,null,4,8.04,1,2);
insert into generalJoueur values(null,'Jude Bellingham Real Madrid, 20, M(CGD)','13',1115,11,2,2,null,2.5,90.5,0.8,5,7.97,1,2);
insert into generalJoueur values(null,'Victor Boniface Leverkusen, 22, AC','12',1028,7,5,2,null,5.1,71.3,1.6,2,7.87,1,2);
insert into generalJoueur values(null,'Matías Soulé Frosinone, 20, MO(D)','12',1039,6,1,2,null,2.4,80.7,0.3,3,7.80,1,2);
insert into generalJoueur values(null,'Álex Grimaldo Leverkusen, 28, D(G),M(G)','12',1075,7,4,1,null,1.8,88.2,0.3,4,7.77,1,2);
insert into generalJoueur values(null,'Jérémy Doku Man City, 21, M(GD)','8(2)',646,2,5,2,null,1.8,84.5,0.1,4,7.71,1,2);
insert into generalJoueur values(null,'Lautaro Martínez Inter, 26, AC','12(1)',1075,13,1,2,null,3.4,77.7,0.7,3,7.69,1,2);

-- Domicil

insert into generalJoueur values(null,'Leroy Sané Bayern, 27, M(CGD),AC','6',520,4,3,null,null,3.3,86.1,0.2,1,8.70,2,2);
insert into generalJoueur values(null,'Harry Kane Bayern, 30, MO(C),AC','6',518,11,4,null,null,5.3,71.1,0.8,3,8.65,2,2);
insert into generalJoueur values(null,'Serhou Guirassy Stuttgart, 27, MO(G),AC', '5(1)',456,11,1,null,null,4.5,83.5,1.3,3,8.59,2,2);
insert into generalJoueur values(null,'Kingsley Coman Bayern, 27, M(GD),AC','4',310,2,2,null,null,2.8,88.7,null,1,8.40,2,2);
insert into generalJoueur values(null,'Victor Boniface Leverkusen, 22, AC', '6',522,5,2,1,null,5.5,74.5,1.8,2,8.38,2,2);
insert into generalJoueur values(null,'Matías Soulé Frosinone, 20, MO(D)','5',448,3,1,null,null,2.8,81.7,0.4,2,8.30,2,2);
insert into generalJoueur values(null,'Jérémy Doku Man City, 21, M(GD)','5',382,1,5,null,null,1.6,89.2,null,3,8.24,2,2);
insert into generalJoueur values(null,'Paulo Dybala Roma, 30, MO(CD),AC','4',327,3,4,1,null,2.8,81.6,null,2,8.16,2,2);
insert into generalJoueur values(null,'Virgil van Dijk Liverpool, 32, D(C)','5',450,null,1,null,null,1.4,92,8,1,8.08,2,2);
insert into generalJoueur values(null,'Jonas Hofmann Leverkusen, 31, D(),M(CGD)','6',523,4,3,null,null,2.3,85.1,0.2,2,8.02,2,2);

-- Exterieur

insert into generalJoueur values(null,'Leroy Sané Bayern, 27, M(CGD),AC','6',520,4,3,null,null,3.3,86.1,0.2,1,8.70,3,2);
insert into generalJoueur values(null,'Harry Kane Bayern, 30, MO(C),AC','6',518,11,4,null,null,5.3,71.1,0.8,3,8.65,3,2);
insert into generalJoueur values(null,'Serhou Guirassy Stuttgart, 27, MO(G),AC','5(1)',456,11,1,null,null,4.5,83.5,1.3,3,8.59,3,2);
insert into generalJoueur values(null,'Kingsley Coman Bayern, 27, M(GD),AC','4',310,2,2,null,null,2.8,88.7,null,1,8.40,3,2);
insert into generalJoueur values(null,'Victor Boniface Leverkusen, 22, AC','6',522,5,2,1,null,5.5,74.5,1.8,2,8.38,3,2);
insert into generalJoueur values(null,'Matías Soulé Frosinone, 20, MO(D)','5',448,3,1,null,null,2.8,81.7,0.4,2,8.30,3,2);
insert into generalJoueur values(null,'Jérémy Doku Man City, 21, M(GD)','5',382,1,5,null,null,1.6,89.2,null,3,8.24,3,2);
insert into generalJoueur values(null,'Paulo Dybala Roma, 30, MO(CD),AC','4',327,3,4,1,null,2.8,81.6,null,2,8.16,3,2);
insert into generalJoueur values(null,'Virgil van Dijk Liverpool, 32, D(C)','5',450,null,1,null,null,1.4,92,8,1,8.08,3,2);
insert into generalJoueur values(null,'Jonas Hofmann Leverkusen, 31, D(),M(CGD)','6',523,4,3,null,null,2.3,85.1,0.2,2,8.02,3,2);

create table DefenseJoueur(
    id_DefenseJoueur int primary key auto_increment,
    Joueurs varchar(30),
    Apps varchar(5),
    Mins int,
    Tacles int,
    Inter decimal(10,2),
    Fautes decimal(10,2),
    Hors_jeux decimal(10,2),
    Dég decimal(10,2),
    Drb decimal(10,2),
    Contres decimal(10,2),
    CSC decimal(10,2),
    Note decimal(10,2),
    id_SousOnglet int,
    Id_statistique int,
    FOREIGN KEY (id_SousOnglet) REFERENCES Sous_Onglet(id_SousOnglet),
    FOREIGN KEY (Id_statistique) REFERENCES Statistique(Id_statistique)
);

-- General

insert into DefenseJoueur values(null,'Leroy Sané Bayern, 27, M(CGD),AC','12',1046,0.8,0.3,1.1,null,0.1,0.3,null,null,8.46,1,2);
insert into DefenseJoueur values(null,'Harry Kane Bayern, 30, MO(C),AC','12',1052,0.4,0.3,0.3,0.1,0.7,0.4,0.1,null,8.29,1,2);
insert into DefenseJoueur values(null,'Serhou Guirassy Stuttgart, 27, MO(G),AC','9(2)',787,0.1,0.2,0.6,null,0.8,0.1,0.1,null,8.10,1,2);
insert into DefenseJoueur values(null,'Kylian Mbappé PSG, 24, MO(CGD),AC','11(1)',971,0.2,0.1,0.8,null,null,0.2,null,null,8.04,1,2);
insert into DefenseJoueur values(null,'Jude Bellingham Real Madrid, 20, M(CGD)','13',1115,1.5,0.7,1.2,null,0.5,0.8,0.2,null,7.97,1,2);
insert into DefenseJoueur values(null,'Victor Boniface Leverkusen, 22, AC','12',1028,0.3,null,0.8,null,0.7,0.3,null,null,7.87,1,2);
insert into DefenseJoueur values(null,'Matías Soulé Frosinone, 20, MO(D)','12',1039,1.8,0.6,0.8,null,0.3,0.8,0.2,null,7.80,1,2);
insert into DefenseJoueur values(null,'Álex Grimaldo Leverkusen, 28, D(G),M(G)','12',1075,1.9,0.7,0.6,0.2,1.5,0.8,0.3,null,7.77,1,2);
insert into DefenseJoueur values(null,'Jérémy Doku Man City, 21, M(GD)','8(2)',646,2,0.5,0.5,null,0.2,0.6,null,null,7.71,1,2);
insert into DefenseJoueur values(null,'Lautaro Martínez Inter, 26, AC','12(1)',1075,0.7,0.9,1.4,null,0.3,0.3,0.1,null,7.69,1,2);

-- domicil

insert into DefenseJoueur values(null,'Leroy Sané Bayern, 27, M(CGD),AC','6',520,0.8,0.2,1.3,null,null,0.5,null,null,8.70,2,2);
insert into DefenseJoueur values(null,'Harry Kane Bayern, 30, MO(C),AC','6',518,0.2,0.5,null,null,0.7,0.7,0.2,null,8.65,2,2);
insert into DefenseJoueur values(null,'Serhou Guirassy Stuttgart, 27, MO(G),AC','5(1)',456,0.2,0.3,1.2,null,0.8,0.2,null,null,8.59,2,2);
insert into DefenseJoueur values(null,'Kingsley Coman Bayern, 27, M(GD),AC','4',310,0.5,null,null,null,0.5,0.3,0.3,null,8.40,2,2);
insert into DefenseJoueur values(null,'Victor Boniface Leverkusen, 22, AC','6',522,0.7,null,0.8,null,1,0.3,null,null,8.38,2,2);
insert into DefenseJoueur values(null,'Matías Soulé Frosinone, 20, MO(D)','5',448,2.2,0.8,0.4,null,0.6,0.8,null,null,8.30,2,2);
insert into DefenseJoueur values(null,'Jérémy Doku Man City, 21, M(GD)','5',382,2.2,0.4,0.4,null,0.2,0.2,null,null,8.24,2,2);
insert into DefenseJoueur values(null,'Paulo Dybala Roma, 30, MO(CD),AC','4',327,1.8,null,0.3,null,0.3,0.5,null,null,8.16,2,2);
insert into DefenseJoueur values(null,'Virgil van Dijk Liverpool, 32, D(C)','5',450,1.6,1.8,0.2,1.2,4.6,null,1,null,8.08,2,2);
insert into DefenseJoueur values(null,'Jonas Hofmann Leverkusen, 31, D(),M(CGD)','6',523,0.8,0.3,0.5,null,0.2,0.5,null,null,8.02,2,2);

-- exterieur

insert into DefenseJoueur values(null,'Rodri Man City, 27, D(C),MDC','5',450,2.6,1,1.6,null,0.4,1,0.2,null,8.26,3,2);
insert into DefenseJoueur values(null,'Jude Bellingham Real Madrid, 20, M(CGD)','8',683,1.8,0.8,0.9,null,0.6,0.6,0.3,null,8.25,3,2);
insert into DefenseJoueur values(null,'Kylian Mbappé PSG, 24, MO(CGD),AC','5(1)',489,0.2,0.2,1,null,null,null,null,null,8.23,3,2);
insert into DefenseJoueur values(null,'Leroy Sané Bayern, 27, M(CGD),AC','6',526,0.7,0.3,0.8,null,0.2,0.2,null,null,8.22,3,2);
insert into DefenseJoueur values(null,'Álex Grimaldo Leverkusen, 28, D(G),M(G)','6',540,2.5,0.8,0.8,0.3,2.2,1,0.5,null,8.06,3,2);
insert into DefenseJoueur values(null,'Harry Kane Bayern, 30, MO(C),AC', '6',534,0.7,0.2,0.5,0.2,0.7,0.2,null,null,7.94,3,2);
insert into DefenseJoueur values(null,'James Maddison Tottenham, 27, MO(CGD)', '6',492,1,0.5,1.3,null,0.5,0.3,null,null,7.83,3,2);
insert into DefenseJoueur values(null,'Lautaro Martínez Inter, 26, AC', '5(1)',455,0.5,0.5,1.7,null,0.5,0.7,null,null,7.77,3,2);
insert into DefenseJoueur values(null,'Adrien Rabiot Juventus, 28, MDC,M(G)','7',630,3,1.4,1.6,null,1.4,0.9,0.6,null,7.76,3,2);
insert into DefenseJoueur values(null,'Alexandre Oukidja Metz, 35, GB',4,558,null,null,null,null,1.6,null,null,null,7.73,3,2);

create table AttaqueJoueur(
    id_DefenseJoueur int primary key auto_increment,   
    Joueurs varchar(20),
    Apps varchar(5),
    Mins int,
    Buts int,
    P_Décisives int,
    TpM decimal(10,2),
    PClé decimal(10,2),
    Drb decimal(10,2),
    FautesSub decimal(10,2),
    H_J decimal(10,2),
    Dépo decimal(10,2),
    CtrlRat decimal(10,2),
    Note decimal(10,2),
    id_SousOnglet int,
    Id_statistique int,
    FOREIGN KEY (id_SousOnglet) REFERENCES Sous_Onglet(id_SousOnglet),
    FOREIGN KEY (Id_statistique) REFERENCES Statistique(Id_statistique)
);

-- general

insert into AttaqueJoueur values(null,'Leroy Sané Bayern, 27, M(CGD),AC','12',1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46,1,2);
insert into AttaqueJoueur values(null,'Harry Kane Bayern, 30, MO(C),AC','12',1052,18,5,4.3,1.3,0.7,1.5,0.5,1.7,1.4,8.29,1,2);
insert into AttaqueJoueur values(null,'Serhou Guirassy Stuttgart, 27, MO(G),AC','9(2)',787,16,1,3.7,1.7,0.5,2.1,0.8,1.5,2.4,8.10,1,2);
insert into AttaqueJoueur values(null,'Kylian Mbappé PSG, 24, MO(CGD),AC','11(1)',971,14,2,4.9,1.8,2.3,1.6,0.7,1.5,1.9,8.04,1,2);
insert into AttaqueJoueur values(null,'Jude Bellingham Real Madrid, 20, M(CGD)','13',1115,11,2,2.5,1.8,1.8,3,0.2,1.4,1.8,7.97,1,2);
insert into AttaqueJoueur values(null,'Victor Boniface Leverkusen, 22, AC','12',1028,7,5,5.1,1.2,3,1.2,0.8,1.5,3.7,7.87,1,2);
insert into AttaqueJoueur values(null,'Matías Soulé Frosinone, 20, MO(D)','12',1039,6,1,2.4,2.8,4.4,0.8,null,2.7,2.9,7.80,1,2);
insert into AttaqueJoueur values(null,'Álex Grimaldo Leverkusen, 28, D(G),M(G)','12',1075,7,4,1.8,1.5,0.4,0.8,0.1,0.2,1.4,7.77,1,2);
insert into AttaqueJoueur values(null,'Jérémy Doku Man City, 21, M(GD)','8(2)',646,2,5,1.8,1.9,4.3,1.7,0.3,0.9,2.4,7.71,1,2);
insert into AttaqueJoueur values(null,'Lautaro Martínez Inter, 26, AC','12(1)',1075,13,1,3.4,0.7,0.7,1.9,0.3,1.3,2,7.69,1,2);

-- domicil

insert into AttaqueJoueur values(null,'Leroy Sané Bayern, 27, M(CGD),AC','6',520,4,3,3.3,4.7,4,1.2,0.5,2,2.3,8.70,2,2);
insert into AttaqueJoueur values(null,'Harry Kane Bayern, 30, MO(C),AC','6',518,11,4,5.3,1.5,1,1.2,0.3,1.7,2,8.65,2,2);
insert into AttaqueJoueur values(null,'Serhou Guirassy Stuttgart, 27, MO(G),AC','5(1)',456,11,1,4.5,2,0.5,2,1.2,1.5,2.7,8.59,2,2);
insert into AttaqueJoueur values(null,'Kingsley Coman Bayern, 27, M(GD),AC','4',310,2,2,2.8,3.3,2.8,1.3,null,0.8,1.8,8.40,2,2);
insert into AttaqueJoueur values(null,'Victor Boniface Leverkusen, 22, AC','6',522,5,2,5.5,1.7,3.8,0.8,0.7,1.8,3,8.38,2,2);
insert into AttaqueJoueur values(null,'Matías Soulé Frosinone, 20, MO(D)','5',448,3,1,2.8,2.6,4.8,1.2,null,3,2.6,8.30,2,2);
insert into AttaqueJoueur values(null,'Jérémy Doku Man City, 21, M(GD)','5',382,1,5,1.6,2.4,5.4,2,0.6,1.2,3,8.24,2,2);
insert into AttaqueJoueur values(null,'Paulo Dybala Roma, 30, MO(CD),AC','4',327,3,4,2.8,2.5,2.5,2.8,0.3,2.8,4.3,8.16,2,2);
insert into AttaqueJoueur values(null,'Virgil van Dijk Liverpool, 32, D(C)','5',450,null,1,1.4,1,null,0.2,null,null,null,8.08,2,2);
insert into AttaqueJoueur values(null,'Jonas Hofmann Leverkusen, 31, D(),M(CGD)','6',523,4,3,2.3,3.8,0.5,0.2,0.5,0.5,2,8.02,2,2);

-- Exterieur


insert into AttaqueJoueur values(null,'Rodri Man City, 27, D(C),MDC','5',450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26,3,2);
insert into AttaqueJoueur values(null,'Jude Bellingham Real Madrid, 20, M(CGD)','8',683,8,2,2.6,1.4,2.3,3.5,0.1,1.4,1.8,8.25,3,2);
insert into AttaqueJoueur values(null,'Kylian Mbappé PSG, 24, MO(CGD),AC,5(1)','5(1)',489,8,null,6,2.3,2.8,1.3,0.3,1.5,1.5,8.23,3,2);
insert into AttaqueJoueur values(null,'Leroy Sané Bayern, 27, M(CGD),AC','6',526,4,3,2.8,2.3,4.2,0.5,0.3,1.2,2.2,8.22,3,2);
insert into AttaqueJoueur values(null,'Álex Grimaldo Leverkusen, 28, D(G),M(G)','6',540,6,1,1.8,1.8,0.2,1,0.2,null,1.8,8.06,3,2);
insert into AttaqueJoueur values(null,'Harry Kane Bayern, 30, MO(C),AC','6',534,7,1,3.2,1.2,0.3,1.8,0.7,1.7,0.8,7.94,3,2);
insert into AttaqueJoueur values(null,'James Maddison Tottenham, 27, MO(CGD)','6',492,2,5,2.7,2.8,1.5,3.2,0.2,1.8,1.3,7.83,3,2);
insert into AttaqueJoueur values(null,'Lautaro Martínez Inter, 26, AC','5(1)',455,8,null,3.5,0.3,1.2,1.8,0.2,1,1.7,7.77,3,2);
insert into AttaqueJoueur values(null,'Adrien Rabiot Juventus, 28, MDC,M(G)','7',630,2,1,1.1,1,2,1.1,0.1,0.3,2.1,7.76,3,2);
insert into AttaqueJoueur values(null,'Alexandre Oukidja Metz, 35, GB','7',558,null,null,null,null,0.1,0.3,null,null,null,7.73,3,2);
