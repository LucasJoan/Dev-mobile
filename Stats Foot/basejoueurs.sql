create table Joueur(
    idJoueur integer primary key auto_increment,
    nomJoueur varchar(20),
    equipeJoueur varchar(20),
    ageJoueur int
);

create table STGG(
    idJoueur integer auto_increment,
    Apps int,
    Mins int,
    Buts int,
    PDec int,
    Jau int,
    Rou int,
    TpM decimal(10,1),
    PR decimal(10,1),
    AerG decimal(10,1),
    HdM int,
    Note decimal(10,2),
    foreign key (idJoueur) references Joueur(idJoueur)
);

create table STGD(
    idJoueur integer auto_increment,
    Apps int,
    Mins int,
    Buts int,
    PDec int,
    Jau int,
    Rou int,
    TpM decimal(10,1),
    PR decimal(10,1),
    AerG decimal(10,1),
    HdM int,
    Note decimal(10,2),
    foreign key (idJoueur) references Joueur(idJoueur)
);

create table STGE(
    idJoueur integer auto_increment,
    Apps int,
    Mins int,
    Buts int,
    PDec int,
    Jau int,
    Rou int,
    TpM decimal(10,1),
    PR decimal(10,1),
    AerG decimal(10,1),
    HdM int,
    Note decimal(10,2),
    foreign key (idJoueur) references Joueur(idJoueur)
);

create table STDG(
    idJoueur integer auto_increment,
    Apps int,
    Mins int,
    Tacles decimal(10,1),
    Inter decimal(10,1),
    Fautes decimal(10,1),
    HJ decimal(10,1),
    Deg decimal(10,1),
    Drb decimal(10,1),
    Contres decimal(10,1),
    CSC decimal(10,1),
    Note decimal(10,2),
    foreign key (idJoueur) references Joueur(idJoueur)
);

create table STDD(
    idJoueur integer auto_increment,
    Apps int,
    Mins int,
    Tacles decimal(10,1),
    Inter decimal(10,1),
    Fautes decimal(10,1),
    HJ decimal(10,1),
    Deg decimal(10,1),
    Drb decimal(10,1),
    Contres decimal(10,1),
    CSC decimal(10,1),
    Note decimal(10,2),
    foreign key (idJoueur) references Joueur(idJoueur)
);

create table STDE(
    idJoueur integer auto_increment,
    Apps int,
    Mins int,
    Tacles decimal(10,1),
    Inter decimal(10,1),
    Fautes decimal(10,1),
    HJ decimal(10,1),
    Deg decimal(10,1),
    Drb decimal(10,1),
    Contres decimal(10,1),
    CSC decimal(10,1),
    Note decimal(10,2),
    foreign key (idJoueur) references Joueur(idJoueur)
);

create table STAG(
    idJoueur integer auto_increment,
    Apps int,
    Mins int,
    Buts int,
    PDec int,
    TpM decimal(10,1),
    PCl decimal(10,1),
    Drb decimal(10,1),
    FS decimal(10,1),
    HJ decimal(10,1),
    Depo decimal(10,1),
    CtrlRat decimal(10,1),
    Note decimal(10,2),
    foreign key (idJoueur) references Joueur(idJoueur)
);

create table STAD(
    idJoueur integer auto_increment,
    Apps int,
    Mins int,
    Buts int,
    PDec int,
    TpM decimal(10,1),
    PCl decimal(10,1),
    Drb decimal(10,1),
    FS decimal(10,1),
    HJ decimal(10,1),
    CtrlRat decimal(10,1),
    Note decimal(10,2),
    foreign key (idJoueur) references Joueur(idJoueur)
);

create table STAE(
    idJoueur integer auto_increment,
    Apps int,
    Mins int,
    Buts int,
    PDec int,
    TpM decimal(10,1),
    PCl decimal(10,1),
    Drb decimal(10,1),
    FS decimal(10,1),
    HJ decimal(10,1),
    CtrlRat decimal(10,1),
    Note decimal(10,2),
    foreign key (idJoueur) references Joueur(idJoueur)
);

insert into Joueur values(1,'Leroy Sané','Bayern',27);
insert into Joueur values(2,'Harry Kane','Bayern',30);
insert into Joueur values(3,'Serhou Guirassy','Stuttgart',27);
insert into Joueur values(4,'Jude Bellingham','Real Madrid',20);
insert into Joueur values(5,'Kylian Mbappé','PSG',24);
insert into Joueur values(6,'Victor Boniface','Leverkusen',22);
insert into Joueur values(7,'Matias Soulé','Frosinone',20);
insert into Joueur values(8,'Alex Grimaldo','Leverkusen',28);
insert into Joueur values(9,'Jérémy Doku','Man City',21);
insert into Joueur values(10,'Lautaro Martinez','Inter',26);
insert into Joueur values(11,'Kingsley Coman','Bayern',27);
insert into Joueur values(12,'Paulo Dybala','Roma',30);
insert into Joueur values(13,'Virgil van Dijk','Liverpool',32);
insert into Joueur values(14,'Jonas Hofmann','Leverkusen',31);
insert into Joueur values(15,'Rodri','Man City',27);
insert into Joueur values(16,'James Maddison','Tottenham',27);
insert into Joueur values(17,'Alexandre Oukidja','Inter',35);
insert into Joueur values(18,'Jarrod Bowen','West Ham',26);

insert into STGG values(1, 12, 1052, 8, 6, 1, 0, 3.1, 83.2, 0.1, 2, 8.46);
insert into STGG values(2, 12, 1052, 8, 6, 1, 0, 3.1, 83.2, 0.1, 2, 8.46);
insert into STGG values(3, 12, 1052, 8, 6, 1, 0, 3.1, 83.2, 0.1, 2, 8.46);
insert into STGG values(4, 12, 1052, 8, 6, 1, 0, 3.1, 83.2, 0.1, 2, 8.46);
insert into STGG values(5, 12, 1052, 8, 6, 1, 0, 3.1, 83.2, 0.1, 2, 8.46);
insert into STGG values(6, 12, 1052, 8, 6, 1, 0, 3.1, 83.2, 0.1, 2, 8.46);
insert into STGG values(7, 12, 1052, 8, 6, 1, 0, 3.1, 83.2, 0.1, 2, 8.46);
insert into STGG values(8, 12, 1052, 8, 6, 1, 0, 3.1, 83.2, 0.1, 2, 8.46);
insert into STGG values(9, 12, 1052, 8, 6, 1, 0, 3.1, 83.2, 0.1, 2, 8.46);
insert into STGG values(10, 12, 1052, 8, 6, 1, 0, 3.1, 83.2, 0.1, 2, 8.46);

insert into STGD values(11, 4, 366, 10, 1, 0, 0, 4, 81.4, 1.6, 3, 8.81);
insert into STGD values(12, 4, 366, 10, 1, 0, 0, 4, 81.4, 1.6, 3, 8.81);
insert into STGD values(13, 4, 366, 10, 1, 0, 0, 4, 81.4, 1.6, 3, 8.81);
insert into STGD values(14, 4, 366, 10, 1, 0, 0, 4, 81.4, 1.6, 3, 8.81);
insert into STGD values(15, 4, 366, 10, 1, 0, 0, 4, 81.4, 1.6, 3, 8.81);
insert into STGD values(16, 4, 366, 10, 1, 0, 0, 4, 81.4, 1.6, 3, 8.81);
insert into STGD values(17, 4, 366, 10, 1, 0, 0, 4, 81.4, 1.6, 3, 8.81);
insert into STGD values(18, 4, 366, 10, 1, 0, 0, 4, 81.4, 1.6, 3, 8.81);
insert into STGD values(1, 4, 366, 10, 1, 0, 0, 4, 81.4, 1.6, 3, 8.81);
insert into STGD values(2, 4, 366, 10, 1, 0, 0, 4, 81.4, 1.6, 3, 8.81);

insert into STGE values(3, 5, 450, 3, 1, 2, 0, 3.4, 94.7, 1.6, 2, 8.26);
insert into STGE values(4, 5, 450, 3, 1, 2, 0, 3.4, 94.7, 1.6, 2, 8.26);
insert into STGE values(5, 5, 450, 3, 1, 2, 0, 3.4, 94.7, 1.6, 2, 8.26);
insert into STGE values(6, 5, 450, 3, 1, 2, 0, 3.4, 94.7, 1.6, 2, 8.26);
insert into STGE values(7, 5, 450, 3, 1, 2, 0, 3.4, 94.7, 1.6, 2, 8.26);
insert into STGE values(8, 5, 450, 3, 1, 2, 0, 3.4, 94.7, 1.6, 2, 8.26);
insert into STGE values(9, 5, 450, 3, 1, 2, 0, 3.4, 94.7, 1.6, 2, 8.26);
insert into STGE values(10, 5, 450, 3, 1, 2, 0, 3.4, 94.7, 1.6, 2, 8.26);
insert into STGE values(11, 5, 450, 3, 1, 2, 0, 3.4, 94.7, 1.6, 2, 8.26);
insert into STGE values(12, 5, 450, 3, 1, 2, 0, 3.4, 94.7, 1.6, 2, 8.26);

insert into STDG values(13, 12, 1046, 0.8, 0.3, 1.1, 0, 0.1, 0.3, 0, 0, 8.46);
insert into STDG values(14, 12, 1046, 0.8, 0.3, 1.1, 0, 0.1, 0.3, 0, 0, 8.46);
insert into STDG values(15, 12, 1046, 0.8, 0.3, 1.1, 0, 0.1, 0.3, 0, 0, 8.46);
insert into STDG values(16, 12, 1046, 0.8, 0.3, 1.1, 0, 0.1, 0.3, 0, 0, 8.46);
insert into STDG values(17, 12, 1046, 0.8, 0.3, 1.1, 0, 0.1, 0.3, 0, 0, 8.46);
insert into STDG values(18, 12, 1046, 0.8, 0.3, 1.1, 0, 0.1, 0.3, 0, 0, 8.46);
insert into STDG values(1, 12, 1046, 0.8, 0.3, 1.1, 0, 0.1, 0.3, 0, 0, 8.46);
insert into STDG values(2, 12, 1046, 0.8, 0.3, 1.1, 0, 0.1, 0.3, 0, 0, 8.46);
insert into STDG values(3, 12, 1046, 0.8, 0.3, 1.1, 0, 0.1, 0.3, 0, 0, 8.46);
insert into STDG values(4, 12, 1046, 0.8, 0.3, 1.1, 0, 0.1, 0.3, 0, 0, 8.46);

insert into STDD values(5, 4, 366, 0, 0.2, 1, 0, 1, 0.2, 0, 0, 8.81);
insert into STDD values(6, 4, 366, 0, 0.2, 1, 0, 1, 0.2, 0, 0, 8.81);
insert into STDD values(7, 4, 366, 0, 0.2, 1, 0, 1, 0.2, 0, 0, 8.81);
insert into STDD values(8, 4, 366, 0, 0.2, 1, 0, 1, 0.2, 0, 0, 8.81);
insert into STDD values(9, 4, 366, 0, 0.2, 1, 0, 1, 0.2, 0, 0, 8.81);
insert into STDD values(10, 4, 366, 0, 0.2, 1, 0, 1, 0.2, 0, 0, 8.81);
insert into STDD values(11, 4, 366, 0, 0.2, 1, 0, 1, 0.2, 0, 0, 8.81);
insert into STDD values(12, 4, 366, 0, 0.2, 1, 0, 1, 0.2, 0, 0, 8.81);
insert into STDD values(13, 4, 366, 0, 0.2, 1, 0, 1, 0.2, 0, 0, 8.81);
insert into STDD values(14, 4, 366, 0, 0.2, 1, 0, 1, 0.2, 0, 0, 8.81);

insert into STDE values(15,5,450,2.6,1,1.6,0,0.4,1,0.2,0,8.26);
insert into STDE values(16,5,450,2.6,1,1.6,0,0.4,1,0.2,0,8.26);
insert into STDE values(17,5,450,2.6,1,1.6,0,0.4,1,0.2,0,8.26);
insert into STDE values(18,5,450,2.6,1,1.6,0,0.4,1,0.2,0,8.26);
insert into STDE values(1,5,450,2.6,1,1.6,0,0.4,1,0.2,0,8.26);
insert into STDE values(2,5,450,2.6,1,1.6,0,0.4,1,0.2,0,8.26);
insert into STDE values(3,5,450,2.6,1,1.6,0,0.4,1,0.2,0,8.26);
insert into STDE values(4,5,450,2.6,1,1.6,0,0.4,1,0.2,0,8.26);
insert into STDE values(5,5,450,2.6,1,1.6,0,0.4,1,0.2,0,8.26);
insert into STDE values(6,5,450,2.6,1,1.6,0,0.4,1,0.2,0,8.26);

insert into STAG values(7,12,1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46);
insert into STAG values(8,12,1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46);
insert into STAG values(9,12,1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46);
insert into STAG values(10,12,1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46);
insert into STAG values(11,12,1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46);
insert into STAG values(12,12,1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46);
insert into STAG values(13,12,1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46);
insert into STAG values(14,12,1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46);
insert into STAG values(15,12,1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46);
insert into STAG values(16,12,1046,8,6,3.1,3.5,4.1,0.8,0.4,1.6,2.3,8.46);

insert into STAD values(17,4,366,10,1,4,2,0.6,1.8,0.8,1.6,2.6,8.81);
insert into STAD values(18,4,366,10,1,4,2,0.6,1.8,0.8,1.6,2.6,8.81);
insert into STAD values(1,4,366,10,1,4,2,0.6,1.8,0.8,1.6,2.6,8.81);
insert into STAD values(2,4,366,10,1,4,2,0.6,1.8,0.8,1.6,2.6,8.81);
insert into STAD values(3,4,366,10,1,4,2,0.6,1.8,0.8,1.6,2.6,8.81);
insert into STAD values(4,4,366,10,1,4,2,0.6,1.8,0.8,1.6,2.6,8.81);
insert into STAD values(5,4,366,10,1,4,2,0.6,1.8,0.8,1.6,2.6,8.81);
insert into STAD values(6,4,366,10,1,4,2,0.6,1.8,0.8,1.6,2.6,8.81);
insert into STAD values(7,4,366,10,1,4,2,0.6,1.8,0.8,1.6,2.6,8.81);
insert into STAD values(8,4,366,10,1,4,2,0.6,1.8,0.8,1.6,2.6,8.81);

insert into STAE values(9,5,450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26);
insert into STAE values(10,5,450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26);
insert into STAE values(11,5,450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26);
insert into STAE values(12,5,450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26);
insert into STAE values(13,5,450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26);
insert into STAE values(14,5,450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26);
insert into STAE values(15,5,450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26);
insert into STAE values(16,5,450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26);
insert into STAE values(17,5,450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26);
insert into STAE values(18,5,450,3,1,3.4,1.8,1.2,1,0.4,0.8,0.6,8.26);

