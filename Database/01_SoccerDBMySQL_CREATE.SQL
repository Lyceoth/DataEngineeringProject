START TRANSACTION;

CREATE DATABASE IF NOT EXISTS SOCCERSTAT;
USE SOCCERSTAT;

CREATE TABLE IF NOT EXISTS Team_Attributes (
id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	team_fifa_api_id	INTEGER,
	team_api_id	INTEGER,
	date	TEXT,
	buildUpPlaySpeed	INTEGER,
	buildUpPlaySpeedClass	TEXT,
	buildUpPlayDribbling	INTEGER,
	buildUpPlayDribblingClass	TEXT,
	buildUpPlayPassing	INTEGER,
	buildUpPlayPassingClass	TEXT,
	buildUpPlayPositioningClass	TEXT,
	chanceCreationPassing	INTEGER,
	chanceCreationPassingClass	TEXT,
	chanceCreationCrossing	INTEGER,
	chanceCreationCrossingClass	TEXT,
	chanceCreationShooting	INTEGER,
	chanceCreationShootingClass	TEXT,
	chanceCreationPositioningClass	TEXT,
	defencePressure	INTEGER,
	defencePressureClass	TEXT,
	defenceAggression	INTEGER,
	defenceAggressionClass	TEXT,
	defenceTeamWidth	INTEGER,
	defenceTeamWidthClass	TEXT,
	defenceDefenderLineClass	TEXT
	);
CREATE TABLE IF NOT EXISTS Team (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	team_api_id	INTEGER,
	team_fifa_api_id	INTEGER,
	team_long_name	TEXT,
	team_short_name	TEXT
);
CREATE TABLE IF NOT EXISTS Country (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	name	VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS League (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	country_id	INTEGER,
	name	VARCHAR(255)	
);
CREATE TABLE IF NOT EXISTS `Match` (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	country_id	INTEGER,
	league_id	INTEGER,
	season	TEXT,
	stage	INTEGER,
	`date`	TEXT,
	match_api_id	INTEGER UNIQUE,
	home_team_api_id	INTEGER,
	away_team_api_id	INTEGER,
	home_team_goal	INTEGER,
	away_team_goal	INTEGER,
	home_player_X1	INTEGER,
	home_player_X2	INTEGER,
	home_player_X3	INTEGER,
	home_player_X4	INTEGER,
	home_player_X5	INTEGER,
	home_player_X6	INTEGER,
	home_player_X7	INTEGER,
	home_player_X8	INTEGER,
	home_player_X9	INTEGER,
	home_player_X10	INTEGER,
	home_player_X11	INTEGER,
	away_player_X1	INTEGER,
	away_player_X2	INTEGER,
	away_player_X3	INTEGER,
	away_player_X4	INTEGER,
	away_player_X5	INTEGER,
	away_player_X6	INTEGER,
	away_player_X7	INTEGER,
	away_player_X8	INTEGER,
	away_player_X9	INTEGER,
	away_player_X10	INTEGER,
	away_player_X11	INTEGER,
	home_player_Y1	INTEGER,
	home_player_Y2	INTEGER,
	home_player_Y3	INTEGER,
	home_player_Y4	INTEGER,
	home_player_Y5	INTEGER,
	home_player_Y6	INTEGER,
	home_player_Y7	INTEGER,
	home_player_Y8	INTEGER,
	home_player_Y9	INTEGER,
	home_player_Y10	INTEGER,
	home_player_Y11	INTEGER,
	away_player_Y1	INTEGER,
	away_player_Y2	INTEGER,
	away_player_Y3	INTEGER,
	away_player_Y4	INTEGER,
	away_player_Y5	INTEGER,
	away_player_Y6	INTEGER,
	away_player_Y7	INTEGER,
	away_player_Y8	INTEGER,
	away_player_Y9	INTEGER,
	away_player_Y10	INTEGER,
	away_player_Y11	INTEGER,
	home_player_1	INTEGER,
	home_player_2	INTEGER,
	home_player_3	INTEGER,
	home_player_4	INTEGER,
	home_player_5	INTEGER,
	home_player_6	INTEGER,
	home_player_7	INTEGER,
	home_player_8	INTEGER,
	home_player_9	INTEGER,
	home_player_10	INTEGER,
	home_player_11	INTEGER,
	away_player_1	INTEGER,
	away_player_2	INTEGER,
	away_player_3	INTEGER,
	away_player_4	INTEGER,
	away_player_5	INTEGER,
	away_player_6	INTEGER,
	away_player_7	INTEGER,
	away_player_8	INTEGER,
	away_player_9	INTEGER,
	away_player_10	INTEGER,
	away_player_11	INTEGER,
	goal	TEXT,
	shoton	TEXT,
	shotoff	TEXT,
	foulcommit	TEXT,
	card	TEXT,
	`cross`	TEXT,
	corner	TEXT,
	possession	TEXT,
	B365H	DECIMAL(9, 2),
	B365D	DECIMAL(9, 2),
	B365A	DECIMAL(9, 2),
	BWH	DECIMAL(9, 2),
	BWD	DECIMAL(9, 2),
	BWA	DECIMAL(9, 2),
	IWH	DECIMAL(9, 2),
	IWD	DECIMAL(9, 2),
	IWA	DECIMAL(9, 2),
	LBH	DECIMAL(9, 2),
	LBD	DECIMAL(9, 2),
	LBA	DECIMAL(9, 2),
	PSH	DECIMAL(9, 2),
	PSD	DECIMAL(9, 2),
	PSA	DECIMAL(9, 2),
	WHH	DECIMAL(9, 2),
	WHD	DECIMAL(9, 2),
	WHA	DECIMAL(9, 2),
	SJH	DECIMAL(9, 2),
	SJD	DECIMAL(9, 2),
	SJA	DECIMAL(9, 2),
	VCH	DECIMAL(9, 2),
	VCD	DECIMAL(9, 2),
	VCA	DECIMAL(9, 2),
	GBH	DECIMAL(9, 2),
	GBD	DECIMAL(9, 2),
	GBA	DECIMAL(9, 2),
	BSH	DECIMAL(9, 2),
	BSD	DECIMAL(9, 2),
	BSA	DECIMAL(9, 2)
);
CREATE TABLE IF NOT EXISTS Player (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	player_api_id	INTEGER,
	player_name	TEXT,
	player_fifa_api_id	INTEGER,
	birthday	TEXT,
	height	INTEGER,
	weight	INTEGER
);
CREATE TABLE IF NOT EXISTS Player_Attributes (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	player_fifa_api_id	INTEGER,
	player_api_id	INTEGER,
	`date`	TEXT,
	overall_rating	INTEGER,
	potential	INTEGER,
	preferred_foot	TEXT,
	attacking_work_rate	TEXT,
	defensive_work_rate	TEXT,
	crossing	INTEGER,
	finishing	INTEGER,
	heading_accuracy	INTEGER,
	short_passing	INTEGER,
	volleys	INTEGER,
	dribbling	INTEGER,
	curve	INTEGER,
	free_kick_accuracy	INTEGER,
	long_passing	INTEGER,
	ball_control	INTEGER,
	acceleration	INTEGER,
	sprint_speed	INTEGER,
	agility	INTEGER,
	reactions	INTEGER,
	balance	INTEGER,
	shot_power	INTEGER,
	jumping	INTEGER,
	stamina	INTEGER,
	strength	INTEGER,
	long_shots	INTEGER,
	aggression	INTEGER,
	interceptions	INTEGER,
	positioning	INTEGER,
	vision	INTEGER,
	penalties	INTEGER,
	marking	INTEGER,
	standing_tackle	INTEGER,
	sliding_tackle	INTEGER,
	gk_diving	INTEGER,
	gk_handling	INTEGER,
	gk_kicking	INTEGER,
	gk_positioning	INTEGER,
	gk_reflexes	INTEGER	
);
	
CREATE UNIQUE INDEX IDX_TEAM_UNI
ON Team(team_api_id, team_fifa_api_id);

CREATE INDEX IDX_TEAM_API
ON Team(team_api_id);

CREATE INDEX IDX_TEAM_FIFA
ON Team(team_fifa_api_id);	
	
CREATE UNIQUE INDEX IDX_COUNTRY
ON Country(name);

CREATE UNIQUE INDEX IDX_LEAGUE
ON League(name);

CREATE UNIQUE INDEX IDX_PLAYER_UNI
ON Player(player_api_id, player_fifa_api_id);

CREATE INDEX IDX_PLAYER_API
ON Player(player_api_id);	

CREATE INDEX IDX_PLAYER_FIFA
ON Player(player_fifa_api_id);	


# Foreign Key in Team_Attributes
ALTER TABLE Team_Attributes
ADD CONSTRAINT CONST_FK_TEAM_FIFA_ID FOREIGN KEY(team_fifa_api_id) REFERENCES Team(team_fifa_api_id);
ALTER TABLE Team_Attributes
ADD CONSTRAINT CONST_FK_TEAM_API_ID FOREIGN KEY(team_api_id)  REFERENCES Team(team_api_id) ; 

#FOREIGN KEY in League: 
ALTER TABLE League
ADD CONSTRAINT CONST_FK_COUNTRY
FOREIGN KEY(country_id) REFERENCES Country(id); 
	
#Match:
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_1
FOREIGN KEY(home_player_1) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_LEAGUE
FOREIGN KEY(league_id) REFERENCES League(id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_2
FOREIGN KEY(home_player_2) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_COUNTRY
FOREIGN KEY(country_id) REFERENCES Country(id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HTEAM
FOREIGN KEY(home_team_api_id) REFERENCES Team(team_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_ATEAM
FOREIGN KEY(away_team_api_id) REFERENCES Team(team_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_3
FOREIGN KEY(home_player_3) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_4
FOREIGN KEY(home_player_4) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_5
FOREIGN KEY(home_player_5) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_6
FOREIGN KEY(home_player_6) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_7
FOREIGN KEY(home_player_7) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_8
FOREIGN KEY(home_player_8) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_9
FOREIGN KEY(home_player_9) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_10
FOREIGN KEY(home_player_10) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_HPLAYER_11
FOREIGN KEY(home_player_11) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_1
FOREIGN KEY(away_player_1) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_2
FOREIGN KEY(away_player_2) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_3
FOREIGN KEY(away_player_3) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_4
FOREIGN KEY(away_player_4) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_5
FOREIGN KEY(away_player_5) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_6
FOREIGN KEY(away_player_6) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_7
FOREIGN KEY(away_player_7) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_8
FOREIGN KEY(away_player_8) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_9
FOREIGN KEY(away_player_9) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_10
FOREIGN KEY(away_player_10) REFERENCES Player(player_api_id);
ALTER TABLE `Match`
ADD CONSTRAINT CONST_FK_M_APLAYER_11
FOREIGN KEY(away_player_11) REFERENCES Player(player_api_id);

#Player_Attributes: 
ALTER TABLE Player_Attributes
ADD CONSTRAINT CONST_FK_PA_FIFA_PLAYER
FOREIGN KEY(player_fifa_api_id) REFERENCES Player(player_fifa_api_id); 
ALTER TABLE Player_Attributes
ADD CONSTRAINT CONST_FK_PA_API_PLAYER
FOREIGN KEY(player_api_id) REFERENCES Player(player_api_id); 

COMMIT;

START TRANSACTION;
USE SOCCERSTAT;

INSERT INTO Country( id, name) VALUES (1,'Belgium');
INSERT INTO Country( id, name) VALUES (1729,'England');
INSERT INTO Country( id, name) VALUES (4769,'France');
INSERT INTO Country( id, name) VALUES (7809,'Germany');
INSERT INTO Country( id, name) VALUES (10257,'Italy');
INSERT INTO Country( id, name) VALUES (13274,'Netherlands');
INSERT INTO Country( id, name) VALUES (15722,'Poland');
INSERT INTO Country( id, name) VALUES (17642,'Portugal');
INSERT INTO Country( id, name) VALUES (19694,'Scotland');
INSERT INTO Country( id, name) VALUES (21518,'Spain');
INSERT INTO Country( id, name) VALUES (24558,'Switzerland');

COMMIT;

START TRANSACTION;
USE SOCCERSTAT;

INSERT INTO League( id, country_id, name) VALUES (1,1,'Belgium Jupiler League');
INSERT INTO League( id, country_id, name) VALUES (1729,1729,'England Premier League');
INSERT INTO League( id, country_id, name) VALUES (4769,4769,'France Ligue 1');
INSERT INTO League( id, country_id, name) VALUES (7809,7809,'Germany 1. Bundesliga');
INSERT INTO League( id, country_id, name) VALUES (10257,10257,'Italy Serie A');
INSERT INTO League( id, country_id, name) VALUES (13274,13274,'Netherlands Eredivisie');
INSERT INTO League( id, country_id, name) VALUES (15722,15722,'Poland Ekstraklasa');
INSERT INTO League( id, country_id, name) VALUES (17642,17642,'Portugal Liga ZON Sagres');
INSERT INTO League( id, country_id, name) VALUES (19694,19694,'Scotland Premier League');
INSERT INTO League( id, country_id, name) VALUES (21519, 21518,'Spain LIGA BBVA');
COMMIT;

START TRANSACTION; 
USE SOCCERSTAT;
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6856', '5440', 'Marjan Petkovic', '122118', '1979-05-22 00:00:00', '185.42', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7320', '9079', 'Mensur Mujdza', '192754', '1984-03-28 00:00:00', '185.42', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8457', '10950', 'Pavel Krmas', '180942', '1980-03-03 00:00:00', '193.04', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8581', '10967', 'Petr Jiracek', '190873', '1986-03-02 00:00:00', '180.34', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5875', '11242', 'Konstantin Engel', '183559', '1988-07-27 00:00:00', '177.8', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8570', '12330', 'Peter Pekarik', '190854', '1986-10-30 00:00:00', '175.26', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9847', '13428', 'Slawomir Peszko', '148564', '1985-02-19 00:00:00', '172.72', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6419', '13518', 'Lukasz Piszczek', '173771', '1985-06-03 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3918', '16300', 'Gojko Kacar', '186687', '1987-01-26 00:00:00', '185.42', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('875', '16678', 'Anton Putsila', '186504', '1987-06-10 00:00:00', '180.34', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2315', '18904', 'David Abraham', '160741', '1986-07-15 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5415', '19511', 'Josue', '164211', '1979-07-19 00:00:00', '170.18', '146');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4097', '20125', 'Hajime Hosogai', '181106', '1986-06-10 00:00:00', '177.8', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3287', '20396', 'Felipe Santana', '176957', '1986-03-17 00:00:00', '193.04', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7436', '20401', 'Michel Bastos', '139843', '1983-08-02 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3229', '20446', 'Fagner', '183614', '1989-06-11 00:00:00', '167.64', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9748', '20694', 'Shinji Okazaki', '194365', '1986-04-16 00:00:00', '175.26', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2932', '22313', 'Elkin Soto', '168561', '1980-08-04 00:00:00', '177.8', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10071', '22785', 'Stilianos Malezas', '172886', '1985-03-11 00:00:00', '193.04', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2811', '22824', 'Dusan Svento', '181274', '1985-08-01 00:00:00', '177.8', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4673', '24104', 'Jaroslav Drobny', '150278', '1979-10-18 00:00:00', '193.04', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2138', '24138', 'Daniel Halfar', '175996', '1988-01-07 00:00:00', '172.72', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2959', '24167', 'Emanuel Pogatetz', '12940', '1983-01-16 00:00:00', '190.5', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9788', '24693', 'Simeon Jackson', '163774', '1987-03-28 00:00:00', '172.72', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1972', '24791', 'Cristian Molinaro', '149064', '1983-07-30 00:00:00', '182.88', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8414', '25005', 'Paul Scharner', '45708', '1980-03-11 00:00:00', '190.5', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4173', '25018', 'Heinz Mueller', '50920', '1978-05-30 00:00:00', '195.58', '207');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('733', '25365', 'Andreas Ottl', '157618', '1985-03-01 00:00:00', '185.42', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1867', '25366', 'Claudio Pizarro', '25420', '1978-10-03 00:00:00', '182.88', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1775', '25483', 'Christian Schulz', '121185', '1983-04-01 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6689', '25628', 'Marco Caligiuri', '150415', '1984-04-14 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6981', '25644', 'Martin Latka', '181259', '1984-09-28 00:00:00', '193.04', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('11030', '25772', 'Zdravko Kuzmanovic', '168650', '1987-09-22 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8763', '25819', 'Raffael', '144622', '1985-03-28 00:00:00', '175.26', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4347', '25957', 'Igor de Camargo', '49674', '1983-05-12 00:00:00', '187.96', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5008', '25990', 'Joao Pereira', '206407', '1984-02-25 00:00:00', '172.72', '146');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10228', '26113', 'Thomas Kahlenberg', '49170', '1983-03-20 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6327', '26195', 'Ludovic Obraniak', '138066', '1984-11-10 00:00:00', '175.26', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3000', '26255', 'Emir Spahic', '141200', '1980-08-18 00:00:00', '185.42', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4940', '26330', 'Jimmy Briand', '134779', '1985-08-02 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7328', '26374', 'Mevlut Erdinc', '176481', '1987-02-25 00:00:00', '180.34', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4308', '26434', 'Ibrahim Afellay', '158372', '1986-04-02 00:00:00', '180.34', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4804', '26437', 'Jefferson Farfan', '158133', '1984-10-26 00:00:00', '177.8', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10315', '26440', 'Timmy Simons', '17605', '1976-12-11 00:00:00', '185.42', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3836', '26465', 'Gibril Sankoh', '158242', '1983-05-15 00:00:00', '187.96', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5697', '26477', 'Ken Ilsoe', '188580', '1986-12-02 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8567', '26545', 'Peter Niemeyer', '54018', '1983-11-22 00:00:00', '190.5', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9137', '26588', 'Roel Brouwers', '138532', '1981-11-28 00:00:00', '193.04', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8418', '26618', 'Paul Verhaegh', '148839', '1983-09-01 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8778', '26660', 'Ragnar Klavan', '140620', '1985-10-30 00:00:00', '187.96', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2931', '26675', 'Eljero Elia', '172049', '1987-02-13 00:00:00', '175.26', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10800', '26782', 'William Kvist', '158676', '1985-02-24 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4169', '26894', 'Heiko Butscher', '150414', '1980-07-28 00:00:00', '187.96', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7698', '26928', 'Moritz Stoppelkamp', '157528', '1986-12-11 00:00:00', '180.34', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10358', '26982', 'Tobias Werner', '177100', '1985-07-19 00:00:00', '175.26', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2550', '26994', 'Deniz Dogan', '107904', '1979-10-20 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('728', '27022', 'Andreas Lambertz', '191251', '1984-10-15 00:00:00', '172.72', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5700', '27149', 'Ken Reichel', '158394', '1986-12-19 00:00:00', '185.42', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('817', '27155', 'Anis Ben-Hatira', '176627', '1988-07-18 00:00:00', '182.88', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6972', '27234', 'Martin Harnik', '177666', '1987-06-10 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10230', '27255', 'Thomas Kessler', '158657', '1986-01-20 00:00:00', '198.12', '203');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7395', '27284', 'Michael Rensing', '121937', '1984-05-14 00:00:00', '190.5', '205');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6556', '27299', 'Manuel Neuer', '167495', '1986-03-27 00:00:00', '193.04', '203');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10300', '27302', 'Tim Hoogland', '164633', '1985-06-11 00:00:00', '182.88', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8775', '27303', 'Rafinha', '168607', '1985-09-07 00:00:00', '172.72', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('444', '27306', 'Alexander Baumjohann', '162223', '1987-01-23 00:00:00', '177.8', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6114', '27307', 'Levan Kobiashvili', '7849', '1977-07-10 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9568', '27310', 'Sebastian Boenisch', '176688', '1987-02-01 00:00:00', '190.5', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10313', '27313', 'Tim Wiese', '53012', '1981-12-17 00:00:00', '193.04', '243');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6074', '27314', 'Leon Andreasen', '130687', '1983-04-23 00:00:00', '187.96', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6', '27316', 'Aaron Hunt', '158138', '1986-09-04 00:00:00', '182.88', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7200', '27320', 'Matthieu Delpierre', '41725', '1981-04-26 00:00:00', '193.04', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1752', '27324', 'Christian Gentner', '158856', '1985-08-14 00:00:00', '187.96', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6820', '27326', 'Mario Gomez', '150418', '1985-07-10 00:00:00', '187.96', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9858', '27330', 'Sofian Chahed', '134810', '1983-04-18 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5809', '27335', 'Kevin-Prince Boateng', '173909', '1987-03-06 00:00:00', '185.42', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1019', '27339', 'Ashkan Dejagah', '157427', '1986-07-05 00:00:00', '180.34', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4117', '27349', 'Hanno Balitsch', '46826', '1981-01-02 00:00:00', '182.88', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4641', '27352', 'Jan Rosenthal', '175990', '1986-04-07 00:00:00', '185.42', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9195', '27358', 'Roman Weidenfeller', '2196', '1980-08-06 00:00:00', '190.5', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8074', '27365', 'Nuri Sahin', '170797', '1988-09-05 00:00:00', '180.34', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9610', '27366', 'Sebastian Tyrala', '170798', '1988-02-22 00:00:00', '172.72', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7250', '27376', 'Max Gruen', '194050', '1987-04-05 00:00:00', '190.5', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7006', '27411', 'Marvin Compper', '170231', '1985-06-14 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3358', '27412', 'Filip Daems', '125071', '1978-10-31 00:00:00', '180.34', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1289', '27415', 'Bo Svensson', '6971', '1979-08-04 00:00:00', '190.5', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8118', '27418', 'Oliver Kirch', '122048', '1982-08-21 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3118', '27420', 'Eugen Polanski', '165174', '1986-03-17 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8878', '27424', 'Rene Adler', '121933', '1985-01-15 00:00:00', '190.5', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4653', '27425', 'Jan-Ingwer Callsen-Bracker', '137449', '1984-09-23 00:00:00', '187.96', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3931', '27427', 'Gonzalo Castro', '167431', '1987-06-11 00:00:00', '172.72', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9810', '27429', 'Simon Rolfes', '121122', '1982-01-21 00:00:00', '190.5', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8808', '27433', 'Raphael Schaefer', '47903', '1979-01-30 00:00:00', '190.5', '207');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4742', '27436', 'Javier Pinola', '146963', '1983-02-24 00:00:00', '182.88', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2746', '27437', 'Dominik Reinhardt', '137261', '1984-12-19 00:00:00', '187.96', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4170', '27461', 'Heiko Westermann', '52270', '1983-08-14 00:00:00', '190.5', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8100', '27467', 'Oka Nikolov', '101282', '1974-05-25 00:00:00', '187.96', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8352', '27472', 'Patrick Ochs', '150532', '1984-05-14 00:00:00', '177.8', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6732', '27475', 'Marco Russ', '157716', '1985-08-04 00:00:00', '190.5', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('462', '27478', 'Alexander Meier', '121170', '1983-01-17 00:00:00', '195.58', '212');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4874', '27483', 'Jermaine Jones', '112847', '1981-11-03 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2749', '27485', 'Dominik Stroh-Engel', '167437', '1985-11-27 00:00:00', '195.58', '201');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1786', '27488', 'Christian Wetklo', '114126', '1980-01-11 00:00:00', '190.5', '203');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6547', '27492', 'Manuel Friedrich', '51021', '1979-09-13 00:00:00', '187.96', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7578', '27500', 'Milorad Pekovic', '127747', '1977-08-05 00:00:00', '187.96', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2070', '27502', 'Damir Vrancic', '158333', '1985-10-04 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9799', '27503', 'Simon Jentzsch', '3364', '1976-05-04 00:00:00', '195.58', '214');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1621', '27512', 'Cedric Makiadi', '53815', '1984-02-23 00:00:00', '177.8', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7193', '27521', 'Matthias Henn', '170748', '1985-04-28 00:00:00', '187.96', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1057', '27524', 'Axel Bellinghausen', '166928', '1983-05-17 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('90', '27534', 'Adam Bodzek', '177129', '1985-09-07 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7012', '27550', 'Marvin Matip', '161644', '1985-09-25 00:00:00', '182.88', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8344', '27556', 'Patrick Helmes', '167237', '1984-03-01 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1478', '27642', 'Cacau', '101378', '1981-03-27 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1782', '27774', 'Christian Traesch', '186912', '1987-09-01 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10148', '27866', 'Tarik Elyounoussi', '169317', '1988-02-23 00:00:00', '172.72', '146');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1916', '28081', 'Constant Djakpa', '175894', '1986-10-17 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10540', '28284', 'Vadim Demidov', '155264', '1986-10-10 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7323', '28435', 'Mergim Mavraj', '182713', '1986-06-09 00:00:00', '187.96', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7784', '28480', 'Naldo', '171919', '1982-09-10 00:00:00', '198.12', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7672', '29145', 'Mohammed Abdellaoue', '184010', '1985-10-23 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2743', '29255', 'Dominik Kumbela', '150496', '1984-04-20 00:00:00', '172.72', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5643', '29257', 'Karim Matmour', '178132', '1985-06-25 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5588', '29316', 'Kai Herdling', '53555', '1984-06-27 00:00:00', '180.34', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6733', '29340', 'Marco Sailer', '192733', '1985-11-16 00:00:00', '170.18', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3744', '29471', 'Georg Niedermaier', '189922', '1986-02-26 00:00:00', '190.5', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2263', '29529', 'Dario Kresic', '137637', '1984-01-11 00:00:00', '195.58', '212');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1791', '29543', 'Christoph Janker', '156443', '1985-02-14 00:00:00', '185.42', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9928', '29631', 'Stefano Celozzi', '183987', '1988-11-02 00:00:00', '170.18', '143');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7378', '29673', 'Michael Mancienne', '171831', '1988-01-08 00:00:00', '182.88', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9951', '29812', 'Stephan Fuerstner', '177404', '1987-09-11 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5762', '30249', 'Kevin Kuranyi', '49012', '1982-03-02 00:00:00', '190.5', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1766', '30250', 'Christian Pander', '150368', '1983-08-28 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4238', '30455', 'Heurelho Gomes', '135451', '1981-02-15 00:00:00', '190.5', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6495', '30530', 'Makoto Hasebe', '181098', '1984-01-18 00:00:00', '180.34', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1793', '30649', 'Christoph Metzelder', '30663', '1980-11-05 00:00:00', '193.04', '203');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8541', '30660', 'Pepe Reina', '24630', '1982-08-31 00:00:00', '187.96', '203');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3765', '30702', 'Gerald Asamoah', '11125', '1978-10-03 00:00:00', '180.34', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10318', '30703', 'Timo Hildebrand', '11769', '1979-04-05 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9583', '30707', 'Sebastian Kehl', '5485', '1980-02-13 00:00:00', '187.96', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4456', '30753', 'Ivan Klasnic', '10133', '1980-01-29 00:00:00', '185.42', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4488', '30764', 'Ivica Olic', '148138', '1979-09-14 00:00:00', '182.88', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10021', '30811', 'Steven Cherundolo', '51003', '1979-02-19 00:00:00', '172.72', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2610', '30820', 'Diego Benaglio', '115533', '1983-09-08 00:00:00', '193.04', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('951', '30834', 'Arjen Robben', '9014', '1984-01-23 00:00:00', '180.34', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5125', '30839', 'Johnny Heitinga', '49425', '1983-11-15 00:00:00', '180.34', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8746', '30840', 'Rafael van der Vaart', '45574', '1983-02-11 00:00:00', '175.26', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7531', '30854', 'Mike Hanke', '53013', '1983-11-05 00:00:00', '185.42', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('606', '30868', 'Anatoli Tymoschuk', '121622', '1979-03-30 00:00:00', '180.34', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1151', '30872', 'Bastian Schweinsteiger', '121944', '1984-08-01 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('770', '30886', 'Andrey Voronin', '114123', '1979-07-21 00:00:00', '175.26', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10853', '30889', 'Xabi Alonso', '45197', '1981-11-25 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8601', '30894', 'Philipp Lahm', '121939', '1983-11-11 00:00:00', '170.18', '146');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3514', '30924', 'Franck Ribery', '156616', '1983-04-07 00:00:00', '170.18', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10482', '30937', 'Tranquillo Barnetta', '52752', '1985-05-22 00:00:00', '177.8', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4638', '30949', 'Jan Polak', '167413', '1981-03-14 00:00:00', '180.34', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7291', '30964', 'Maza', '156434', '1981-10-20 00:00:00', '190.5', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10568', '30966', 'Valon Behrami', '161805', '1985-04-19 00:00:00', '185.42', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5077', '30986', 'Johan Djourou', '162893', '1987-01-18 00:00:00', '190.5', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6631', '30987', 'Marcell Jansen', '164493', '1985-11-04 00:00:00', '190.5', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('741', '31045', 'Andres Guardado', '171897', '1986-09-28 00:00:00', '170.18', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9913', '31199', 'Stefan Kiessling', '137262', '1984-01-25 00:00:00', '190.5', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2655', '31235', 'Diego', '136138', '1985-02-28 00:00:00', '172.72', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9514', '31290', 'Sascha Riether', '111206', '1983-03-23 00:00:00', '175.26', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7990', '31294', 'Niki Zimling', '135032', '1985-04-19 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7831', '31718', 'Nelson Haedo Valdez', '121193', '1983-11-28 00:00:00', '177.8', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9393', '31906', 'Salomon Kalou', '158232', '1985-08-05 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5639', '33065', 'Karim Guede', '177036', '1985-01-07 00:00:00', '182.88', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2173', '33085', 'Daniel van Buyten', '16897', '1978-02-07 00:00:00', '198.12', '209');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2557', '33338', 'Dennis Aogo', '164491', '1987-01-14 00:00:00', '182.88', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2565', '33342', 'Dennis Kruppke', '105663', '1980-04-01 00:00:00', '177.8', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10387', '33473', 'Tom Starke', '107713', '1981-03-18 00:00:00', '193.04', '216');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8201', '33579', 'Oscar Wendt', '144429', '1985-10-24 00:00:00', '180.34', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('11029', '33823', 'Zdenek Pospech', '141272', '1978-12-14 00:00:00', '175.26', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9069', '34114', 'Roberto Hilbert', '134895', '1984-10-16 00:00:00', '182.88', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8659', '34267', 'Pirmin Schwegler', '158905', '1987-03-09 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2718', '34370', 'Djiby Fall', '177772', '1985-04-20 00:00:00', '187.96', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('460', '34420', 'Alexander Madlung', '53967', '1982-07-11 00:00:00', '193.04', '203');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9143', '34675', 'Roger', '193985', '1985-08-10 00:00:00', '182.88', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9801', '35112', 'Simon Kjaer', '179645', '1989-03-26 00:00:00', '187.96', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10534', '35708', 'Uwe Huenemeier', '157703', '1986-01-09 00:00:00', '187.96', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2104', '35828', 'Daniel Brueckner', '158132', '1981-02-14 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3391', '35852', 'Fin Bartels', '183332', '1987-02-07 00:00:00', '175.26', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1878', '35989', 'Clemens Fritz', '101336', '1980-12-07 00:00:00', '182.88', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4103', '35997', 'Halil Altintop', '107651', '1982-12-08 00:00:00', '185.42', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7998', '36000', 'Niko Bungert', '175962', '1986-10-24 00:00:00', '187.96', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5641', '36005', 'Karim Haggui', '156256', '1984-01-20 00:00:00', '190.5', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10260', '36007', 'Thorben Marx', '45721', '1981-06-01 00:00:00', '182.88', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9636', '36011', 'Sejad Salihovic', '157430', '1984-10-08 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2796', '36034', 'Du-Ri Cha', '140057', '1980-07-25 00:00:00', '180.34', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6919', '36035', 'Markus Feulner', '102356', '1982-02-12 00:00:00', '182.88', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3076', '36050', 'Erik Jendrisek', '177965', '1986-10-26 00:00:00', '175.26', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6622', '36057', 'Marcel Ndjeng', '150514', '1982-05-06 00:00:00', '180.34', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10585', '36084', 'Vedad Ibisevic', '162369', '1984-08-06 00:00:00', '187.96', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7195', '36086', 'Matthias Lehmann', '52498', '1983-05-28 00:00:00', '177.8', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10140', '36132', 'Tamas Hajnal', '150360', '1981-03-15 00:00:00', '167.64', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1697', '36133', 'Chinedu Ede', '177106', '1987-02-05 00:00:00', '177.8', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9654', '36146', 'Serdar Tasci', '177519', '1987-04-24 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1036', '36180', 'Assani Lukimya-Mulongoti', '184852', '1986-01-25 00:00:00', '190.5', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9510', '36181', 'Sascha Burchert', '189061', '1989-10-30 00:00:00', '187.96', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4888', '36183', 'Jerome Boateng', '183907', '1988-09-03 00:00:00', '193.04', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6565', '36186', 'Manuel Schmiedebach', '193420', '1988-12-05 00:00:00', '170.18', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5760', '36293', 'Kevin Kratz', '192643', '1987-01-21 00:00:00', '172.72', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4831', '36322', 'Jens Langeneke', '101749', '1977-03-29 00:00:00', '185.42', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8053', '36326', 'Norman Theuerkauf', '183573', '1987-01-24 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6838', '36379', 'Mario Vrancic', '177896', '1989-05-23 00:00:00', '187.96', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10349', '36380', 'Tobias Levels', '180433', '1986-11-22 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7137', '36388', 'Mats Hummels', '178603', '1988-12-16 00:00:00', '190.5', '203');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9885', '36389', 'Srdjan Lakic', '177886', '1983-10-02 00:00:00', '185.42', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7622', '36395', 'Miso Brecko', '158444', '1984-05-01 00:00:00', '177.8', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7884', '36410', 'Nicklas Bendtner', '167706', '1988-01-16 00:00:00', '193.04', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10263', '36479', 'Thorsten Kirschbaum', '182743', '1987-04-20 00:00:00', '193.04', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1205', '36518', 'Benjamin Kessel', '203445', '1987-10-01 00:00:00', '190.5', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6617', '36554', 'Marcel Heller', '179891', '1986-02-12 00:00:00', '175.26', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5509', '36771', 'Julian Schuster', '177520', '1985-04-15 00:00:00', '190.5', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('130', '36774', 'Adam Szalai', '184789', '1987-12-09 00:00:00', '193.04', '201');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10357', '36775', 'Tobias Weis', '158855', '1985-07-30 00:00:00', '170.18', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5853', '36784', 'Klaas Jan Huntelaar', '148803', '1983-08-12 00:00:00', '185.42', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8018', '36806', 'Nikolce Noveski', '116620', '1979-04-28 00:00:00', '190.5', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10235', '36878', 'Thomas Kraft', '179954', '1988-07-22 00:00:00', '187.96', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9479', '36889', 'Sandro Wagner', '184069', '1987-11-29 00:00:00', '193.04', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2737', '36934', 'Dominic Maroh', '190670', '1987-03-04 00:00:00', '185.42', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7529', '37042', 'Mike Frantz', '190671', '1986-10-14 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6482', '37048', 'Mahir Saglik', '122040', '1983-01-18 00:00:00', '177.8', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5089', '37087', 'Johannes Flum', '188586', '1987-12-14 00:00:00', '190.5', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7787', '37154', 'Nando Rafael', '53548', '1984-01-10 00:00:00', '180.34', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4092', '37292', 'Haavard Nordtveit', '182888', '1990-06-21 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6625', '37317', 'Marcel Schaefer', '155408', '1984-06-07 00:00:00', '182.88', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2097', '37319', 'Daniel Baier', '137351', '1984-05-18 00:00:00', '175.26', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6398', '37335', 'Lukas Kruse', '121988', '1983-07-09 00:00:00', '185.42', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1785', '37354', 'Christian Weber', '109321', '1983-09-15 00:00:00', '175.26', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3159', '37357', 'Fabian Johnson', '177159', '1987-12-11 00:00:00', '182.88', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5971', '37373', 'Lars Bender', '177457', '1989-04-27 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10104', '37374', 'Sven Bender', '177458', '1989-04-27 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6813', '37380', 'Mario Eggimann', '115823', '1981-01-24 00:00:00', '190.5', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9578', '37389', 'Sebastian Freis', '165176', '1985-04-23 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4736', '37410', 'Javier Martinez', '177610', '1988-09-02 00:00:00', '190.5', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4263', '37550', 'Hugo Almeida', '138984', '1984-05-23 00:00:00', '190.5', '214');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10354', '37678', 'Tobias Sippel', '177475', '1988-03-22 00:00:00', '180.34', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2885', '37783', 'Edu', '140526', '1981-11-30 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6598', '37879', 'Marc Torrejon Moya', '173179', '1986-02-18 00:00:00', '187.96', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10232', '38167', 'Thomas Kleine', '11998', '1977-12-28 00:00:00', '190.5', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9957', '38181', 'Stephan Schrock', '169408', '1986-08-21 00:00:00', '170.18', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10476', '38182', 'Torsten Oehrl', '169407', '1986-01-07 00:00:00', '193.04', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6980', '38188', 'Martin Lanig', '135069', '1984-07-11 00:00:00', '190.5', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9922', '38190', 'Stefan Reisinger', '136124', '1981-09-14 00:00:00', '185.42', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('942', '38263', 'Aristide Bance', '162245', '1984-09-19 00:00:00', '193.04', '205');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9421', '38364', 'Sami Allagui', '168950', '1986-05-28 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5427', '38398', 'Juan Arango', '156776', '1980-05-17 00:00:00', '180.34', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2252', '38432', 'Dante', '158625', '1983-10-18 00:00:00', '187.96', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5378', '38440', 'Joseph Akpala', '176038', '1986-08-24 00:00:00', '185.42', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9902', '38647', 'Stefan Aigner', '176790', '1987-08-20 00:00:00', '182.88', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9624', '38795', 'Sebastien Pocognoli', '163369', '1987-08-01 00:00:00', '180.34', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('993', '38842', 'Arthur Boka', '49116', '1983-04-02 00:00:00', '165.1', '143');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8117', '39022', 'Oliver Fink', '167452', '1982-06-06 00:00:00', '187.96', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9870', '39032', 'Sotirios Kyrgiakos', '100932', '1979-07-23 00:00:00', '193.04', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10126', '39045', 'Szabolcs Huszti', '137080', '1983-04-18 00:00:00', '172.72', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8652', '39106', 'Piotr Trochowski', '121945', '1984-03-22 00:00:00', '170.18', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6768', '39141', 'Marcus Berg', '176733', '1986-08-17 00:00:00', '182.88', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9254', '39379', 'Roy Beerens', '169978', '1987-12-22 00:00:00', '172.72', '139');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9863', '39455', 'Sokratis Papastathopoulos', '172879', '1988-06-09 00:00:00', '185.42', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('420', '39566', 'Alex Manninger', '6895', '1977-06-04 00:00:00', '187.96', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9698', '39834', 'Sergio Pinto', '136941', '1980-10-16 00:00:00', '175.26', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4642', '39840', 'Jan Schlaudraff', '126925', '1983-07-18 00:00:00', '180.34', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('717', '39841', 'Andreas Beck', '176687', '1987-03-13 00:00:00', '180.34', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1252', '39842', 'Bernd Nehrig', '177521', '1986-09-28 00:00:00', '180.34', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4490', '39847', 'Ivo Ilicevic', '177398', '1986-11-14 00:00:00', '175.26', '139');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8143', '40054', 'Olivier Occean', '152603', '1981-10-23 00:00:00', '185.42', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8547', '40093', 'Per Nilsson', '24932', '1982-09-15 00:00:00', '190.5', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9321', '40094', 'Rune Almenning Jarstein', '104389', '1984-09-29 00:00:00', '190.5', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8544', '40108', 'Per Ciljan Skjelbred', '152996', '1987-06-16 00:00:00', '175.26', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1698', '40176', 'Chinedu Obasi', '164478', '1986-06-01 00:00:00', '187.96', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10631', '40193', 'Vieirinha', '177553', '1986-01-24 00:00:00', '172.72', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1840', '40203', 'Ciprian Marica', '147921', '1985-10-02 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9228', '40605', 'Ronny', '169126', '1986-05-11 00:00:00', '175.26', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6997', '40735', 'Martin Stranzl', '1611', '1980-06-16 00:00:00', '190.5', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5091', '40985', 'Johannes van den Bergh', '183490', '1986-11-21 00:00:00', '182.88', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10842', '40992', 'Wolfgang Hesl', '183070', '1986-01-13 00:00:00', '185.42', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9211', '41087', 'Ron-Robert Zieler', '186148', '1989-02-12 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10892', '41618', 'Yann Sommer', '177683', '1988-12-17 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6845', '41667', 'Marius Stankevicius', '49025', '1981-07-15 00:00:00', '190.5', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9599', '41927', 'Sebastian Proedl', '177578', '1987-06-21 00:00:00', '193.04', '203');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4089', '41930', 'Gyorgy Garics', '138129', '1984-03-08 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3721', '42119', 'Gelson Fernandes', '158438', '1986-09-02 00:00:00', '177.8', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3160', '42297', 'Fabian Lustenberger', '177019', '1988-05-02 00:00:00', '180.34', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('11061', '42860', 'Zlatko Junuzovic', '173474', '1987-09-26 00:00:00', '172.72', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('726', '42873', 'Andreas Ivanschitz', '42521', '1983-10-15 00:00:00', '182.88', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8786', '42909', 'Ramazan Oezcan', '152211', '1984-06-28 00:00:00', '187.96', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3099', '42971', 'Erwin Hoffer', '159354', '1987-04-14 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1751', '43061', 'Christian Fuchs', '139313', '1986-04-07 00:00:00', '185.42', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8713', '43208', 'Radoslav Zabavnik', '141092', '1980-09-16 00:00:00', '180.34', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7416', '43210', 'Michal Kadlec', '167308', '1984-12-13 00:00:00', '185.42', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7567', '43223', 'Milan Petrzela', '181199', '1983-06-19 00:00:00', '170.18', '143');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4555', '43319', 'Jakub Blaszczykowski', '164994', '1985-12-14 00:00:00', '175.26', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6927', '45254', 'Markus Suttner', '169345', '1987-04-16 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3424', '45272', 'Florian Klein', '161857', '1986-11-17 00:00:00', '182.88', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6614', '45464', 'Marcel De Jong', '164581', '1986-10-15 00:00:00', '175.26', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7300', '46875', 'Mehdi Benatia', '177509', '1987-04-17 00:00:00', '190.5', '203');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2603', '47357', 'Didier Konan Ya', '179589', '1984-05-22 00:00:00', '175.26', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2988', '47547', 'Emiliano Insua', '179696', '1989-01-07 00:00:00', '180.34', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8783', '49586', 'Ralf Faehrmann', '179783', '1988-09-27 00:00:00', '195.58', '209');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3520', '49825', 'Franco Di Santo', '186405', '1989-04-07 00:00:00', '193.04', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6637', '49847', 'Marcelo Diaz', '176930', '1986-12-30 00:00:00', '165.1', '139');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3937', '49885', 'Gonzalo Jara', '194795', '1985-08-29 00:00:00', '177.8', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1013', '49939', 'Arturo Vidal', '181872', '1987-05-22 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('178', '50345', 'Adrian Ramos', '176619', '1986-01-22 00:00:00', '185.42', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1658', '50638', 'Charles Aranguiz', '199042', '1989-04-17 00:00:00', '170.18', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2891', '50661', 'Eduardo Vargas', '206655', '1989-11-20 00:00:00', '175.26', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5547', '51841', 'Junior Diaz', '188013', '1983-09-12 00:00:00', '185.42', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10408', '52243', 'Tomas Rincon', '191053', '1988-01-13 00:00:00', '175.26', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7251', '58346', 'Max Kruse', '183574', '1988-03-19 00:00:00', '180.34', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4329', '58351', 'Ibrahima Traore', '183909', '1988-04-21 00:00:00', '172.72', '134');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9921', '58354', 'Stefan Reinartz', '189246', '1989-01-01 00:00:00', '187.96', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5493', '59595', 'Julian Baumgartlinger', '189606', '1988-01-02 00:00:00', '182.88', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10162', '66578', 'Teemu Pukki', '190362', '1990-03-29 00:00:00', '180.34', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6284', '66757', 'Lucas Hradecky', '190941', '1989-11-24 00:00:00', '190.5', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8826', '66940', 'Raul Marcelo Bobadilla', '183249', '1987-06-18 00:00:00', '180.34', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1181', '68253', 'Benedikt Hoewedes', '179784', '1988-02-29 00:00:00', '187.96', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8682', '68813', 'Przemyslaw Tyton', '176094', '1987-01-04 00:00:00', '193.04', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1006', '69008', 'Artur Sobiech', '189447', '1990-06-12 00:00:00', '185.42', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7628', '69149', 'Mitchell Langerak', '182435', '1988-08-22 00:00:00', '193.04', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6426', '69259', 'Lukasz Zaluska', '105533', '1982-06-16 00:00:00', '187.96', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3554', '69833', 'Frantisek Rajtoral', '180840', '1986-03-12 00:00:00', '177.8', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7390', '70288', 'Michael Parkhurst', '164839', '1984-01-24 00:00:00', '180.34', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4733', '70409', 'Javier Hernandez', '178224', '1988-06-01 00:00:00', '175.26', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9050', '71017', 'Robert Tesche', '183632', '1987-05-27 00:00:00', '180.34', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7864', '71399', 'Neven Subotic', '183556', '1988-12-10 00:00:00', '190.5', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9766', '71560', 'Sidney Sam', '177934', '1988-01-31 00:00:00', '175.26', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('846', '71605', 'Anthony Modeste', '182212', '1988-04-14 00:00:00', '187.96', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7736', '71651', 'Mu Kanazaki', '213061', '1989-02-16 00:00:00', '180.34', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('312', '71768', 'Albin Ekdal', '181318', '1989-07-28 00:00:00', '185.42', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10306', '72707', 'Tim Matavz', '181780', '1989-01-13 00:00:00', '187.96', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6515', '72735', 'Mame Biram Diouf', '187084', '1987-12-16 00:00:00', '185.42', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1042', '72813', 'Atsuto Uchida', '191541', '1988-03-27 00:00:00', '175.26', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4210', '73167', 'Henrik Mkhitaryan', '192883', '1989-01-21 00:00:00', '177.8', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8089', '73409', 'Oerjan Haaskjold Nyland', '185427', '1990-09-10 00:00:00', '193.04', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3048', '73448', 'Eren Derdiyok', '179972', '1988-06-12 00:00:00', '190.5', '203');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8722', '75397', 'Rafa Lopez', '171067', '1985-04-09 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6825', '75447', 'Mario Mandzukic', '181783', '1986-05-21 00:00:00', '190.5', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1646', '78314', 'Ceyhun Gulselam', '180409', '1987-12-25 00:00:00', '193.04', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6653', '78908', 'Marcelo', '180334', '1987-05-25 00:00:00', '190.5', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('999', '79982', 'Artjoms Rudnevs', '192302', '1988-01-13 00:00:00', '182.88', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7517', '80229', 'Miiko Albornoz', '192128', '1990-11-30 00:00:00', '180.34', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4171', '80291', 'Heinrich Schmidtgal', '183064', '1985-11-20 00:00:00', '175.26', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('108', '89240', 'Adam Hlousek', '181205', '1988-12-20 00:00:00', '187.96', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10555', '91984', 'Valentin Stocker', '183187', '1989-04-12 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9852', '93064', 'Slobodan Rajkovic', '183606', '1989-02-03 00:00:00', '190.5', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9039', '93447', 'Robert Lewandowski', '188545', '1988-08-21 00:00:00', '185.42', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9165', '94009', 'Romain Bregerie', '178032', '1986-08-09 00:00:00', '190.5', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8810', '94139', 'Raphael Wolf', '186941', '1988-06-06 00:00:00', '190.5', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4837', '94164', 'Jens Wemmer', '191259', '1985-10-31 00:00:00', '185.42', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4331', '94289', 'Idir Ouali', '184927', '1988-05-21 00:00:00', '175.26', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5751', '94652', 'Kevin Grosskreutz', '188352', '1988-07-19 00:00:00', '185.42', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10382', '94658', 'Tom Mickel', '189387', '1989-04-19 00:00:00', '182.88', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4629', '94666', 'Jan Hochscheidt', '198914', '1987-10-04 00:00:00', '180.34', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6626', '94685', 'Marcel Schmelzer', '188802', '1988-01-22 00:00:00', '180.34', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1819', '94690', 'Christopher Noethe', '186939', '1988-01-03 00:00:00', '182.88', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10112', '94841', 'Sven Ulreich', '186569', '1988-08-03 00:00:00', '193.04', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3422', '94876', 'Florian Jungwirth', '189397', '1989-01-27 00:00:00', '180.34', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('273', '94883', 'Alban Meha', '203822', '1986-04-26 00:00:00', '175.26', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10111', '94885', 'Sven Schipplock', '200922', '1988-11-08 00:00:00', '185.42', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4249', '94886', 'Holger Badstuber', '192620', '1989-03-13 00:00:00', '190.5', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2103', '94915', 'Daniel Brosinski', '189043', '1988-07-17 00:00:00', '177.8', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5975', '94916', 'Lars Stindl', '187072', '1988-08-26 00:00:00', '180.34', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10455', '95078', 'Toni Kroos', '182521', '1990-01-04 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9585', '95081', 'Sebastian Langkamp', '183568', '1988-01-15 00:00:00', '190.5', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3062', '95082', 'Eric Maxim Choupo-Moting', '183569', '1989-03-23 00:00:00', '190.5', '201');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9513', '95094', 'Sascha Moelders', '183712', '1985-03-20 00:00:00', '187.96', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3156', '95228', 'Fabian Frei', '183346', '1989-01-08 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1777', '97727', 'Christian Strohdiek', '183640', '1988-01-22 00:00:00', '193.04', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10155', '97731', 'Tayfun Pektuerk', '183661', '1988-05-13 00:00:00', '175.26', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2165', '97734', 'Daniel Schwaab', '183426', '1988-08-23 00:00:00', '187.96', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4828', '97746', 'Jens Grahl', '183513', '1988-09-22 00:00:00', '193.04', '205');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7924', '97747', 'Nicolai Mueller', '183871', '1987-09-25 00:00:00', '172.72', '146');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10317', '97752', 'Timo Gebhart', '183344', '1989-04-12 00:00:00', '182.88', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10135', '97762', 'Takashi Inui', '205114', '1988-06-02 00:00:00', '170.18', '139');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3289', '101201', 'Felipe', '184820', '1987-08-07 00:00:00', '187.96', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5955', '101501', 'Kyriakos Papadopoulos', '184477', '1992-02-23 00:00:00', '182.88', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10493', '102301', 'Tunay Torun', '189263', '1990-04-21 00:00:00', '175.26', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9015', '103686', 'Robbie Kruse', '182440', '1988-10-05 00:00:00', '180.34', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1144', '104045', 'Bas Dost', '189068', '1989-05-31 00:00:00', '195.58', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2264', '104646', 'Dario Lezcano', '204226', '1990-06-30 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1587', '106309', 'Carlos Zambrano', '187132', '1989-07-10 00:00:00', '185.42', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7992', '106369', 'Nikita Rukavytsya', '181866', '1987-06-22 00:00:00', '182.88', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('11064', '107281', 'Zoltan Stieber', '179712', '1988-10-16 00:00:00', '175.26', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10179', '107588', 'Theodor Gebre Selassie', '186330', '1986-12-24 00:00:00', '180.34', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('990', '107717', 'Artem Kravets', '188058', '1989-06-03 00:00:00', '187.96', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8028', '107920', 'Nils Petersen', '183580', '1988-12-06 00:00:00', '187.96', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10954', '108461', 'Yohandry Orozco', '202559', '1991-03-19 00:00:00', '165.1', '121');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10588', '108994', 'Vegar Eggen Hedenstad', '186267', '1991-06-26 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6591', '109087', 'Marc Pfitzner', '203456', '1984-08-28 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4650', '109088', 'Jan Washausen', '203450', '1988-10-12 00:00:00', '185.42', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8165', '109615', 'Omer Toprak', '185239', '1989-07-21 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6898', '110148', 'Marko Arnautovic', '184200', '1989-04-19 00:00:00', '193.04', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2155', '111858', 'Daniel Opare', '190494', '1990-10-18 00:00:00', '175.26', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6702', '111897', 'Marco Fabian', '186307', '1989-07-21 00:00:00', '170.18', '143');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1678', '112119', 'Charlison Benschop', '193057', '1989-08-21 00:00:00', '190.5', '201');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('175', '112976', 'Adrian Nikci', '187850', '1989-11-10 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9185', '112978', 'Roman Buerki', '189117', '1990-11-14 00:00:00', '187.96', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4829', '113340', 'Jens Hegeler', '189235', '1988-01-22 00:00:00', '193.04', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7605', '113902', 'Mirko Boland', '189490', '1987-04-23 00:00:00', '175.26', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6754', '113976', 'Marcos Antonio', '138880', '1983-05-25 00:00:00', '187.96', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10467', '114025', 'Tony Jantschke', '190520', '1990-04-07 00:00:00', '177.8', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('559', '114044', 'Alvaro Dominguez', '190150', '1989-05-15 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4634', '114650', 'Jan Moravek', '183220', '1989-11-01 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7020', '114737', 'Marwin Hitz', '190243', '1987-09-18 00:00:00', '193.04', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3157', '114963', 'Fabian Giefer', '193222', '1990-05-17 00:00:00', '195.58', '205');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8929', '115591', 'Ricardo Rodriguez', '193352', '1992-08-25 00:00:00', '180.34', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5876', '115670', 'Konstantin Rausch', '186274', '1990-03-15 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4246', '115847', 'Hiroshi Kiyotake', '210126', '1989-11-12 00:00:00', '172.72', '146');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3727', '116603', 'Genki Omae', '212536', '1989-12-10 00:00:00', '165.1', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4245', '116645', 'Hiroki Sakai', '208520', '1990-04-12 00:00:00', '185.42', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10243', '116772', 'Thomas Mueller', '189596', '1989-09-13 00:00:00', '185.42', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4932', '117432', 'Jiloan Hamad', '187339', '1990-11-06 00:00:00', '172.72', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1068', '119427', 'Aytac Sulu', '223142', '1985-12-11 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9605', '119525', 'Sebastian Rudy', '189251', '1990-02-28 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9851', '119838', 'Slobodan Medojevic', '207523', '1990-11-20 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9053', '120076', 'Robert Zillner', '204137', '1985-08-04 00:00:00', '182.88', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7112', '120428', 'Mathis Bolly', '190490', '1990-11-14 00:00:00', '185.42', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7761', '120845', 'Nabil Bahoui', '192126', '1991-02-05 00:00:00', '187.96', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9653', '121093', 'Sercan Sararer', '189077', '1989-11-27 00:00:00', '180.34', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2317', '121633', 'David Alaba', '197445', '1992-06-24 00:00:00', '180.34', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6623', '127945', 'Marcel Risse', '189234', '1989-12-17 00:00:00', '182.88', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9591', '128689', 'Sebastian Mielitz', '193312', '1989-07-18 00:00:00', '187.96', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6127', '128827', 'Lewis Holtby', '188154', '1990-09-18 00:00:00', '175.26', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3290', '129462', 'Felipe', '188234', '1987-05-15 00:00:00', '193.04', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('510', '129918', 'Alfred Finnbogason', '195586', '1989-02-01 00:00:00', '185.42', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6725', '129944', 'Marco Reus', '188350', '1989-05-31 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8246', '130118', 'Pablo De Blasis', '210950', '1988-02-04 00:00:00', '165.1', '143');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5221', '130667', 'Joo-Ho Park', '191566', '1987-01-16 00:00:00', '175.26', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9655', '132843', 'Serey Die', '188768', '1984-11-07 00:00:00', '177.8', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('154', '132844', 'Admir Mehmedi', '188770', '1991-03-16 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8595', '134217', 'Philipp Bargfrede', '193311', '1989-03-03 00:00:00', '175.26', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8606', '135247', 'Philipp Zulechner', '216186', '1990-04-12 00:00:00', '182.88', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10059', '140819', 'Steven Zuber', '190059', '1991-08-17 00:00:00', '180.34', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8002', '140965', 'Nikola Djurdjic', '198611', '1986-04-01 00:00:00', '182.88', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5422', '140988', 'Jozsef Varga', '196220', '1988-06-06 00:00:00', '175.26', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8361', '141082', 'Patrick Ziegler', '210280', '1990-02-09 00:00:00', '187.96', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2560', '141113', 'Dennis Diekmeier', '189388', '1989-10-20 00:00:00', '187.96', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10348', '141114', 'Tobias Kempe', '199413', '1989-06-27 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10322', '141115', 'Timo Perthel', '192617', '1989-02-11 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2122', '141145', 'Daniel Didavi', '193886', '1990-02-21 00:00:00', '180.34', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1316', '141160', 'Boris Vukcevic', '193281', '1990-03-16 00:00:00', '182.88', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5508', '141161', 'Julian Schieber', '190664', '1989-02-13 00:00:00', '185.42', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9603', '141370', 'Sebastian Rode', '200215', '1990-10-11 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7310', '141396', 'Mehmet Ekici', '189595', '1990-03-25 00:00:00', '180.34', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7559', '141699', 'Milan Badelj', '201144', '1989-02-25 00:00:00', '185.42', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10459', '143442', 'Toni Sunjic', '201343', '1988-12-15 00:00:00', '193.04', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9747', '144993', 'Shinji Kagawa', '189358', '1989-03-17 00:00:00', '175.26', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1202', '145536', 'Benjamin Huebner', '189433', '1989-07-04 00:00:00', '193.04', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9952', '145545', 'Stephan Hain', '187076', '1988-09-27 00:00:00', '177.8', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5797', '145550', 'Kevin Trapp', '188943', '1990-07-08 00:00:00', '187.96', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9192', '145551', 'Roman Neustaedter', '186296', '1988-02-18 00:00:00', '190.5', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('623', '145561', 'Anderson', '189488', '1988-01-10 00:00:00', '187.96', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3234', '147614', 'Fallou Diagne', '194196', '1989-08-14 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6076', '147726', 'Leon Balogun', '188182', '1988-06-28 00:00:00', '190.5', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6384', '147729', 'Luiz Gustavo', '185221', '1987-07-23 00:00:00', '187.96', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7647', '147733', 'Mohamed Amsif', '189248', '1989-02-07 00:00:00', '187.96', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('451', '147735', 'Alexander Esswein', '189272', '1990-03-25 00:00:00', '182.88', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6743', '149909', 'Marco Terrazzino', '190667', '1991-04-15 00:00:00', '175.26', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6440', '150201', 'Luuk de Jong', '189805', '1990-08-27 00:00:00', '187.96', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10406', '150292', 'Tomas Pekhart', '184290', '1989-05-26 00:00:00', '193.04', '205');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5463', '150327', 'Juanan', '189391', '1987-04-27 00:00:00', '193.04', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8625', '150565', 'Pierre-Emerick Aubameyang', '188567', '1989-06-18 00:00:00', '187.96', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1484', '150922', 'Caiuby', '189196', '1988-07-14 00:00:00', '182.88', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6246', '154245', 'Luca Caldirola', '199776', '1991-02-01 00:00:00', '187.96', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1148', '155534', 'Bastian Oczipka', '189390', '1989-01-12 00:00:00', '185.42', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2780', '156726', 'Douglas Costa', '190483', '1990-09-14 00:00:00', '172.72', '143');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3954', '157252', 'Gotoku Sakai', '207472', '1991-03-14 00:00:00', '175.26', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10330', '158234', 'Timothy Chandler', '202316', '1990-03-29 00:00:00', '185.42', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10537', '158257', 'Vaclav Kadlec', '189961', '1992-05-20 00:00:00', '180.34', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4630', '158879', 'Jan Kirchhoff', '190752', '1990-10-01 00:00:00', '195.58', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8177', '159386', 'Orhan Ademi', '209965', '1991-10-28 00:00:00', '187.96', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7052', '159452', 'Mateo Pavlovic', '212449', '1990-06-09 00:00:00', '195.58', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3484', '159594', 'Francis Coquelin', '189271', '1991-05-13 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2618', '161396', 'Diego Contento', '194727', '1990-05-01 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5395', '161421', 'Joshua Guilavogui', '198118', '1990-09-19 00:00:00', '187.96', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1843', '161660', 'Ciro Immobile', '192387', '1990-02-20 00:00:00', '185.42', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2236', '162679', 'Danny Latza', '189410', '1989-12-07 00:00:00', '177.8', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9478', '162680', 'Sandro Sirigu', '190648', '1988-10-07 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4468', '163670', 'Ivan Perisic', '181458', '1989-02-02 00:00:00', '185.42', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3296', '164259', 'Felix Kroos', '191066', '1991-03-12 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6602', '164494', 'Marc Vucinovic', '216386', '1988-09-19 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10999', '166449', 'Yuya Osako', '191565', '1990-05-18 00:00:00', '182.88', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3726', '166452', 'Genki Haraguchi', '217648', '1991-05-09 00:00:00', '177.8', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10136', '166653', 'Takashi Usami', '191388', '1992-05-06 00:00:00', '177.8', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9418', '166917', 'Sambou Yatabare', '192611', '1989-03-02 00:00:00', '190.5', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6613', '166932', 'Marcel Correia', '193679', '1989-05-16 00:00:00', '185.42', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8323', '167008', 'Pascal Gross', '190765', '1991-06-15 00:00:00', '180.34', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4476', '167057', 'Ivan Santini', '208017', '1989-05-21 00:00:00', '190.5', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9581', '167065', 'Sebastian Jung', '192658', '1990-06-22 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('339', '167094', 'Aleksandar Ignjovski', '193211', '1991-01-27 00:00:00', '175.26', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5806', '167589', 'Kevin Vogt', '192641', '1991-09-23 00:00:00', '193.04', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5737', '169200', 'Kevin de Bruyne', '192985', '1991-06-28 00:00:00', '180.34', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('464', '169569', 'Alexander Milosevic', '202605', '1992-01-30 00:00:00', '190.5', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5859', '170322', 'Koen Casteels', '192984', '1992-06-25 00:00:00', '198.12', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4133', '170775', 'Haris Seferovic', '193408', '1992-02-22 00:00:00', '185.42', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7696', '171091', 'Moritz Hartmann', '192728', '1986-06-20 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8616', '171472', 'Pierre Bengtsson', '181343', '1988-04-12 00:00:00', '177.8', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4091', '171548', 'Haavard Nielsen', '190738', '1993-07-15 00:00:00', '187.96', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5049', '171698', 'Joel Matip', '197061', '1991-08-08 00:00:00', '195.58', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5375', '172321', 'Joselu', '173608', '1990-03-27 00:00:00', '193.04', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('985', '172388', 'Aron Johannsson', '203793', '1990-11-10 00:00:00', '182.88', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5546', '172887', 'Junior Caicara', '192427', '1989-04-27 00:00:00', '172.72', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8540', '172901', 'Peniel Kokou Mlapa', '193749', '1991-02-20 00:00:00', '193.04', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10182', '172949', 'Thiago Alcantara', '189509', '1991-04-11 00:00:00', '175.26', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('738', '173461', 'Andrej Kramaric', '216354', '1991-06-19 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10930', '174018', 'Ylli Sallahi', '221734', '1994-04-06 00:00:00', '177.8', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('545', '174093', 'Almog Cohen', '199661', '1988-09-01 00:00:00', '170.18', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2089', '174634', 'Dani Schahin', '192645', '1989-07-09 00:00:00', '187.96', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4254', '176201', 'Hotaru Yamaguchi', '222987', '1990-10-06 00:00:00', '175.26', '141');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10871', '176300', 'Xherdan Shaqiri', '193348', '1991-10-10 00:00:00', '170.18', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6395', '176831', 'Lukas Hinterseer', '200433', '1991-03-28 00:00:00', '193.04', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5644', '176953', 'Karim Onisiwo', '229071', '1992-03-17 00:00:00', '187.96', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4493', '177475', 'Izet Hajrovic', '193780', '1991-08-04 00:00:00', '177.8', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2118', '177698', 'Daniel Davari', '203440', '1988-01-06 00:00:00', '193.04', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6819', '177714', 'Mario Goetze', '192318', '1992-06-03 00:00:00', '175.26', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5987', '177715', 'Lasse Sobiech', '194053', '1991-01-18 00:00:00', '195.58', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2133', '177720', 'Daniel Ginczek', '192445', '1991-04-13 00:00:00', '190.5', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8600', '177941', 'Philipp Hosiner', '204690', '1989-05-15 00:00:00', '177.8', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3088', '177942', 'Ermin Bicakcic', '201860', '1990-01-24 00:00:00', '185.42', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3300', '177953', 'Felix Wiedwald', '197439', '1990-03-15 00:00:00', '190.5', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10314', '178206', 'Timm Klose', '199383', '1988-05-09 00:00:00', '193.04', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3360', '178538', 'Filip Djuricic', '193881', '1992-01-30 00:00:00', '182.88', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5501', '178774', 'Julian Koch', '193313', '1990-11-11 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8113', '178778', 'Oliver Baumann', '193698', '1990-06-02 00:00:00', '187.96', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10365', '178781', 'Tolgay Arslan', '190761', '1990-08-16 00:00:00', '180.34', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7286', '178784', 'Maximillian Beister', '193426', '1990-09-06 00:00:00', '180.34', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1743', '178804', 'Christian Clemens', '193098', '1991-08-04 00:00:00', '177.8', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('670', '178812', 'Andre Schuerrle', '193130', '1990-11-06 00:00:00', '182.88', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4373', '178818', 'Ilkay Guendogan', '186942', '1990-10-24 00:00:00', '180.34', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9598', '178833', 'Sebastian Polter', '192660', '1991-04-01 00:00:00', '190.5', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2856', '179491', 'Edgar Prib', '192732', '1989-12-15 00:00:00', '180.34', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10968', '179511', 'Younes Belhanda', '193738', '1990-02-25 00:00:00', '177.8', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1794', '180126', 'Christoph Moritz', '194089', '1990-01-27 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('465', '181333', 'Alexander Ring', '205895', '1991-04-09 00:00:00', '172.72', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6402', '182892', 'Lukas Rupp', '200469', '1991-01-08 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7198', '182893', 'Matthias Zimmermann', '192567', '1992-06-16 00:00:00', '177.8', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6608', '184554', 'Marc-Andre ter Stegen', '192448', '1992-04-30 00:00:00', '187.96', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6404', '184645', 'Lukas Schmitz', '195258', '1988-10-13 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4810', '184821', 'Jeffrey Bruma', '195363', '1991-11-13 00:00:00', '187.96', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7182', '185014', 'Matthew Leckie', '195033', '1991-02-04 00:00:00', '180.34', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5756', '185175', 'Kevin Kampl', '195365', '1990-10-09 00:00:00', '177.8', '143');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('119', '185336', 'Adam Matuschyk', '192471', '1989-02-14 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4527', '187666', 'Jacques Zoua Daogari', '198428', '1991-09-06 00:00:00', '185.42', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2107', '188498', 'Daniel Caligiuri', '197083', '1988-01-15 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6237', '189237', 'Luc Castaignos', '198175', '1992-09-27 00:00:00', '187.96', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3165', '189982', 'Fabian Schaer', '210047', '1991-12-20 00:00:00', '185.42', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6340', '190522', 'Luis Advincula', '204539', '1990-03-02 00:00:00', '177.8', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6705', '190796', 'Marco Hoeger', '198113', '1989-09-16 00:00:00', '182.88', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3882', '191080', 'Giulio Donati', '197786', '1990-02-05 00:00:00', '177.8', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8345', '192625', 'Patrick Herrmann', '198077', '1991-02-12 00:00:00', '177.8', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2175', '193176', 'Daniel Williams', '198194', '1989-03-08 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8627', '193530', 'Pierre-Michel Lasogga', '198196', '1991-12-15 00:00:00', '187.96', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8312', '193866', 'Papy Djilobodji', '148337', '1988-12-01 00:00:00', '193.04', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9904', '193901', 'Stefan Bell', '198352', '1991-08-24 00:00:00', '193.04', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5407', '194533', 'Josip Drmic', '198504', '1992-08-08 00:00:00', '180.34', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6973', '195207', 'Martin Hinteregger', '201922', '1992-09-07 00:00:00', '185.42', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9917', '196203', 'Stefan Mitrovic', '209547', '1990-05-22 00:00:00', '187.96', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9498', '196205', 'Santiago Garcia', '200278', '1988-07-08 00:00:00', '190.5', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10697', '196311', 'Vladimir Darida', '201262', '1990-08-08 00:00:00', '170.18', '141');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('858', '196366', 'Anthony Ujah', '198554', '1990-11-20 00:00:00', '177.8', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7359', '198316', 'Michael Gregoritsch', '199439', '1994-04-18 00:00:00', '193.04', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8605', '200962', 'Philipp Wollscheid', '198202', '1989-03-06 00:00:00', '193.04', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1038', '200964', 'Athanasios Petsos', '198849', '1991-06-05 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1807', '200965', 'Christopher Avevor', '198856', '1992-02-11 00:00:00', '185.42', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4496', '201888', 'Ja-Cheol Koo', '182152', '1989-02-27 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10507', '204169', 'Uffe Bech', '201526', '1993-01-13 00:00:00', '170.18', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4664', '205893', 'Jannik Vestergaard', '202849', '1992-08-03 00:00:00', '198.12', '216');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5856', '206182', 'Knowledge Musona', '194171', '1990-06-21 00:00:00', '175.26', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2212', '207039', 'Danilo Soares', '216283', '1991-10-29 00:00:00', '170.18', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3970', '207236', 'Granit Xhaka', '199503', '1992-09-27 00:00:00', '185.42', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10538', '207542', 'Vaclav Pilar', '199334', '1988-10-13 00:00:00', '170.18', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10098', '208208', 'Suleyman Koc', '211815', '1989-06-09 00:00:00', '177.8', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5635', '208230', 'Karim Bellarabi', '202857', '1990-04-08 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5976', '210822', 'Lars Unnerstall', '199833', '1990-07-20 00:00:00', '198.12', '220');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8455', '212156', 'Pavel Kaderabek', '203605', '1992-04-25 00:00:00', '182.88', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8480', '212377', 'Pawel Olkowski', '204687', '1990-02-13 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8180', '212470', 'Oriol Romeu', '199576', '1991-09-24 00:00:00', '182.88', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9868', '212814', 'Sonny Kittel', '199912', '1993-01-06 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10319', '212815', 'Timo Horn', '200316', '1993-05-12 00:00:00', '193.04', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6890', '212819', 'Mark Uth', '200318', '1991-08-24 00:00:00', '182.88', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7950', '212865', 'Nicolas Hoefler', '199897', '1990-03-09 00:00:00', '180.34', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4237', '212867', 'Heung-Min Son', '200104', '1992-07-08 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9040', '212875', 'Robert Mak', '198193', '1991-03-08 00:00:00', '177.8', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3433', '212879', 'Florian Trinks', '192437', '1992-03-11 00:00:00', '182.88', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10364', '212881', 'Tolga Cigerci', '200754', '1992-03-23 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7697', '212892', 'Moritz Leitner', '200857', '1992-12-08 00:00:00', '177.8', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5807', '212893', 'Kevin Volland', '200610', '1992-07-30 00:00:00', '177.8', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('654', '212915', 'Andre Hoffmann', '199779', '1993-02-28 00:00:00', '187.96', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7900', '212960', 'Nico Schulz', '200536', '1993-04-01 00:00:00', '180.34', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7131', '213485', 'Matija Nastasic', '205362', '1993-03-28 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5313', '213502', 'Jose Campana', '199823', '1993-05-31 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7138', '214123', 'Mats Moeller Daehli', '201877', '1995-03-02 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1251', '215168', 'Bernd Leno', '192563', '1992-03-04 00:00:00', '190.5', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8804', '215170', 'Raphael Holzhauser', '204493', '1993-02-16 00:00:00', '193.04', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2920', '215804', 'Elias Kachunga', '201514', '1992-04-22 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8169', '229723', 'Ondrej Petrak', '204939', '1992-03-11 00:00:00', '185.42', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7015', '229759', 'Marvin Plattenhardt', '192557', '1992-01-26 00:00:00', '180.34', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8101', '229844', 'Ola John', '202101', '1992-05-19 00:00:00', '177.8', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6921', '230910', 'Markus Mendler', '201539', '1993-01-07 00:00:00', '172.72', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3591', '231753', 'Frederik Soerensen', '201342', '1992-04-14 00:00:00', '193.04', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3295', '237541', 'Felix Klaus', '202088', '1992-09-13 00:00:00', '177.8', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5090', '237542', 'Johannes Geis', '202087', '1993-08-17 00:00:00', '180.34', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9816', '238438', 'Simon Zoller', '202276', '1991-06-26 00:00:00', '177.8', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4523', '238838', 'Jacopo Sala', '197777', '1991-12-05 00:00:00', '182.88', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('512', '239946', 'Alfredo Morales', '202107', '1990-05-12 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8969', '240338', 'Richard Strebinger', '209990', '1993-02-14 00:00:00', '193.04', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7197', '240348', 'Matthias Ostrzolek', '202115', '1990-06-05 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9386', '240367', 'Salif Sane', '201956', '1990-08-25 00:00:00', '195.58', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2225', '240537', 'Danny da Costa', '202429', '1993-07-13 00:00:00', '185.42', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8159', '240539', 'Omar Elabdellaoui', '190824', '1991-12-05 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5198', '240837', 'Jonathan Schmid', '201982', '1990-06-26 00:00:00', '177.8', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2757', '242308', 'Dong-Won Ji', '199266', '1991-05-28 00:00:00', '187.96', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9066', '242709', 'Roberto Firmino', '201942', '1991-10-02 00:00:00', '180.34', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5496', '243164', 'Julian Draxler', '202166', '1993-09-20 00:00:00', '187.96', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8212', '243425', 'Ouasim Bouy', '203399', '1993-06-11 00:00:00', '185.42', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9926', '243493', 'Stefan Thesker', '207531', '1991-04-11 00:00:00', '190.5', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8538', '243827', 'Pelle Jensen', '204467', '1992-05-24 00:00:00', '193.04', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10389', '243828', 'Tom Trybull', '204193', '1993-03-09 00:00:00', '180.34', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('652', '243829', 'Andre Hahn', '211862', '1990-08-13 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4812', '245315', 'Jeffrey Gouweleeuw', '202201', '1991-07-10 00:00:00', '187.96', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9942', '245433', 'Stefanos Kapinos', '205878', '1994-03-18 00:00:00', '195.58', '201');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4839', '245526', 'Jeong-Ho Hong', '200588', '1989-08-12 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1183', '246571', 'Benedikt Roecker', '205451', '1989-11-19 00:00:00', '198.12', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('467', '248437', 'Alexander Schwolow', '202789', '1992-06-02 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('667', '251244', 'Andre Ramalho Silva', '210007', '1992-02-16 00:00:00', '182.88', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3306', '253410', 'Ferhan Hasani', '205138', '1990-06-18 00:00:00', '187.96', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1364', '258245', 'Branimir Hrgota', '209504', '1993-01-12 00:00:00', '185.42', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9092', '259296', 'Robin Knoche', '203030', '1992-05-22 00:00:00', '190.5', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3370', '259439', 'Filip Mladenovic', '221969', '1991-08-15 00:00:00', '180.34', '143');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6093', '260470', 'Leonardo Bittencourt', '203106', '1993-12-19 00:00:00', '170.18', '139');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10705', '261653', 'Vladlen Yurchenko', '223759', '1994-01-22 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10261', '264190', 'Thorgan Hazard', '203486', '1993-03-29 00:00:00', '175.26', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5808', '264221', 'Kevin Wimmer', '209997', '1992-11-15 00:00:00', '187.96', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8626', '266523', 'Pierre-Emil Hoejbjerg', '213648', '1995-08-05 00:00:00', '185.42', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6293', '267380', 'Lucas Piazon', '203038', '1994-01-20 00:00:00', '182.88', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7004', '269666', 'Marvin Bakalorz', '203979', '1989-09-13 00:00:00', '180.34', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1792', '269788', 'Christoph Kramer', '204024', '1991-02-19 00:00:00', '190.5', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6978', '275328', 'Martin Kobylanski', '204044', '1994-03-08 00:00:00', '177.8', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9225', '276676', 'Ronny Garbuschewski', '209252', '1986-02-23 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8592', '276700', 'Philip Heise', '211872', '1991-06-20 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9227', '276708', 'Ronny Philp', '208959', '1989-01-28 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('915', '276738', 'Antonio Ruediger', '205452', '1993-03-03 00:00:00', '190.5', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3429', '276760', 'Florian Niederlechner', '211899', '1990-10-24 00:00:00', '185.42', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7893', '276791', 'Niclas Fuellkrug', '205431', '1993-02-09 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('954', '277460', 'Arkadiusz Milik', '205175', '1994-02-28 00:00:00', '185.42', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5502', '278815', 'Julian Korb', '204307', '1992-03-21 00:00:00', '177.8', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4657', '278823', 'Janek Sternberg', '204420', '1992-10-19 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5093', '278831', 'John Anthony Brooks', '204082', '1993-01-28 00:00:00', '193.04', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10992', '278863', 'Yunus Malli', '192565', '1992-02-24 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9738', '278864', 'Shawn Parker', '204427', '1993-03-07 00:00:00', '177.8', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8356', '278865', 'Patrick Rakovsky', '205084', '1993-06-02 00:00:00', '187.96', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8090', '278867', 'Oezkan Yildirim', '204436', '1993-04-10 00:00:00', '172.72', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3364', '281012', 'Filip Kostic', '208574', '1992-11-01 00:00:00', '182.88', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4378', '281086', 'Immanuel Hoehn', '205588', '1991-12-23 00:00:00', '182.88', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5883', '282182', 'Konstantinos Stafylidis', '202151', '1993-12-02 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2111', '282674', 'Daniel Carvajal', '204963', '1992-01-11 00:00:00', '172.72', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5428', '282691', 'Juan Bernat', '205069', '1993-03-01 00:00:00', '170.18', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1241', '286131', 'Berkay Tolga Dabanli', '212980', '1990-06-27 00:00:00', '190.5', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4540', '287231', 'Jairo', '205869', '1993-07-11 00:00:00', '172.72', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6224', '287894', 'Loris Karius', '203775', '1993-06-22 00:00:00', '190.5', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('11048', '290868', 'Zhi-Gin Lam', '206209', '1991-06-04 00:00:00', '175.26', '146');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3417', '291015', 'Florian Hartherz', '202512', '1993-05-29 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4926', '291425', 'Jhon Cordoba', '210287', '1993-05-11 00:00:00', '185.42', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7634', '298823', 'Mitchell Weiser', '206591', '1994-04-21 00:00:00', '175.26', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7278', '298915', 'Maximilian Arnold', '206511', '1994-05-27 00:00:00', '182.88', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('493', '298923', 'Alexandru Maxim', '211061', '1990-07-08 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('331', '303484', 'Alejandro Galvez', '199487', '1989-06-06 00:00:00', '190.5', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2750', '303800', 'Dominique Heintz', '206198', '1993-08-15 00:00:00', '187.96', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2742', '303905', 'Dominik Kohr', '212212', '1994-01-31 00:00:00', '182.88', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7192', '303912', 'Matthias Ginter', '207862', '1994-01-19 00:00:00', '190.5', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8124', '303913', 'Oliver Sorg', '201016', '1990-05-29 00:00:00', '175.26', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10355', '303914', 'Tobias Strobl', '207894', '1990-05-12 00:00:00', '185.42', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9551', '304345', 'Sead Kolasinac', '207993', '1993-06-20 00:00:00', '182.88', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8799', '304348', 'Rani Khedira', '211999', '1994-01-27 00:00:00', '187.96', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8087', '304355', 'Odisseas Vlachodimos', '211990', '1994-04-26 00:00:00', '190.5', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4098', '304733', 'Hakan Calhanoglu', '208128', '1994-02-08 00:00:00', '177.8', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3017', '307021', 'Emre Can', '208333', '1994-01-12 00:00:00', '187.96', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1876', '307069', 'Cleber', '208895', '1990-12-05 00:00:00', '182.88', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5145', '307210', 'Jonas Hector', '208334', '1990-05-27 00:00:00', '185.42', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4949', '309496', 'Jin-Su Kim', '213317', '1992-06-13 00:00:00', '175.26', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('592', '309505', 'Amin Younes', '205966', '1993-08-06 00:00:00', '167.64', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3158', '310355', 'Fabian Holland', '208470', '1990-07-11 00:00:00', '172.72', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1072', '313825', 'Baard Finne', '209264', '1995-02-13 00:00:00', '172.72', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1557', '317822', 'Carlos Gruezo', '221860', '1995-04-19 00:00:00', '170.18', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7208', '318618', 'Mattia Maggio', '208940', '1994-02-22 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('54', '324910', 'Abdul Rahman Baba', '209620', '1994-07-02 00:00:00', '177.8', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3057', '331528', 'Eric Durm', '207920', '1992-05-12 00:00:00', '182.88', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5147', '331542', 'Jonas Hofmann', '210324', '1992-07-14 00:00:00', '175.26', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9226', '331625', 'Ronny Marcos', '211849', '1993-10-01 00:00:00', '175.26', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4890', '335436', 'Jerome Gondorf', '211907', '1988-06-26 00:00:00', '175.26', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6084', '343748', 'Leon Goretzka', '209658', '1995-02-06 00:00:00', '187.96', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7007', '343757', 'Marvin Ducksch', '197031', '1994-03-07 00:00:00', '187.96', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4193', '343797', 'Hendrick Zuck', '210304', '1990-07-21 00:00:00', '175.26', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5552', '354495', 'Junior Malanda-Adje', '210248', '1994-08-28 00:00:00', '180.34', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6401', '355347', 'Lukas Raeder', '210019', '1993-12-30 00:00:00', '193.04', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4464', '355349', 'Ivan Paurevic', '197893', '1991-07-01 00:00:00', '193.04', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6610', '355356', 'Marc-Oliver Kempf', '210719', '1995-01-28 00:00:00', '185.42', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6596', '355357', 'Marc Stendera', '210583', '1995-12-10 00:00:00', '172.72', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1755', '355358', 'Christian Guenter', '209846', '1993-02-28 00:00:00', '182.88', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10247', '355362', 'Thomas Pledl', '210237', '1994-05-23 00:00:00', '172.72', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4372', '355363', 'Ilir Azemi', '210314', '1992-02-21 00:00:00', '190.5', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6116', '359202', 'Levent Aycicek', '209988', '1994-02-14 00:00:00', '170.18', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3255', '365624', 'Federico Barba', '211557', '1993-09-01 00:00:00', '187.96', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4483', '375732', 'Iver Fossum', '213777', '1996-07-15 00:00:00', '180.34', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7581', '387727', 'Milos Jojic', '221838', '1992-03-19 00:00:00', '177.8', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4129', '394462', 'Hany Mukhtar', '210021', '1995-03-21 00:00:00', '172.72', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2543', '396884', 'Denis Streker', '212055', '1991-04-06 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10664', '400625', 'Vincenzo Grifo', '212096', '1993-04-07 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10327', '408986', 'Timon Wellenreuther', '223686', '1995-12-03 00:00:00', '185.42', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6960', '413155', 'Martin Angha', '202803', '1994-01-22 00:00:00', '187.96', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5540', '420720', 'Jung-Bin Park', '212574', '1994-02-22 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6790', '423631', 'Marian Sarr', '212628', '1995-01-30 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7996', '425962', 'Niklas Stark', '212977', '1995-04-14 00:00:00', '190.5', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7252', '425963', 'Max Meyer', '212150', '1995-09-18 00:00:00', '172.72', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1669', '426633', 'Charles-Elie Leprevotte', '216503', '1992-10-04 00:00:00', '177.8', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3643', '426873', 'Gaetan Bussmann', '201025', '1991-02-02 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10336', '427062', 'Tin Jedvaj', '215930', '1995-11-28 00:00:00', '182.88', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5848', '429265', 'Kingsley Coman', '213345', '1996-06-13 00:00:00', '177.8', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9915', '433951', 'Stefan Lex', '213117', '1989-11-27 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6844', '434259', 'Marius Gersbeck', '213573', '1995-06-20 00:00:00', '187.96', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1184', '435683', 'Benedikt Saller', '210004', '1992-09-22 00:00:00', '180.34', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5581', '441164', 'Kaan Ayhan', '207790', '1994-11-10 00:00:00', '185.42', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9096', '442575', 'Robin Szarka', '214066', '1991-09-17 00:00:00', '175.26', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('4867', '443966', 'Jeremy Toljan', '214622', '1994-08-08 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7997', '447084', 'Niklas Suele', '212190', '1995-09-03 00:00:00', '195.58', '205');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1763', '448805', 'Christian Mathenia', '215417', '1992-03-31 00:00:00', '187.96', '198');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9584', '448806', 'Sebastian Kerk', '212249', '1994-04-17 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7518', '448859', 'Mijat Gacinovic', '230564', '1995-02-08 00:00:00', '175.26', '146');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('719', '449232', 'Andreas Christensen', '213661', '1996-04-10 00:00:00', '187.96', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10900', '450976', 'Yannick Gerhardt', '212245', '1994-03-13 00:00:00', '182.88', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10326', '450980', 'Timo Werner', '212188', '1996-03-06 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('457', '459000', 'Alexander Hack', '231111', '1993-09-08 00:00:00', '193.04', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5673', '459493', 'Kazuki Nagasawa', '221425', '1991-12-16 00:00:00', '172.72', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10964', '459499', 'Yoshinori Muto', '228717', '1992-07-15 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5398', '460632', 'Joshua Kimmich', '212622', '1995-02-08 00:00:00', '175.26', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5499', '461356', 'Julian Green', '212192', '1995-06-06 00:00:00', '172.72', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('394', '461357', 'Alessandro Schoepf', '220925', '1994-02-07 00:00:00', '177.8', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8986', '462004', 'Rico Strieder', '228644', '1992-07-06 00:00:00', '175.26', '150');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7363', '464500', 'Michael Heinloth', '219448', '1992-02-09 00:00:00', '177.8', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('538', '466482', 'Allan Saint-Maximin', '216388', '1997-03-12 00:00:00', '172.72', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5989', '467318', 'Laszlo Kleinheisler', '231493', '1994-04-08 00:00:00', '172.72', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5175', '469700', 'Jonathan Glao Tah', '213331', '1996-02-11 00:00:00', '193.04', '216');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6483', '469701', 'Mahmoud Dahoud', '218339', '1996-01-01 00:00:00', '177.8', '148');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9914', '469705', 'Stefan Kutschke', '216377', '1988-11-03 00:00:00', '193.04', '196');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5701', '469763', 'Kenan Karaman', '212240', '1994-03-05 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6121', '469764', 'Levin Mete Oztunali', '213134', '1996-03-15 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2589', '476769', 'Deyverson', '215421', '1991-05-08 00:00:00', '187.96', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10757', '487867', 'Wendell', '216466', '1993-07-20 00:00:00', '175.26', '146');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8602', '488298', 'Philipp Max', '212187', '1993-09-30 00:00:00', '177.8', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7316', '493160', 'Melvyn Lorenzen', '220650', '1994-11-26 00:00:00', '187.96', '190');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2465', '501568', 'Davie Selke', '212626', '1995-01-20 00:00:00', '193.04', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10567', '501569', 'Valmir Sulejmani', '220881', '1996-02-01 00:00:00', '182.88', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10316', '514301', 'Timo Baumgartl', '223641', '1996-03-04 00:00:00', '190.5', '179');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7589', '515333', 'Milos Veljkovic', '221354', '1995-09-26 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5494', '516846', 'Julian Brandt', '212194', '1996-05-02 00:00:00', '182.88', '181');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7896', '517346', 'Nico Elvedi', '221491', '1996-09-30 00:00:00', '187.96', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8416', '520342', 'Paul Seguin', '221885', '1995-03-29 00:00:00', '185.42', '174');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10514', '520979', 'Ulisses Garcia', '223143', '1996-01-11 00:00:00', '185.42', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5511', '521421', 'Julian Weigl', '222028', '1995-09-08 00:00:00', '185.42', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7009', '530858', 'Marvin Friedrich', '222493', '1995-12-13 00:00:00', '193.04', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6110', '530859', 'Leroy Sane', '222492', '1996-01-11 00:00:00', '182.88', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7249', '531014', 'Max Christiansen', '226686', '1996-09-25 00:00:00', '187.96', '185');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7283', '532738', 'Maximilian Philipp', '216497', '1994-03-01 00:00:00', '182.88', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6270', '536440', 'Luca-Milan Zander', '222773', '1995-08-09 00:00:00', '182.88', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10351', '536579', 'Tobias Pachonik', '222775', '1995-01-04 00:00:00', '182.88', '192');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3807', '540073', 'Gian-Luca Waldschmidt', '220085', '1996-05-19 00:00:00', '180.34', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7016', '553555', 'Marvin Schulz', '223756', '1995-01-15 00:00:00', '185.42', '170');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3838', '553557', 'Gideon Jung', '223751', '1994-09-12 00:00:00', '187.96', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('2376', '553597', 'David Kinsombi', '212625', '1995-12-12 00:00:00', '182.88', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('5047', '553598', 'Joel Gerezgiher', '223904', '1995-10-09 00:00:00', '175.26', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('9021', '555385', 'Robert Bauer', '223765', '1995-04-09 00:00:00', '182.88', '168');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6846', '556029', 'Marius Wolf', '224425', '1995-05-27 00:00:00', '187.96', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3818', '566785', 'Gianluca Gaudino', '224925', '1996-11-11 00:00:00', '175.26', '143');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7218', '570956', 'Maurice Hirsch', '225348', '1993-05-30 00:00:00', '175.26', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6937', '571379', 'Marnon-Thomas Busch', '224980', '1994-12-08 00:00:00', '182.88', '176');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1027', '571709', 'Ashton-Phillip Goetz', '208945', '1993-07-16 00:00:00', '177.8', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7659', '601592', 'Mohamed Gouaida', '216444', '1993-05-15 00:00:00', '177.8', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7279', '602523', 'Maximilian Eggestein', '226168', '1996-12-08 00:00:00', '180.34', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3299', '614212', 'Felix Platte', '227604', '1996-02-11 00:00:00', '190.5', '194');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7281', '614384', 'Maximilian Mittelstaedt', '227647', '1997-03-18 00:00:00', '177.8', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('7777', '614449', 'Nadiem Amiri', '225309', '1996-10-27 00:00:00', '177.8', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3416', '617044', 'Florian Grillitsch', '228336', '1995-08-07 00:00:00', '187.96', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6393', '620578', 'Lukas Froede', '227932', '1995-01-23 00:00:00', '193.04', '187');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6085', '637199', 'Leon Guwara', '232643', '1996-06-28 00:00:00', '185.42', '183');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3298', '637753', 'Felix Passlack', '228080', '1998-05-29 00:00:00', '170.18', '163');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1427', '638778', 'Bruno Henrique', '230885', '1990-12-30 00:00:00', '182.88', '157');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8604', '664585', 'Philipp Ochs', '229701', '1997-04-17 00:00:00', '175.26', '161');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10723', '664970', 'Waldemar Anton', '229476', '1996-07-20 00:00:00', '187.96', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('6930', '667787', 'Marlon Frey', '225564', '1996-03-24 00:00:00', '180.34', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10094', '667790', 'Suat Serdar', '230065', '1997-04-11 00:00:00', '182.88', '165');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('10894', '668362', 'Yanni Regaesel', '231205', '1996-01-13 00:00:00', '180.34', '159');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1201', '681383', 'Benjamin Henrichs', '228579', '1997-02-23 00:00:00', '182.88', '172');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('1771', '688295', 'Christian Pulisic', '227796', '1998-09-18 00:00:00', '172.72', '152');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('8039', '692973', 'Noah-Joel Sarenren-Bazee', '233472', '1996-08-21 00:00:00', '182.88', '154');
INSERT INTO Player (id, player_api_id, player_name, player_fifa_api_id, birthday, height, weight) VALUES ('3607', '748432', 'Fynn Arkenberg', '233969', '1996-03-04 00:00:00', '187.96', '176');
COMMIT;

START TRANSACTION;
USE SOCCERSTAT;
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (1,9987,673,'KRC Genk','GEN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (2,9993,675,'Beerschot AC','BAC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3,10000,15005,'SV Zulte-Waregem','ZUL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (4,9994,2007,'Sporting Lokeren','LOK');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (5,9984,1750,'KSV Cercle Brugge','CEB');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (6,8635,229,'RSC Anderlecht','AND');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (7,9991,674,'KAA Gent','GEN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (8,9998,1747,'RAEC Mons','MON');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9,7947,NULL,'FCV Dender EH','DEN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (10,9985,232,'Standard de Liège','STL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (11,8203,110724,'KV Mechelen','MEC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (12,8342,231,'Club Brugge KV','CLB');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (13,9999,546,'KSV Roeselare','ROS');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (14,8571,100081,'KV Kortrijk','KOR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15,4049,NULL,'Tubize','TUB');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (16,9996,111560,'Royal Excel Mouscron','MOU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (17,10001,681,'KVC Westerlo','WES');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (18,9986,670,'Sporting Charleroi','CHA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (614,9997,680,'Sint-Truidense VV','STT');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (1034,9989,239,'Lierse SK','LIE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (1042,6351,2013,'KAS Eupen','EUP');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (1513,1773,100087,'Oud-Heverlee Leuven','O-H');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (2004,8475,110913,'Waasland-Beveren','WAA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (2476,8573,682,'KV Oostende','OOS');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (2510,274581,111560,'Royal Excel Mouscron','MOP');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3457,10260,11,'Manchester United','MUN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3458,10261,13,'Newcastle United','NEW');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3459,9825,1,'Arsenal','ARS');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3460,8659,109,'West Bromwich Albion','WBA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3461,8472,106,'Sunderland','SUN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3462,8650,9,'Liverpool','LIV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3463,8654,19,'West Ham United','WHU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3464,8528,1917,'Wigan Athletic','WIG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3465,10252,2,'Aston Villa','AVL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3466,8456,10,'Manchester City','MCI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3467,8668,7,'Everton','EVE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3468,8655,3,'Blackburn Rovers','BLB');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3469,8549,12,'Middlesbrough','MID');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3470,8586,18,'Tottenham Hotspur','TOT');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3471,8559,4,'Bolton Wanderers','BOL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3472,10194,1806,'Stoke City','STK');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3473,8667,1952,'Hull City','HUL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3474,9879,144,'Fulham','FUL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3475,8455,5,'Chelsea','CHE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (3476,8462,1790,'Portsmouth','POR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (4218,8658,88,'Birmingham City','BIR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (4225,8602,110,'Wolverhampton Wanderers','WOL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (4234,8191,1796,'Burnley','BUR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (4996,8483,1926,'Blackpool','BLA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (5744,10003,1960,'Swansea City','SWA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (5747,10172,15,'Queens Park Rangers','QPR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (5756,9850,1792,'Norwich City','NOR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (6504,8466,17,'Southampton','SOU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (6509,9798,1793,'Reading','REA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (7261,9826,1799,'Crystal Palace','CRY');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (7276,8344,1961,'Cardiff City','CAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (8021,8197,95,'Leicester City','LEI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (8779,8678,1943,'Bournemouth','BOU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (8784,9817,1795,'Watford','WAT');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9537,8583,57,'AJ Auxerre','AUX');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9538,9830,71,'FC Nantes','NAN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9539,9827,59,'Girondins de Bordeaux','BOR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9540,7819,210,'SM Caen','CAE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9541,9746,1738,'Le Havre AC','LEH');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9542,9831,72,'OGC Nice','NIC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9543,8682,1739,'Le Mans FC','LEM');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9544,8689,217,'FC Lorient','LOR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9545,9748,66,'Olympique Lyonnais','LYO');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9546,9941,1809,'Toulouse FC','TOU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9547,9829,69,'AS Monaco','MON');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9548,9847,73,'Paris Saint-Germain','PSG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9549,8481,1823,'AS Nancy-Lorraine','NAN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9550,8639,65,'LOSC Lille','LIL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9551,9851,74,'Stade Rennais FC','REN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9552,8592,219,'Olympique de Marseille','MAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9553,9874,226,'FC Sochaux-Montbéliard','SOC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9554,9855,1805,'Grenoble Foot 38','GRE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9555,9873,110456,'Valenciennes FC','VAL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (9556,9853,1819,'AS Saint-Étienne','ETI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (10300,8588,64,'RC Lens','LEN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (10309,10249,70,'Montpellier Hérault SC','MON');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (10312,4170,111376,'US Boulogne Cote D''Opale','BOU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (11074,108893,111989,'AC Arles-Avignon','ARL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (11076,8521,378,'Stade Brestois 29','BRE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (11817,8576,614,'AC Ajaccio','AJA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (11822,4087,111271,'Évian Thonon Gaillard FC','ETG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (11825,9836,110569,'Dijon FCO','DIJ');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (12587,9837,379,'Stade de Reims','REI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (12594,7794,58,'SC Bastia','BAS');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (12595,10242,294,'ES Troyes AC','TRO');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (13343,9747,62,'En Avant de Guingamp','GUI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (14106,8550,68,'FC Metz','MET');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (14868,8121,1530,'Angers SCO','ANG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (14876,6391,110316,'GFC Ajaccio','GAJ');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15617,9823,21,'FC Bayern Munich','BMU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15618,9790,28,'Hamburger SV','HAM');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15619,8178,32,'Bayer 04 Leverkusen','LEV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15620,9789,22,'Borussia Dortmund','DOR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15621,10189,34,'FC Schalke 04','S04');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15622,9904,485,'Hannover 96','HAN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15623,8721,175,'VfL Wolfsburg','WOL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15624,8722,31,'1. FC Köln','FCK');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15625,9810,1824,'Eintracht Frankfurt','EFR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15626,8177,166,'Hertha BSC Berlin','HBE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15627,9912,159,'DSC Arminia Bielefeld','BIE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15628,8697,38,'SV Werder Bremen','WBR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15629,8398,162,'FC Energie Cottbus','COT');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15630,8226,10029,'TSG 1899 Hoffenheim','HOF');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15631,9788,23,'Borussia Mönchengladbach','GLA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15632,10269,36,'VfB Stuttgart','STU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15633,8295,1832,'Karlsruher SC','KAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (15634,9911,160,'VfL Bochum','BOC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (16237,8358,25,'SC Freiburg','FRE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (16239,8165,171,'1. FC Nürnberg','NUR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (16243,9905,169,'1. FSV Mainz 05','MAI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (16848,8350,29,'1. FC Kaiserslautern','KAI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (16850,8152,110329,'FC St. Pauli','STP');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (17465,8406,100409,'FC Augsburg','AUG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (18074,8194,110636,'Fortuna Düsseldorf','FDU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (18079,8357,165,'SpVgg Greuther Fürth','GRF');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (18691,9776,110500,'Eintracht Braunschweig','BRA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (19305,8460,10030,'SC Paderborn 07','PAD');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (19916,8234,111239,'FC Ingolstadt 04','ING');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (19917,8262,110502,'SV Darmstadt 98','DAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20513,8524,39,'Atalanta','ATA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20514,8551,1838,'Siena','SIE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20515,8529,1842,'Cagliari','CAG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20516,8543,46,'Lazio','LAZ');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20517,8530,110364,'Catania','CAT');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20518,10233,110556,'Genoa','GEN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20519,8533,192,'Chievo Verona','CHI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20520,8690,203,'Reggio Calabria','REG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20521,8535,110374,'Fiorentina','FIO');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20522,9885,45,'Juventus','JUV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20523,8564,47,'Milan','ACM');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20524,9857,189,'Bologna','BOL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20525,8686,52,'Roma','ROM');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20526,9875,48,'Napoli','NAP');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20527,9882,1837,'Sampdoria','SAM');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20528,8636,44,'Inter','INT');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20529,9804,54,'Torino','TOR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20530,9888,347,'Lecce','LEC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20531,8600,55,'Udinese','UDI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (20532,8540,1843,'Palermo','PAL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (21280,9976,1848,'Bari','BAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (21285,8537,1844,'Livorno','LIV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (21292,10167,50,'Parma','PAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (22042,9880,110915,'Cesena','CES');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (22044,9858,190,'Brescia','BRE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (22805,6269,112225,'Novara','NOV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (23523,9878,200,'Pescara','PES');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (24273,9876,206,'Hellas Verona','VER');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (24288,7943,111974,'Sassuolo','SAS');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (25048,8534,1746,'Empoli','EMP');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (25791,9891,111657,'Frosinone','FRO');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (25804,208931,112409,'Carpi','CAP');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26547,8277,1909,'Vitesse','VIT');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26548,8674,1915,'FC Groningen','GRO');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26549,9803,1902,'Roda JC Kerkrade','ROD');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26550,8611,1908,'FC Twente','TWE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26551,8525,1907,'Willem II','WII');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26552,8593,245,'Ajax','AJA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26553,8464,1910,'N.E.C.','NEC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26554,8526,635,'De Graafschap','GRA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26555,9908,1903,'FC Utrecht','UTR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26556,8640,247,'PSV','PSV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26557,9791,100634,'Heracles Almelo','HER');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26558,10235,246,'Feyenoord','FEY');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26559,8614,100646,'Sparta Rotterdam','SPA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26560,10217,650,'ADO Den Haag','HAA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26561,6601,NULL,'FC Volendam','VOL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26562,10228,1913,'SC Heerenveen','HEE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26563,10229,1906,'AZ','ALK');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (26564,9761,1904,'NAC Breda','NAC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (27161,10219,1905,'RKC Waalwijk','RKC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (27168,9839,100651,'VVV-Venlo','VEN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (27780,10218,1971,'Excelsior','EXC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (29000,6413,1914,'PEC Zwolle','ZWO');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (29617,7788,647,'SC Cambuur','CAM');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (29624,6433,100632,'Go Ahead Eagles','GAE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (30222,6631,100626,'FC Dordrecht','DOR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31443,10265,1873,'Wisła Kraków','WIS');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31444,8031,111429,'Polonia Bytom','POB');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31445,8020,111429,'Polonia Bytom','GOR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31446,1601,874,'Ruch Chorzów','CHO');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31447,8673,1871,'Legia Warszawa','LEG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31448,2183,1570,'P. Warszawa','PWA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31449,8025,111092,'Śląsk Wrocław','SLA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31450,8030,111091,'Lechia Gdańsk','LGD');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31451,8244,301,'Widzew Łódź','LOD');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31452,8242,1564,'Odra Wodzisław','ODR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31453,2182,873,'Lech Poznań','POZ');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31454,8569,110744,'GKS Bełchatów','BEL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31455,8322,111082,'Arka Gdynia','ARK');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31456,1957,110745,'Jagiellonia Białystok','BIA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31457,8028,111086,'Piast Gliwice','PIG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31458,2186,110747,'Cracovia','CKR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31925,8245,111083,'Korona Kielce','KKI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (31928,8021,110749,'Zagłębie Lubin','ZAG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (32409,8024,301,'Widzew Łódź','WID');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (32891,8033,111087,'Podbeskidzie Bielsko-Biała','POD');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (33377,8023,110746,'Pogoń Szczecin','POG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (33855,8027,112512,'Zawisza Bydgoszcz','ZAW');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (34337,8019,110565,'Górnik Łęczna','LEC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (34816,177361,NULL,'Termalica Bruk-Bet Nieciecza','TBN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35283,9773,236,'FC Porto','POR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35284,9807,1889,'CF Os Belenenses','BEL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35285,9768,237,'Sporting CP','SCP');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35286,7992,NULL,'Trofense','TRO');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35287,7844,1887,'Vitória Guimarães','GUI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35288,10238,665,'Vitória Setúbal','SET');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35289,6403,1892,'FC Paços de Ferreira','FER');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35290,10264,1896,'SC Braga','BRA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35291,10213,NULL,'Amadora','AMA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35292,10215,1901,'Académica de Coimbra','ACA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35293,7841,744,'Rio Ave FC','RA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35294,9772,234,'SL Benfica','BEN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35295,6421,10018,'Leixões SC','LEI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35296,10214,1891,'CD Nacional','NAC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35297,9809,100737,'Naval 1° de Maio','NAV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35298,10212,1893,'CS Marítimo','MAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35769,9771,1895,'União de Leiria, SAD','ULE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (35774,2033,111540,'S.C. Olhanense','OLH');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (36248,9765,NULL,'Portimonense','POR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (36253,10211,1897,'SC Beira Mar','B-M');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (36723,4064,NULL,'Feirense','FEI');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (36735,9764,1888,'Gil Vicente FC','GV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (37210,8348,1900,'Moreirense FC','MOR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (37214,7842,10020,'Estoril Praia','EST');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (37696,158085,112513,'FC Arouca','ARO');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (38173,6547,100741,'FC Penafiel','PEN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (38176,8613,1898,'Boavista FC','BOA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (38789,6367,NULL,'Uniao da Madeira','MAD');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (38791,188163,NULL,'Tondela','TON');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39387,8596,79,'Falkirk','FAL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39388,8548,86,'Rangers','RAN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39389,9860,80,'Heart of Midlothian','HEA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39390,9927,83,'Motherwell','MOT');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39391,8597,82,'Kilmarnock','KIL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39392,10251,81,'Hibernian','HIB');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39393,8485,77,'Aberdeen','ABE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39394,8066,620,'Inverness Caledonian Thistle','INV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39395,9925,78,'Celtic','CEL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39396,9800,100805,'St. Mirren','MIR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39397,8429,184,'Hamilton Academical FC','HAM');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39398,9938,181,'Dundee United','DUU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (39853,8467,100804,'St. Johnstone FC','JOH');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (40757,8457,182,'Dunfermline Athletic','DUN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (41216,8284,180,'Dundee FC','DUF');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (41217,8649,631,'Ross County FC','ROS');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (41673,8426,1754,'Partick Thistle F.C.','PAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43035,10267,461,'Valencia CF','VAL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43036,8661,453,'RCD Mallorca','MAL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43037,8371,479,'CA Osasuna','OSA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43038,10205,483,'Villarreal CF','VIL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43039,9783,242,'RC Deportivo de La Coruña','COR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43040,8633,243,'Real Madrid CF','REA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43041,8388,477,'CD Numancia','NUM');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43042,8634,241,'FC Barcelona','BAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43043,8696,456,'Racing Santander','SAN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43044,8302,481,'Sevilla FC','SEV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43045,9869,459,'Real Sporting de Gijón','SPG');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43046,8305,1860,'Getafe CF','GET');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43047,8603,449,'Real Betis Balompié','BET');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43048,8479,571,'RC Recreativo','HUE');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43049,8558,452,'RCD Espanyol','ESP');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43050,10281,462,'Real Valladolid','VAL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43051,8315,448,'Athletic Club de Bilbao','BIL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43052,9865,1861,'UD Almería','ALM');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43053,9906,240,'Atlético Madrid','AMA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43054,9864,573,'Málaga CF','MAL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43800,9868,1742,'Xerez Club Deportivo','XER');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43803,8394,244,'Real Zaragoza','ZAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (43804,9867,260,'CD Tenerife','TEN');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (44557,10278,100879,'Hércules Club de Fútbol','HER');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (44565,8581,1853,'Levante UD','LEV');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (44569,8560,457,'Real Sociedad','SOC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (45330,7878,110832,'Granada CF','GRA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (45333,8370,480,'Rayo Vallecano','RAY');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (46087,9910,450,'RC Celta de Vigo','CEL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (46848,10268,468,'Elche CF','ELC');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (47605,8372,467,'SD Eibar','EIB');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (47612,7869,1867,'Córdoba CF','COR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (48358,8306,472,'UD Las Palmas','LAS');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49115,9956,322,'Grasshopper Club Zürich','GRA');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49116,6493,1714,'AC Bellinzona','BEL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49117,10192,900,'BSC Young Boys','YB');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49118,9931,896,'FC Basel','BAS');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49119,9930,434,'FC Aarau','AAR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49120,10179,110770,'FC Sion','SIO');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49121,10199,897,'FC Luzern','LUZ');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49122,9824,286,'FC Vaduz','VAD');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49123,7955,435,'Neuchâtel Xamax','XAM');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49124,10243,894,'FC Zürich','ZUR');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49479,10190,898,'FC St. Gallen','GAL');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (49837,10191,1715,'FC Thun','THU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (50201,9777,324,'Servette FC','SER');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (50204,7730,1862,'FC Lausanne-Sports','LAU');
INSERT INTO Team (id,team_api_id,team_fifa_api_id,team_long_name,team_short_name) VALUES (51606,7896,NULL,'Lugano','LUG');
COMMIT;
