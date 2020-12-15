create database cl;
USE cl;
CREATE TABLE Sponsor
(
  Sponsor_ID INT NOT NULL AUTO_INCREMENT UNIQUE,
  ContractLength INT NOT NULL,
  Name varchar(20) NOT NULL,
  PRIMARY KEY (Sponsor_ID),
  
  CONSTRAINT CHK_Contract CHECK (ContractLength > 0)
);

CREATE TABLE Club
(
  Club_ID INT NOT NULL AUTO_INCREMENT UNIQUE,  
  Name VARCHAR(30) NOT NULL,
  Ranking INT NOT NULL,
  President VARCHAR(20) NOT NULL,
  PRIMARY KEY (Club_ID),
  CONSTRAINT CHK_Ranking CHECK (Ranking > 0)
  

);

CREATE TABLE Venue
(
  Venue_ID INT NOT NULL AUTO_INCREMENT UNIQUE,  
  Name VARCHAR(30) NOT NULL,
  Capacity INT NOT NULL,
  Club_ID INT NOT NULL,
  PRIMARY KEY (Venue_ID),
  FOREIGN KEY (Club_ID) REFERENCES Club(Club_ID),
  
  
  CONSTRAINT CHK_Capacity CHECK (Capacity > 0)
  

);

CREATE TABLE Competition
(
  Comp_ID INT NOT NULL AUTO_INCREMENT UNIQUE,
  Name VARCHAR(20) NOT NULL,
  Format INT NOT NULL,
  Sponsor_ID INT NOT NULL,
  FinalVenue_ID INT NOT NULL, 
  PRIMARY KEY (Comp_ID),
  FOREIGN KEY (Sponsor_ID) REFERENCES Sponsor(Sponsor_ID),
  FOREIGN KEY (FinalVenue_ID) REFERENCES Venue(Venue_ID),

  CONSTRAINT CHK_Format CHECK (Format = 20 Or Format = 40 Or Format = 50)
);


CREATE TABLE Team
(
  Team_ID INT NOT NULL AUTO_INCREMENT UNIQUE,
  League_pos INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Coach VARCHAR(20) NOT NULL,
  Captain VARCHAR(20) NOT NULL,
  Club_ID INT NOT NULL,
  PRIMARY KEY (Team_ID),
  FOREIGN KEY (Club_ID) REFERENCES Club(Club_ID),

  CONSTRAINT CHK_league_pos CHECK (League_pos > 0 AND League_pos <9)
 
);

CREATE TABLE Fixture
(
  Fixture_ID INT NOT NULL auto_increment UNIQUE,
  Result VARCHAR(13),
  HomeTeam_ID INT NOT NULL,
  AwayTeam_ID INT NOT NULL,
  Venue_ID INT NOT NULL,
  Date Date NOT NULL,
  Comp_ID INT NOT NULL,
  PRIMARY KEY (Fixture_ID),
  FOREIGN KEY (Comp_ID) REFERENCES Competition(Comp_ID),
  FOREIGN KEY (HomeTeam_ID) REFERENCES Team(Team_ID),
  FOREIGN KEY (AwayTeam_ID) REFERENCES Team(Team_ID),
  FOREIGN KEY (Venue_ID) REFERENCES Venue(Venue_ID),
  
  CONSTRAINT CHK_fixture CHECK (HomeTeam_ID != AwayTeam_ID),
  CONSTRAINT CHK_result CHECK (Result = 'Home Team Win' Or Result = 'Away Team Win' Or Result = 'Tie' Or Result = null)

);
CREATE TABLE Player
(
  Age INT NOT NULL,
  Player_ID INT NOT NULL AUTO_INCREMENT,
  First_nName VARCHAR(20) NOT NULL,
  Last_name VARCHAR(20) NOT NULL,
  Batting_Average FLOAT NOT NULL,
  Bowling_Average FLOAT,
  Team_ID INT NOT NULL,
  PRIMARY KEY (Player_ID),
  FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID)

);










