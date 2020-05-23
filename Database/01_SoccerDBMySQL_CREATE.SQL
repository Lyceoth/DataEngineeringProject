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